

# get the data (subway for beijing ,from amap)
import requests
import re
import numpy as np
r = requests.request('GET', url = 'http://map.amap.com/service/subway?_1469083453978&srhdata=1100_drw_beijing.json')

def get_lines_stations_info(text):

    lines_info = {}
    stations_info = {}

    pattern = re.compile('"st".*?"kn"')
    lines_list = pattern.findall(text)

    for i in range(len(lines_list)):
        pattern = re.compile('"ln":".*?"')
        line_name = pattern.findall(lines_list[i])[0][6:-1]

        pattern = re.compile('"rs".*?"sp"')
        temp_list = pattern.findall(lines_list[i])
        station_name_list = []

        for j in range(len(temp_list)):

            pattern = re.compile('"n":".*?"')
            station_name = pattern.findall(temp_list[j])[0][5:-1]
            station_name_list.append(station_name)

            pattern = re.compile('"sl":".*?"')
            position = tuple(map(float, pattern.findall(temp_list[j])[0][6:-1].split(',')))
            
            stations_info[station_name] = position

        lines_info[line_name]  = station_name_list

    return lines_info, stations_info

lines_info, stations_info = get_lines_stations_info(r.text)
# print(stations_info)
# print(lines_info)

len(lines_info)

def get_neighbor_info(lines_info):
    def add_neighbor_dict(info, str1, str2):
        list1 = info.get(str1)
        if not list1:
            list1 = []
        list1.append(str2)
        info[str1] = list1
        return info

    neighbor_info = {}

    for line_name, station_list in lines_info.items():
        for i in range(len(station_list) -1):
            sta1 = station_list[i]
            sta2 = station_list[i+1]

            neighbor_info = add_neighbor_dict(neighbor_info, sta1, sta2)
            neighbor_info = add_neighbor_dict(neighbor_info, sta2, sta1)
    return neighbor_info

neighbor_info = get_neighbor_info(lines_info)
print(neighbor_info)

import networkx as nx
import matplotlib
import matplotlib.pyplot as plt

matplotlib.rcParams['font.sans-serif']  = ['Arial Unicode MS']
matplotlib.rcParams['font.size'] = 2

plt.figure(figsize = (20, 20))
stations_graph = nx.Graph()
stations_graph.add_nodes_from(list(stations_info.keys()))
nx.draw(stations_graph, stations_info, with_labels = True, node_size = 5)


stations_connection_graph = nx.Graph(neighbor_info)
plt.figure(figsize = (30, 30))
nx.draw(stations_connection_graph, stations_info, with_labels = True, node_size = 5)


# The first algorithm: recursively find all paths
def get_path_DFS_ALL(lines_info, neighbor_info, from_station, to_station):
    # # Recursive algorithm, essentially depth first
    # Traverse all paths
    # In this case, the coordinate distance between the sites is difficult to transform into a reliable heuristic function, so only a simple BFS algorithm is used
    # Check input site name
    if not neighbor_info.get(from_station):
        print('起始站点“%s”不存在。请正确输入！'%from_station)
        return None
    if not neighbor_info.get(to_station):
        print('目的站点“%s”不存在。请正确输入！'%to_station)
        return None
    path = []
    this_station = from_station
    path.append(this_station)
    neighbors = neighbor_info.get(this_station)
    node = {'pre_station':'',
            'this_station':this_station,
            'neighbors':neighbors,
            'path':path}
    
    return get_next_station_DFS_ALL(node, neighbor_info, to_station)

def get_next_station_DFS_ALL(node, neighbor_info, to_station):
    neighbors = node.get('neighbors')
    pre_station = node.get('this_station')
    path = node.get('path')
    paths = []
    for i in range(len(neighbors)):
        this_station = neighbors[i]
        if (this_station in path):
            
            # If this station is already in the path, it means a loop, and this road is unreachable
            return None
        if neighbors[i] == to_station:
            
            # Find the end, return to the path
            path.append(to_station)
            paths.append(path)
            return paths
        else:
            neighbors_ = neighbor_info.get(this_station).copy()
            neighbors_.remove(pre_station)
            path_ = path.copy()
            path_.append(this_station)
            new_node = {'pre_station':pre_station,
                        'this_station':this_station,
                        'neighbors':neighbors_,
                        'path':path_}
            paths_ =  get_next_station_DFS_ALL(new_node, neighbor_info, to_station)
            if paths_:
                paths.extend(paths_)

    return paths

paths = get_path_DFS_ALL(lines_info, neighbor_info, '回龙观', '西二旗')
print('共有%d种路径。'%len(paths))
for item in paths:
    print("此路径总计%d站:"%(len(item)-1))
    print('-'.join(item))


# The second algorithm: simple breadth first without heuristic function
def get_path_BFS(lines_info, neighbor_info, from_station, to_station):
    
    # Search strategy: take the number of stations as the cost (because the ticket price is calculated by station)
    # In this case, the coordinate distance between the sites is difficult to transform into a reliable heuristic function, so only a simple BFS algorithm is used
    # Since the cost of each layer is increased by 1, the cost of each layer is the same, and it does not matter whether it is calculated or not, so it is omitted
    # Check input site name
    if not neighbor_info.get(from_station):
        print('起始站点“%s”不存在。请正确输入！'%from_station)
        return None
    if not neighbor_info.get(to_station):
        print('目的站点“%s”不存在。请正确输入！'%to_station)
        return None
    
    # The search node is a dict, key=site name, value is a list of sites that contain passing
    nodes = {}
    nodes[from_station] = [from_station]
    
    while True:
        new_nodes = {}
        for (k,v) in nodes.items():
            neighbor = neighbor_info.get(k).copy()
            if (len(v) >= 2):
                
                # Do not go to the previous stop
                pre_station = v[-2]
                neighbor.remove(pre_station)
            for station in neighbor:
                
                # Traverse neighbors
                if station in nodes:

                    # Skip the nodes that have been searched
                    continue
                path = v.copy()
                path.append(station)
                new_nodes[station] = path
                if station == to_station:

                    # Find the path, end
                    return path
        nodes = new_nodes
        
    print('未能找到路径')
    return None

paths = get_path_BFS(lines_info, neighbor_info, '回龙观', '西二旗')
print("路径总计%d站。"%(len(paths)-1))
print("-".join(paths))

# Gaode Navigation is 31 stations, only 1 transfer
# The result of the code is 28 stations, but there are 5 transfers
# Guess Gaode's path cost is mainly time


# The third algorithm: heuristic search with path distance as the cost
import pandas as pd
def get_path_Astar(lines_info, neighbor_info, stations_info, from_station, to_station):
    
    # Search strategy: the straight-line distance between the stations of the route is accumulated as the cost, and the straight-line distance from the current station to the target is used as the heuristic function
    # Check input site name
    if not neighbor_info.get(from_station):
        print('起始站点“%s”不存在。请正确输入！'%from_station)
        return None
    if not neighbor_info.get(to_station):
        print('目的站点“%s”不存在。请正确输入！'%to_station)
        return None
    
    # Calculate the straight-line distance from all nodes to the target node, spare
    distances = {}
    x,y = stations_info.get(to_station)
    for (k,v) in stations_info.items():
        x0,y0 = stations_info.get(k)
        l = ((x-x0)**2 + (y-y0)**2)**0.5
        distances[k] = l
        
    # Nodes that have been searched, dict
    # key=site name, value is the minimum cost from a known starting point to this site    # 已搜索过的节点，dict
    searched = {}
    searched[from_station] = 0
    
    # The data structure is pandas dataframe
    # index is the site name
    # g is the path taken, h is the heuristic function value (the current straight-line distance to the target)
    nodes = pd.DataFrame([[[from_station], 0, 0, distances.get(from_station)]],
                         index=[from_station], columns=['path', 'cost', 'g', 'h']) 
    
    count = 0
    while True:
        if count > 1000:
            break
        nodes.sort_values('cost', inplace=True)
        for index, node in nodes.iterrows():
            count += 1
            
            # Search for the site that is the shortest from the destination among the neighbors
            neighbors = neighbor_info.get(index).copy()
            if len(node['path']) >= 2:
                
                # Do not search in the reverse direction of this path
                neighbors.remove(node['path'][-2])
            for i in range(len(neighbors)):
                count += 1
                neighbor = neighbors[i]
                g = node['g'] + get_distance(stations_info, index, neighbor)
                h = distances[neighbor]
                cost = g + h
                path = node['path'].copy()
                path.append(neighbor)
                if neighbor == to_station:
                    # Find the goal, end
                    print('共检索%d次。'%count)
                    return path
                if neighbor in searched:
                    if g >= searched[neighbor]:
                        # Explain that the search path is not optimal, ignore it
                        continue
                    else:
                        searched[neighbor] = g
                        # Modify the node information corresponding to this site
#                         nodes.loc[neighbor, 'path'] = path # 这行总是报错
#                         nodes.loc[neighbor, 'cost'] = cost
#                         nodes.loc[neighbor, 'g'] = g
#                         nodes.loc[neighbor, 'h'] = h
                        # I don’t know how to modify the list element in df, I can only delete and add new rows
                        nodes.drop(neighbor, axis=0, inplace=True)
                        row = pd.DataFrame([[path, cost, g, h]],
                                       index=[neighbor], columns=['path', 'cost', 'g', 'h'])
                        nodes = nodes.append(row)
                        
                else:
                    searched[neighbor] = g
                    row = pd.DataFrame([[path, cost, g, h]],
                                       index=[neighbor], columns=['path', 'cost', 'g', 'h'])
                    nodes = nodes.append(row)
            # All neighbors of this site have been searched, delete this node
            nodes.drop(index, axis=0, inplace=True)

        # The outer for loop only runs the first row of data, and then re-sort and then calculate
        continue         
        
    print('未能找到路径')
    return None

def get_distance(stations_info, str1, str2):
    x1,y1 = stations_info.get(str1)
    x2,y2 = stations_info.get(str2)
    return ((x1-x2)**2 + (y1-y2)**2)** 0.5

paths = get_path_Astar(lines_info, neighbor_info, stations_info, '回龙观', '西二旗')
if paths:
    print("路径总计%d站。"%(len(paths)-1))
    print("-".join(paths))

# Gaode Navigation is 31 stations, only 1 transfer
# The code result is 28 stations, which is the same as the result with the number of subway stations as the cost, but the path is different (from the first traversal algorithm, you can see that there are 3 paths for 28 stations to reach the destination)
# Guess Gaode's path cost is mainly time
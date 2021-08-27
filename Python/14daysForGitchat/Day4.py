# -*- coding: UTF-8 -*- #

# 创建3个元组,和列表片类似, 同一个元组中可以存放任意数
tuple1 = ()
tuple2 = (12, )
tuple3 = (1,2,3,4,5)
tuple4 = (3.14, 5.97, 1872, 2020, "China", 3+4j)
tuple5 = 4,5,6,7

tuple6 = (tuple3, tuple4)
print('tuple6:', tuple6),

#创建几个字典
dict1 = {"ID0012":"ZhangSan", "ID0019":"LiSi", "ID0015":"WangWu"}
dict2 = {1:"BeiJin",3:"ShangHai",5:"HangZhou"}
dict3 = {"Excellent":100, "Good":80, "Pass":60, "Fail":50}
#字典也可以嵌套
dict4 = {"A":["LiTong","XiaoMing"], "B":["XiaoHong","XiaoHua"]}

print("dict1[ID0019]:", dict1['ID0019'])
print('dict2[1]', dict2[1])
print("dict3.get('Good')", dict3.get('Good'))

# 修改字典中的元素
dict3['Good'] = 102
print('dict3[Good]:', dict3['Good'])

del dict1['ID0012']
print("dict1:",dict1)

dict1.pop('ID0019')
print("dict1.pop(key):",dict1)

dict3.clear()
print('dict3:',dict3)


dict1 = {"Excellent":100, "Good":80, "Pass":60, "Fail":50}
#计算字典的长度
print("The length of the dict1:", len(dict1))
#获取字典中所有的键
print("Get all the keys in dict1:\n", dict1.keys())
#获取字典中所有的值
print("Get all the values in dict1:\n", dict1.values())
#获取字典中所有的键值对
print('Get all the items in dict1:\n:', dict1.items())

# 创建集合
country1 = {'China', 'America', 'German', 'Japan'}
country2 = set('china')
country3 = set()

print('country1, country2, country3:', country1, country2, country3)

# 操作集合中的元素
setA = {'A', 'B', 'C'}
setA.add('D')
print(setA)
setA.add('A')
print(setA)
setA.remove('B')
print(setA)

# 计算集合的交集,并集, 补集
setA = {'A', 'B', 'C'}
setB = {'D', 'C', 'E'}
# 交集
print('setA & setB:', setA&setB)
# 并集
print('setA | setB', setA|setB)
# 差集
print('setA - setB', setA-setB)

# 队列
from collections import deque

# 基于列表初始化一个队列
queue = deque(['A', 'B', 'C'])
# 队尾添加元素
queue.append('D')
print('queue:', queue)
# 队头出列
queue.popleft()
print('queue:', queue)
# 队头出列
queue.popleft()
print('queue:', queue)
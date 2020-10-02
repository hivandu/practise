# -*- coding: utf-8 -*- 
# dict and set 
# 1. update
d = {'a':1, 'b':2}
d.update({'c':3, 'd':4, 'e':5})
print(d)
d.update([('f',6),('g',7)],i=8)
print(d)

# 2. setdefault
d = {'a':1, 'b':2}
r = d.setdefault('c',3)
r = d.setdefault('c',33)
print(r)

# 3. 字典并集
def f(d:dict) -> dict:
    return {**d}
print(f({'a':1,'b':2}))

def merge(d1,d2):
    return {**d1, **d2}
print(merge({'a':1,'b':2},{'c':3}))

# 4. 字典差
def difference(d1,d2):
    return dict([(k,v) for k, v in d1.items() if k not in d2])
print(difference({'a': 1, 'b': 2, 'c': 3},{'b':2}))

# 5. 按键排序
def sort_by_key(d):
    return sorted(d.items(), key=lambda x: x[0])
print(sort_by_key({'a':3,'b':1,'c':2}))

# 6. 按值排序
def sort_by_values(d):
    return sorted(d.items(), key=lambda x: x[1])
print(sort_by_values({'a':3,'b':1,'c':2}))

# 7. 最大值
def max_key(d):
    if len(d) == 0:
        return []
    max_key = max(d.keys())
    return (max_key, d[max_key])
print(max_key({'a':3,'b':1,'c':2}))

# 8. 最大字典值
def max_key(d):
    if len(d) == 0:
        return []
    max_val = max(d.values())
    return [(key, max_val) for key in d if d[key]==max_val]
print(max_key({'a':3,'b':1,'c':2}))

# 9. 集合最值
def max_min(s):
    return (max(s), min(s))
print(max_min({1,2,3,5,7}))

# 10. 单字符串
def single(string):
    return len(set(string)) == len(string)
print(single('I love python'))
print(single('python'))

# 11. 更长集合
def longer(s1,s2):
    return max(s1,s2, key=lambda x: len(x))
print(longer({1,3,4,6},{1,5,7}))

# 12. 重复最多
def max_overlap(lst1, lst2):
    overlap = set(lst1).intersection(lst2)
    print(f'overlap:{overlap}')
    ox = [(x, min(lst1.count(x), lst2.count(x))) for x in overlap]
    print(f'ox:{ox}')
    return max(ox, key=lambda x: x[1])
print(max_overlap([1,2,2,2,3,3],[2,2,3,2,2,3]))

# 13. topn键
from heapq import nlargest
def topn_dict(d, n):
    return nlargest(n, d, key=lambda k: d[k])
print(topn_dict({'a':10, 'b':8, 'c':9, 'd':10},3))

# 14. 一键对多值字典
## 普通方法
d = {}
lst = [(1, 'apple'),(2, 'orange'),(1, 'compute')]
for k, v in lst:
    if k not in d:
        d[k] = []
    d[k].append(v)
print(d)

## defaultdict
from collections import defaultdict
d = defaultdict(list)
for k,v in lst:
    d[k].append(v)
print(d)

# 15。 逻辑上合并字典
dic1 = {'x':1, 'y':2}
dic2 = {'y':3, 'z':4}
merged = {**dic1, **dic2}
print(merged)
merged['x']  = 10
print(dic1)

from collections import ChainMap
merged2 = ChainMap(dic1,dic2)
print(merged2)
merged2['x'] = 10
print(dic1)

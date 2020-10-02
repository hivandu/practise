# -*- coding: utf-8 -*-

empty = []
lst = [1,'xiaoming',29.5,'17312662388']
lst2 = ['001','2019-11-11',['三文鱼','电烤箱']]
print(len(empty))
print(len(lst))

for _ in lst:
    print(f'{_}的类型为{type(_)}')

sku = lst2[2]
sku.append('烤鸭')
sku.insert(1, '牛腱子')
print(sku)
print(lst2)
sku.pop()
print(lst2)
sku.remove('三文鱼')
print(lst2)
sku_deep = lst2[2].copy()
print(sku_deep)

a = [1,2,[3,4,5]]
ac = a.copy()
print(ac)
ac[0] = 10
ac[2][1] = 40
print(a[0] == ac[0])
print(a[2][1] == ac[2][1])
print(ac)
print(a)

# 深度copy

from copy import deepcopy
a = [1,2,[3,4,5]]
ac = deepcopy(a)
ac[0] = 10
ac[2][1] = 40
print(a[0] == ac[0])
print(a[2][1] == ac[2][1])

# 切片功能
a = list(range(1,20,3))
print(a)
print(a[:3])

# 逆向列表
def reverse(lst):
    return lst[::-1]

print(reverse(a))
print(a[::-1])
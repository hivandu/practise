# -*- coding: utf-8 -*-#
d = {'a':1, 'b':2, 'c':3}
for key, val in d.items():
    print(key, val)

# 获取所有键集合
print(set(d))
print(set(d.keys()))
# 获取所有值集合
print(set(d.values()))
if 'c' in d:
    print('在')
if 'e' not in d:
    print('不在')
d.get('c')
d['d'] = 4
print(d)
del d['d']
print(d)
d.pop('c')
print(d)
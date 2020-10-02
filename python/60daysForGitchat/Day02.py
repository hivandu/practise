# -*- coding: utf-8 -*-


### 以下示例为容器型数据类型示例 list,tuple,dict,set
# 去最求平均
def score_mean(lst):
    lst.sort()
    print('lst.sort',lst)
    lst2 = lst[1:-1]
    print('lst2:lst[1:-1]:', lst2)
    return round((sum(lst2)/len(lst2)), 1)

lst = [9.1, 9.0, 8.1, 9.7, 19, 8.2, 8.6, 9.8]
print(score_mean(lst))

# 打印99乘法表
for i in range(1, 10):
    for j in range(1, i+1):
        print('%d*%d=%d'%(j,i, i*i), end='\t')
    print()

# 样本抽样
from random import randint, sample
lst = [randint(0, 50) for _ in range(100)]
print(lst[:5])
lst_sample = sample(lst, 10)
print(lst_sample)

### 以下示例为字符串类型 str
# strip 去除前后空格
print('    I love python\t\n   '.strip())
#replace用于字符串替换
print('i love python'.replace(' ', '_'))
#join用于合并字符串
print('_'.join(['book', 'store', 'count']))
# title用于单次的首字符大写：
print('i love python'.title())
# find用于返回匹配字符串的起始位置索引
print('i love python'.find('python'))
# 判断字符串旋转后得到
def is_rotation(s1: str, s2: str) -> bool:
    if s1 is None or s2 is None:
        return False
    if len(s1) != len(s2):
        return False
    def is_substring(s1: str, s2:str) -> bool:
        return s1 in s2
    return is_substring(s1, s2+s2)
# 测试函数is_rotation:
r = is_rotation('stringbook', 'bookstring')
print(r)
r = is_rotation('greatman', 'maneatgr')
print(r)

# 密码安全检查：正则
import re
pat = re.compile(r'[\da-zA-Z]{6,20}')
print(pat.fullmatch('sahdio123'))

# 自定义：类（对象）
class Dog(object):
    #类的属性:
    def __init__(self,name,dtype):
        self.__name = name
        self.__dtype = dtype
    # 类的方法
    def shout(self):
        print('I\'m %s, type: %s'%(self.__name, self.__dtype))
    def getName(self):
        return self.__name

# 类的实例:
wangwang = Dog('wangwang', 'cute_type')
# print(wangwang.name, wangwang.dtype)
# print(wangwang.shout())
print(wangwang.getName())

# 优雅的改变某个属性为只读或只写
class Book(object):
    def __init__(self, name, sale):
        self.__name = name
        self.__sale = sale
    # 可读属性
    @property
    def name(self):
        return self.__name
    # 可写属性
    @name.setter
    def name(self, new_name):
        self.__name = new_name

a_book = Book('magic book', 100000)
print(a_book.name)
a_book.name = 'magic_book_2.0'
print(a_book.name)
# -*- coding: utf-8 -*-
a = [1,2,3,4,2,2,3]
print(max(a))
print(max(a, key=lambda x: a.count(x), default=1))

def f(a,*,b):
    pass
print(f(a, b=1))
print(sum(a,2))

# max(iterable,*[, key, default])
a = [{'name':'xiaoming','age':18,'gender':'male'},{'name':'xiaohong','age':20,'gender':'female'}]
print(max(a, key=lambda x: x['age']))

def max_length(*lst):
    return max(*lst, key=lambda v: len(v))
print(max_length([1,2,3], [4,5,6,7], [8]))

# pow(x, y, z=None, /)
print(pow(3,2,4))

# round(number[, ndigits])
print(round(10.022222, 2))

# complex([real[,imag]])
print(complex(1,2))

# hash(object)　
class Student():
    def __init__(self, id, name):
        self.id = id
        self.name = name
    def __repr__(self):
        return 'id = '+self.id+', name = '+self.name
xiaoming = Student('001', 'xiaoming')
print(hash(xiaoming))

# all(iterable)
a = all([1,0,3,6])
a = all([1,2,3,4,5])
print(a)

# ascii(object)
class Student():
    def __init__(self,id,name):
        self.id = id
        self.name = name
    def __repr__(self):
        return 'id='+self.id+',name='+self.name
xiaoming=Student('001', 'xiaoming')
print(xiaoming)
print(ascii(xiaoming))

print(hex(32))
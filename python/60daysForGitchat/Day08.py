# -*- coding: utf-8 -*-
# 类型函数

o = object()
print(o.__dir__())

print(int('12', 16))

s = {1,2,3}
s.pop()
print(s)

a = [1,2,3,4,5]
a.pop()
print(a)

v = {1,2,3}
list(v)
print(v)

m = map(lambda i:str(i), [186,1243,3201])
l = list(m)
print(l)

range(11)

range(0,11,2)

a = set([1,4,2,3,1,2])
print(a)

a = [1,4,2,3,1]
print(a[slice(0,5,2)])

t = tuple(range(2,20,2))
print(t)

class Student:
  pass
xiaoming = Student()
print(type(xiaoming))

for i in zip([1,2]):
  print(i)

a = range(5)
b = list('abcde')
print(b)
print([str(y)+str(x) for x, y in zip(a,b)])


# 类对象及属性
# classmethod
class Student():
  def __init__(self,id=None,name=None):
    self.id=id
    self.name=name
  def instance_method(self):
    print(f'这是实例方法{self.id},{self.name}')
    return self
  @classmethod
  def __annotations__(cls):
    return "学生类"
  @classmethod
  def print_type_name(cls):
    print(f'这是类上的方法,类名为{cls.__name__}, 注解为{cls.__annotations__()}')
Student().instance_method()
Student().print_type_name()

# delattr(object, name)
class Student():
    def __init__(self, id=None,name=None):
        self.id = id
        self.name = name
xiaoming = Student(1, 'xiaoming')
delattr(xiaoming,'id')
hasattr(xiaoming, 'id')

from collections.abc import Iterable
print(isinstance([1,2,3], Iterable))

class Parent():
  def __init__(self,x):
    self.v = x
  def add(self,x):
    return self.v + x
class Son(Parent):
  def add(self, y):
    r = super().add(y)
    print(r)
Son(1).add(2)

print(callable(str))
print(callable(int))

class Student():
  def __init__(self, id=None, name=None):
    self.id=id
    self.name = name
  def __call__(self):
    pass
xiaoming = Student('001', 'xiaoming')
t = Student('001', 'xiaoming')
print(callable(xiaoming))
print(callable(Student))
t()

# -*- Coding: UTF-8 -*- #

# 定义一个简单的类, 描述一个人的基本信息
class Person1:
    # 定义类的数据成员: 姓名, 年龄
    name = ''
    age = 0

    # 定义一个函数: 打印类实例的基本信息
    def printPersonInfo(self):
        print('person-info: {name: %s, age: %d}'%(self.name, self.age))
    # 定义一个简单的函数
    def hello(self):
        print("Hello world!")

# 实例化, 创建一个对象
p1 = Person1()
# 访问类的属性: 数据成员, 访问愈发obj.X
print('name:', p1.name)
print('age:', p1.age)
# 访问类的函数
p1.printPersonInfo()
p1.hello()

# 重新定义一个类
class Person2:
    name = ''
    age = 0
    def printPersonInfo(self):
        print('name:', self.name)
        print('self:', self)
        print('self class:', self.__class__)

# 实例化, 创建一个对象
p2 = Person2()
# 访问类的函数
p2.printPersonInfo()

# 再重新定义一个类, 进行标准实例化
class Person3:
    name = ''
    age = 0
    # 定义构造函数, 用于创建一个类实例, 也就是类的具体对象
    # 通过参数传递, 可以赋予对象初始状态
    def __init__(self, name, age):
        self.name = name
        self.age = age
    # 定义一个函数: 打印类实例的基本信息
    def printPersonInfo(self):
        print('person-info: {name:%s, age:%d}'%(self.name, self.age))

# 实例化, 创建两个对象, 默认调用构造函数: __init__()
p1 = Person3("Zhang San", 12)
p2 = Person3("Li Si", 13)
# 访问类的属性: 数据成员, 访问语法obj.X
print("name:", p1.name)
print("age:", p1.age)
# 调用函数
p1.printPersonInfo()
p2.printPersonInfo()

# 定义一个简单的类, 描述一个人的基本信息
class Person4:
    # 定义构造函数,用于创建一个类实例, 也就是类的具体对象
    def __init__(self, name, age):
        self.name = name
        self.age = age
    # 定义一个函数: 打印类实例的基本信息
    def printPersonInfo(self):
        print('person-info: {name: %s, age: %d}'%(self.name, self.age))


# 继承
# 定义一个类Occupation, 描述职业

class Occupation:
    def __init__(self, salary, industry):
        self.salary = salary
        self.industry = industry
    def printOccupationInfo(self):
        print('Occupation-info: {salary: %d, industry: %s}'%(self.salary, self.industry))

# 定义一个简单的类Person, 继承自类Occupation
class Person(Occupation):
    def __init__(self, name, age):
        self.name = name
        self.age = age
    # 定义一个函数: 打印类实例的基本信息
    def printPersonInfo(self):
        print('person-info: {name: %s, age: %d, salary: %s}'%(self.name, self.age, self.salary))

# 创建一个子类对象
temp = Person('Wu-Jing', 38)
# 访问父类的数据成员
temp.salary = 21000
temp.industry = "IT"
# 分别调用本身和父类的函数
temp.printOccupationInfo()
temp.printPersonInfo()

# init a bankAccount, describe the bank info
class BankAccount:
    def __init__(self,number,balance):
        self.number = number
        self.balance = balance
    # sum and return
    def getAnnualInterest(self):
        return self.balance*0.042

# init a Occupation class, describe the job
class Occupation:
    def __init__(self,salary,industry):
        self.salary = salary
        self.industry = industry
    def printOccupationInfo(self):
        print('Occupation-info:{salary:%d, industry:%s}'%(self.salary, self.industry))

# init a Person class, inherit the class BankAccout and Class Occupation
class Person(Occupation, BankAccount):
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def printPersonInfo(self):
        print('person-info: {name: %s, age: %d}'%(self.name, self.age))

# creat a class obj
temp = Person('Wu-Jing', 38)
# 访问父类数据成员
temp.number = 622202050201
temp.balance = 1000000.99
temp.salary = 21000
temp.industry = "IT"
# 分别调用本身和父类的函数
temp.printOccupationInfo()
temp.printPersonInfo()
print('Annual interest:', temp.getAnnualInterest())

#定义一个类 BankAccount，描述银行账户
class BankAccount: 
    def printInfo(self):
        print('BankAccount-info')  

#定义一个类 Occupation，描述职业
class Occupation:
    def printInfo(self):
        print('Occupation-info') 

#定义一个类 Person,继承自类 BankAccount 和 BankAccount      
class Person(BankAccount,Occupation):
    def __init__(self,name,age):
        self.name = name
        self.age = age  

    def printPersonInfo(self):
        print('person-info')

#创建一个子类对象
temp = Person('Wu-Jing',38)
#调用父类中的函数
temp.printInfo()

# init class Occupation
class Occupation:
    def __init__(self, salary, industry):
        self.salary = salary
        self.industry = industry
    def printInfo(self):
        print('salary: %d, industry: %s}'%(self.salary, self.industry))

# init class Person
class Person(Occupation):
    def __init__(self,name,age):
        self.name = name
        self.age = age
    def printInfo(self):
        print('name: %s, age: %d'%(self.name, self.age))
        print('salary: %d, industry: %s'%(self.salary, self.industry))

# 创建一个子类对象
temp = Person('Wu-Jing', 38)
# 访问父类的数据成员
temp.salary = 21000
temp.industry = "IT"
temp.printInfo()

# 私有函数
class Person:
    def __init__(self,name,age):
        self.__name = name
        self.__age = age
    def getName(self):
        self.__fun()
        return self.__name
    def getAge(self):
        return self.__age
    def __fun(self):
        print('Hello')

p1 = Person("Zhang San", 12)
print('name', p1.getName())
# print('age', p1.__name)
# p1.__fun()

class Person:
    def __init__(self, name, age):
        self.__name = name
        self.__age = age
    def getName(self):
        self.__fun()
        return self.__name
    def getAge(self):
        return self.__age
    def __fun(self):
        print('Hello')

# 实例化
p1 = Person("Zhang San", 12)
print('name:', p1.getName())

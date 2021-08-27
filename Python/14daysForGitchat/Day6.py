# -*- coding: UTF-8 -*- #

#函数定义符, 函数名(参数列表)
#def getPath(basePath, fileName):
#def getName():

# 定义函数
def compare(parameter1, parameter2):
    if (parameter1 > parameter2):
        print("%s 大于 %s"%(parameter1, parameter2))
    elif (parameter1 == parameter2):
        print("%s 等于 %s"%(parameter1, parameter2))
    else:
        print("%s 小于 %s"%(parameter1, parameter2))
# 调用函数
compare(1, 2)
compare(3.14, 1.5)
compare(12, 12.1)
# a = input('Please input a: ')
# b = input('Please input b: ')
# compare(a, b)

# 不可变类型实例
def change(x):
    x = 10
a = 5
change(a)
print('a:', a)
# a: 5

# 可变类型实例
def change(x):
    x.append(2012)
a = [1,2,3,4]
change(a)
print("a = ", a)

# 声明参数为一个
def update(arg):
    arg = arg+1
# 正确
update(12)
# 不正确
# update()
# 不正确
# update(1, 2)

# 参数顺序要一致
def printInfo(name, sex, age=0):
    print('name:', name);
    print('sex:', sex);
    print('age:', age)
# 正确
printInfo('jack', 'male', 18)
# 不正确, 参数顺序不对应
printInfo(18, 'Jack', 'male')

# 关键字参数, 都是正确的
printInfo(name="Jack", sex="male", age=18)
printInfo(name="Jack", age=18, sex="male")
printInfo(age=18, sex="male",name="Jack")
printInfo(name="Jack", sex="male")

# 不定长参数
def functionname(formal_args, *var_args_tuple ):
    functionbody
# 定义一个求和函数
def sum(num, *num_list):
    sum = num
    for element in num_list:
        sum += element
    print('sum=', sum)
sum(1)
sum(1,2,3,4)

# return 语句
def compare(parameter1, parameter2):
    if(parameter1 > parameter2):
        return 1
    elif(parameter1 == parameter2):
        return 0
    else:
        return -1
result = compare(123, 456)
print('result=', result)

# 变量作用域
a = 123 # 这里的a是全局变量
def function():
    a = 10 # 这里的a是局部变量
    print('I a = ', a)
function()
print("II a = ", a)
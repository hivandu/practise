# -*- coding: UTF-8 -*- #

# 示例:控制台输入数字比较
# A = int(input('please enter the number A:'))
# B = int(input('please enter the number B:'))
# if A>B:
#     print('The larger number is:', A)
# elif A == B:
#     print(' A and B are equal to', A)
# else:
#     print('The larger number is:', B)

# 示例: 控制台输入学号, 如果学号正确则输出考试成绩;如果学号错误, 输出报错提示

# 创建一个“学号:成绩”的字典
exam_results = {'2018002': 95, '2018013': '90', '2018023': 87}
# 接收从控制台输入学号, 默认为字符串类型
# stu_num = input("Please enter the student number:")
# 删除输入学号首尾空格, 避免影响查询
# stu_num = stu_num.strip()
#判断输入的学号是否存在于“学号-查询”字典中
# if stu_num in exam_results.keys():
#     print('Your score is:', exam_results.get(stu_num))
# else:
#     print('The student number you entered is incorrect!')


# 实例1: 求一组数据的平均值
# 测试数据集
num_set = [98,94,82,67,58,90,86]
sumOfNum = 0
# 遍历列表中的元素, 求和
for element in num_set:
    sumOfNum += element
# 求平均值并打印结果
print('求和结果:', sumOfNum)
average = sumOfNum/len(num_set)
print("The average is: %f"%(average))

# 实例2 通过range() 函数遍历数据序列
for index in range(4):
    print('index:', index)

# for循环结合range()遍历数据序列
# 测试数据集
city_set = ['BeiJin','TianJin','ShangHai','HangZhou','SuZhou']
# 索引从0开始, 以步长2遍历
for index in range(0,len(city_set),2):
    print("city_set[%d]:%s"%(index, city_set[index]))

# while循环
# 实例1: 求一组数据的平均值
# 初始化测试数据
num_set = [98,94,82,67,58,90,86]
sumOfNum = 0
index = 0

while index < len(num_set):
    sumOfNum += num_set[index]
    index += 1
# 求平均值并打印结果
average = sumOfNum / len(num_set)
print("The average is:%f"%(average))


# break
for i in range(len(num_set)):
    if num_set[i] < 60:
        print('Someone failed!')
        break
    else:
        print(num_set[i])

while True:
    a = input('Pleae enter a number:')
    if int(a) > 100:
        print('Error!!!')
        break
    else:
        print(a)

# Pass 语句
for i in range(len(num_set)):
    if num_set[i] < 60:
        print('Someone failed!')
        pass
    print(num_set[i])


# 初始化测试数据
for i in range(len(num_set)):
    if num_set[i] < 60:
        print("Someone failed!")
    else:
        pass
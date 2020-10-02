# -*- coding: UTF-8 -*-

str1 = "Hello World!"
# 访问字符串中的单个字符或者字串
print("str1:", str1);
print('str1[0]:', str1[0]);
print('str1[0:4]', str1[0:5]);
print('str1[5:9]:', str1[6:11]);

str1 = "Hi!"
str2 = "Jack"
# 通过拼接修改字符串
str1 = str1 + str2
print("After splicing str1:", str1);
# 通过替换修改字符串: replace(old, new)
str1 = str1.replace(str2, "Tom")
print("After replacement str1:", str1);

str1 = "Hello world!"
str2 = "Jack"
# 字符串拼接
print('str1+str2:', str1+str2);
# 字符串截取
print('str1[0:6]:', str1[0:6]);
# 字符串复制
print('str2*2:', str2*3)
# 成员运算: 判断一个字符串是否包含某成员
print("world in str1?", 'world' in str1)
print('word in str1?', 'word' in str1)

#格式化为十进制:%d
print('PI is approximately equal to %d (I)'%(3.1415926))
#格式化字符串:%s
print('PI is approximately equal to %s (II)'%(3.1415926))
#格式化浮点数字，可指定小数点后的精度,默认为6位小数:%f
print('PI is approximately equal to %f (III)'%(3.1415926))
#格式化浮点数字，指定n位小数:%.nf
print('PI is approximately equal to %.2f (IV)'%(3.1415926))
#用科学计数法格式化浮点数:%e
print('PI is approximately equal to %e (V)'%(3.1415926))
#格式化为十进制:%d
print('The road is about %d meters long (VI)'%(1234))
#格式化无符号八进制数:%d
print('The road is about %o meters long (VII)'%(1234))
#格式化无符号十六进制数:%x
print('The road is about %x meters long (VIII)'%(1234))


str1 = "  Hello world! Hello"
str2 = "Hello"

# return the string length: len(str)
print("str1's length", len(str1))
# 对字符串进行分割: split(str), 分割符为str, 此处以空格进行分割
print('str1 以空格分割的结果:', str1.split(' '))
# 删除字符串首尾的空格
print('str1删除首尾的空格:', str1.strip())
# count(str2, beg>=0, end<=len(str1))
# 返回str2在str1里面出现的次数, 如果beg或者end制定则返回指定范围内str2出现的次数
print('str2在str1中出现的次数:', str1.count(str2))
print('str2在str1中出现的次数(指定范围):', str1.count(str2, 10, 20))
#检查字符串是否以obj结束, 如果beg或者end指定则检查指定的范围内是否以obj结束
#如果是, 返回Ture, 否则返回false
print('str1是否以str2结尾:', str1.endswith(str2))
print('str1是否以str2结尾(指定范围):', str1.endswith(str2, 10, 19))
# 检测str2是否包含在字符串str1中,如果指定范围beg和end, 则检查是否包含在指定范围内
#如果包含返回开始的索引值,否则返回-1
print('str1中是否包含str2', str1.find(str2))
print('str1中是否包含str2(指定范围:)', str1.find(str2, 10, 20))


##### 列表

#随意创建3个列表，同一个列表中可以存放任意基本数据类型
list1 = [3.14, 5.96, 1897, 2020, "China",3+4j];
list2 = [1, 2, 3, 4, 5 ];
list3 = ["BeiJing", "ShangHai", "NanJing", "GuangZhou"]; 
list4 = [] 

# 通过索引下标访问列表中的某个元素
print('list1[2]:', list1[2])
# 一次访问多个元素
print('list1[0:2]', list1[0:2])

# 更改列表中的元素
list1[3] = "Change"
print('after list1:', list1)

# 删除列表中的元素
del list1[3]
list1.remove(3.14)
print('After deleting the element:', list1)
list1.clear()
print('After the emptying of the list:', list1)

# 向列表内添加新元素
list3.append("New Ele-I")
list3.insert(2, "New Ele-II")
print('after list3:', list3)

list1 = [2012, 1949, 1897, 2050, 1945, 1949];

#求列表长度，即列表中元素的个数:len(obj)
print("The length of the list: ", len(list1))
#求列表中元素的最大值：max(list)
print("The largest element in the list: ", max(list1))
#求列表中元素的最小值：min(list)
print("The smallest element in the list: ", min(list1))
#统计某个元素在列表中出现的次数：list.count(obj)
print("The number of times 1949 appears: ", list1.count(1949))
#从列表中找出某个值第一个匹配项的索引位置：list.index(obj)
print("The index of the first location of 1949: ", list1.index(1949))
#复制一个已有的表:list.copy()
list2 = list1.copy()
print("list2:", list2)
#反转一个已有的表:list.reverse()
list1.reverse()
print("After reversing :", list1)

list1 = [1,2,3,4]
list2 = [5,6,"Beijing",7,8]
# 拼接
print('list1+list2:', list1+list2)
# 列表乘法
print('list1*2', list1*2)
#判断元素是否存在于列表中
print("3 in list1?", 3 in list1)
print('100 in list2', 100 in list2)
# 迭代
for element in list1:
    print(element)

# 列表潜逃
list3 = [list1, list2]
print('list3:', list3)

stack1 = [1,2,3,4,5,6]
stack1.append(123)
print('stack1:', stack1)
print('stack1.pop():', stack1.pop())



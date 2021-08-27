# <!-- Coding: utf-8 -->

## 分析

'''
中国电信号段:133,153,180,181,189,170,173,177,149
中国联通号段:130,131,132,155,156,185,145,175,176,185,171
中国移动号段:134,135,136,137,138,139,150,151,152,158,159,182,183,184,172,147,178
'''

'''
1. 11位，1开头，
2. 第二位：3,4,5,7,8
3. 第三位：根据第二位数字来确定
    3:[0~9]
    4:[5,7,9]
    5:[0~9] | 4
    7:[0~9] | 4&&9
    8:[0~9]
4. 后八位：随机生成
'''
'''
函数作用:
1. 定义一个函数，生成一个电话号码
2. 随机生成第二位数
3. 根据第二位生成第三位
4. 后八位随机
5. 拼接字符串
'''

import random

def create_phone():

    # 定义第二个数
    second = [3,4,5,7,8][random.randint(0,4)]

    # 测试第二个数
    # print(f'第二个数:{second}')
    
    # 根据第二个数生成第三个数，使用字典
    third = {
        3:random.randint(0,9),
        4:[5,7,9][random.randint(0,2)],
        # 使用列表生成式
        5:[i for i in range(10) if i != 4][random.randint(0,8)],
        7:[i for i in range(10) if i not in [4,9]][random.randint(0,7)],
        8:[i for i in range(10)][random.randint(0,9)]
    }[second]
    
    # 测试第三个数
    # print(f'第三个数:{third}')
    
    # 第三个数
    lastNums = ''
    
    # 循环获取并拼接八个数
    for i in range(8):
        lastNums = lastNums + str(random.randint(0,9))
    
    # 测试后八个数
    # print(f'后八个数:{lastNums}')

    # 返回最后拼接结果
    return '1{}{}{}'.format(second, third, lastNums)

# 调用方法
phone_number = create_phone()
print(phone_number)

# 课后作业： 写一个乘法表
for i in range(1,10):
    for j in range(1, i+1):
        print(f'{j}*{i}={j*i}',end='\t')
    print()
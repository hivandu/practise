# -*- coding: utf-8 -*-
# 判断list内有无重复元素
# def is_duplicated(lst):
#     for x in lst:
#         if lst.count(x) > 1:
#             return True
#     return False

# 借助set判断更方便:
def is_duplicated(lst):
    return len(lst) != len(set(lst))

a = [1,-2,3,4,5,2]
print(is_duplicated(a))

# 列表反转
def reverse(lst):
    return lst[::-1]

a = [1,2,3,4,5,6,7]
print(reverse(a))

# 找出所有重复元素
def find_duplicate(lst):
    ret = []
    for x in lst:
        if lst.count(x) > 1 and x not in ret:
            ret.append(x)
    return ret

a = [1,2,3,4,5,6,7,8,9,0,2,3,43,4,5,12,1]
print(find_duplicate(a))

# 4. 斐波那契数列
# 普通实现
def fibonacci(n):
    if n <= 1:
        return [1]
    fib = [1, 1]
    while len(fib) < n:
        fib.append(fib[len(fib) - 1] + fib[len(fib) -2])
    return fib
r = fibonacci(7)
print(r)

# 生成器版本
def fibonacci(n):
    a, b = 1, 1
    for _ in range(n): # range(start, stop[, step])
        yield a
        a, b = b, a+b
r = list(fibonacci(5))
print(f'fibonacci 5 的结果为：{r}')



# 5. 出镜最多
def mode(lst):
    if not lst:
        return None
    return max(lst, key=lambda v: lst.count(v))

lst = [1,2,3,3,2,4,3,2,1]
r = mode(lst)
print(f'{lst} 中出现次数最多的元素为:{r}')

## 返回多个
def mode2(lst):
    if not lst:
        return None
    max_freq_elem = max(lst, key=lambda v: lst.count(v))
    max_freq = lst.count(max_freq_elem)
    ret = []
    for i in lst:
        if i not in ret and lst.count(i)==max_freq:
            ret.append(i)
    return ret

r = mode2(lst)
print(r)

# 6. 更长列表
def max_len(*lists):
    return max(*lists, key=lambda v: len(v))

r = max_len([1,2,3], [4,5,6,7], [8])
print(f'最长的列表是{r}')

# 7. 求表头
def head(lst):
    return lst[0] if len(lst) > 0 else None

print(head([]))
print(head([1,2,3,4]))

# 8. 求表尾
def tail(lst):
    return lst[-1] if len(lst) > 0 else None
print(tail([]))
print(tail([1,2,3,4]))

# 9. 打印乘法表
def mul_table():
    for i in range(1, 10):
        for j in range(1, i+1):
            print(str(j) + str("*") + str(i) + "=" + str(i*j), end="\t")
        print()
# mul_table()

# 10. 元素对
def pair(t):
    return list(zip(t[:-1], t[1:]))
print(pair([1,2,3,4,5,6,7,8,10]))

# 11. 样本抽样
from random import randint, sample
lst = [randint(0, 50) for _ in range(100)]
print(lst[:5])
lst_sample = sample(lst, 10)
print(lst_sample)

# 12. 重洗数据集
from random import shuffle
lst = [randint(0, 50) for _ in range(100)]
a = lst[:5]
print(a)
shuffle(a)
print(a)

# 13. 生成满足均匀分布的坐标点

## 使用PyEcharts绘图
from pyecharts.charts import Scatter
import pyecharts.options as opts
from random import uniform

def draw_uniform_points():
    x, y = [i for i in range(100)],[round(uniform(0,10),2) for _ in range(100)]
    print(y)
    c = (
        Scatter()
        .add_xaxis(x)
        .add_yaxis('y', y)
        )
    c. render()
draw_uniform_points()
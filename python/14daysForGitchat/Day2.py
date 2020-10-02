# -*- coding: UTF-8 -*-

a = 123
b = 3.1415926

print("int(b)=", int(b))
print("float(a)=", float(a))
print("complex(a)=", complex(a))
print("complex(a,b)=", complex(a, b))

# 数学函数
import math
# 求绝对值: abs(x)
print("abs(-12)", abs(-12));

# 向上取整: ceil(x)
print("ceil(3.1415)=", math.ceil(3.1415));

# 向下取整: floor(x)
print("floor(3.678)=", math.floor(3.678));

# 四舍五入: round(x)
print("round()3.678", round(3.678));

# 乘方运算: pow(x, y), x的y次方
print("pow(3, 4)=", pow(3, 4));

# 求平方根: sqrt(x)
print("sqrt(144)=", math.sqrt(144));

# 算数运算符

# 初始化测试数据
x = 24
y = 5
z = 0

# 分别计算7中算数运算
z = x+y
print("x+y = ", z);

z = x-y
print("x-y=", z);

z = x*y
print(z);

z = x / y
print("x/y=", z);

z = x%y
print(z);

z = x**y
print(z);

z = x//y
print(z);

temp1 = "ABCDEFG"
temp2 = [4,2,3,5,8,9]
a="CDE"
b=5
c="CDF"

print("a in temp1?", a in temp1);
print("b in temp2?", b in temp2);
print("c in temp1?", c in temp1);
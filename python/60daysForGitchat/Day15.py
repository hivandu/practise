# -*- coding: utf-8 -*-

import numpy as np
x = np.array([[1,2],[3,4]])

print('x:\n',x)
# 求x的转置矩阵：
xt = x.transpose()
print('xt:\n',xt)

# dot操作求两个矩阵的乘积
x2 = xt.dot(x)
print('x2:\n',x2)

# 逆矩阵，用到模块linalg:
import numpy.linalg as lg
x3 = lg.inv(x2)
print('x3:\n',x3)

# 写一个专门绘图用的装饰器
import matplotlib.pyplot as plt
from functools import wraps

# 定义带四个参数的画图装饰器
def my_plot(label0=None, label1=None, ylabel='probability density function', fn=None):
    def decorate(f):
        @wraps(f)
        def myplot():
            fig = plt.figure(figsize=(16, 9))
            ax = fig.add_subplot(111)
            x, y, y1 = f()
            ax.plot(x, y, linewidth=2, c='r', label=label0)
            ax.plot(x, y1, linewidth=2, c='b', label=label1)
            ax.legend()
            plt.ylabel(ylabel)
            # plt.show()
            plt.savefig('./img/%s' % (fn,))
            plt.close()
        return myplot
    return decorate

# 均匀分布函数 unif
# @my_plot(label0='b-a=1.0', label1='b-a=2.0', fn='uniform.png')
# def unif():
#     x = np.arange(-0.01, 2.01, 0.01)
#     y = uniform.pdf(x, loc=0.0, scale=1.0)
#     y1 = uniform.pdf(x, loc=0.0, scale=2.0)
#     return x, y, y1


# 二项分布
# @my_plot(label0='n=50,p=0.3', label1='n=50,p=0.7', fn='binom.png', ylabel='probability mass function')
# def bino():
#     x = np.arange(50)
#     n,p,p1 = 50,0.3,0.7
#     y = binom.pmf(x, n=n, p=p)
#     y1 = binom.pmf(x, n=n, p=p1)
#     return x,y,y1

# Pandas
## 一维Series
## 二维DataFrame
import pandas as pd
# 创建Series
s1 = pd.Series([3,5,7])
print(s1)
# 指定 index、name：
s2 = pd.Series([3,5,7], index=list('ABC'), name='s3')
print(s2)
# 通过嵌套列表，创建 DataFrame：
df = pd.DataFrame([[9,0,1],[7,3,10],[3,4,5]], index=['a','b','c'], columns=['A','B','C'])
print(df)
# 通过字典，创建 DataFrame：
df2 = pd.DataFrame({'A':[9,7],'B':[0,3],'C':[1,10]}, index=['a','b'])
print(df2)

# Matplotlib

import numpy as np
import matplotlib.pyplot as plt
# def setup_axes():
#     fig, axes = plt.subplots(ncols=3, figsize=(6.5, 3))
#     for ax in fig.axes:
#         ax.set(xticks=[], yticks=[])
#     fig.subplots_adjust(wspace=0, left=0, right=0.93)
#     return fig, axes

# x = np.linspace(0,10,100)
# fig, axes = setup_axes()
# for ax in axes:
#     ax.margins(y=0.10)
# # 绘制多条线，颜色系统分配
# for i in range(1, 6):
#     axes[0].plot(x, i*x)
# # 展示线的不同 linestyle
# for i,ls in enumerate(['-','--',':','-.']):
#     axes[1].plot(x, np.cos(x) + i, linestyle=ls)
# # 展示线的不同 linestyle 和 marker
# for i, (ls,mk) in enumerate(zip([':', ':', ':'],['^','o','o'])):
#     axes[2].plot(x, np.cos(x)+i*x, linestyle=ls, marker=mk, markevery=10)

# # #录入身高与体重数据
# height = ['170','179','159','160','180','164','168','174','160','183']
# weight = ['57','62','47','67','59','49','54','63','66','80']

# plt.scatter(height, weight, s=40,c='r',marker='.')
# plt.xlabel('height(cm)')
# plt.ylabel('weight(kg)')
# plt.title('Test')
# plt.show()

# Seaborn
# import numpy as np
# import seaborn as sns
# import matplotlib.pyplot as plt

# sns.set(style='whitegrid')
# rs = np.random.RandomState(1)
# x = rs.normal(2,0.1,50)
# y = 2 + 1.6*x+rs.normal(0,0.1,50)
# sns.residplot(x,y,lowess=True, color='yellowgreen')
# plt.show()

# scikit-learn

# import numpy as np
# import matplotlib.pyplot as plt
# from sklearn.decomposition._nmf import _beta_divergence

# print(__doc__)

# x = np.linspace(0.001, 4, 1000)
# y = np.zeros(x.shape)

# colors = 'mbgyr'
# for j, beta in enumerate((0., 0.5, 1., 1.5, 2.)):
#     for i, xi in enumerate(x):
#         y[i] = _beta_divergence(1, xi, 1, beta)
#     name = "beta = %1.1f" % beta
#     plt.plot(x, y, label=name, color=colors[j])

# plt.xlabel("x")
# plt.title("beta-divergence(1, x)")
# plt.legend(loc=0)
# plt.axis([0, 4, 0, 3])
# plt.show()

from sklearn.datasets import load_iris
import matplotlib.pyplot as plt
import seaborn as sns

sns.set(style="ticks")

df = sns.load_dataset("iris")
df02 = df.iloc[:,[0,2,4]] # 选择一对特征
print(df02)
sns.pairplot(df02, hue="species")
plt.show()

# 导入树模型 tree：
from sklearn import tree
# 创建决策树分类器
clf = tree.DecisionTreeClassifier()

# 每类植物抽样 3/5 数据做训练，2/5 做预测。
train_index = [i for i in range(150) if i<30 or 50<=i<80 or 100<=i<130]
test_index = [i for i in range(150) if 30<=i<50 or 80<=i<100 or 130<=i<150]
train_data, train_target = df02.iloc[train_index,[0,1]], df02.iloc[train_index, 2]
test_data, test_target = df02.iloc[test_index,[0,1]], df02.iloc[test_index, 2]
# 训练模型：
clf = clf.fit(train_data, train_target)
print('clf:\n',clf)
# 在数据上做预测：
test_val = clf.predict(test_data)
print('test_val:\n',test_val)
# 预测精度 95%。
right=[i for i, j in zip(test_val, test_target) if i==j]
percent = len(right) / len(test_target)
print(percent)

## 使用TensorFlow做线性回归
#global_variables_initializer 初始化Variable等变量
import tensorflow as tf
sess = tf.Session()
init = tf.global_variables_initializer()
sess.run(init)
print('w=',sess.run(w),'b=',sess.run(b),sess.run(loss))

for setp in range(20):
    sess.run(train)
    print('w=', sess.run(w), 'b=', sess.run(b), sess.run(loss))
# 写入磁盘，提供tensorboard在浏览器中展示用
writer = tf.summary.FileWriter('./mytmp', sess.graph)

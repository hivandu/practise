# -*- coding: utf-8 -*-
# 使用SVM对信用卡欺诈进行分类
import pandas as pd
import numpy as np
import itertools
from sklearn import svm, metrics
from sklearn.metrics import confusion_matrix, precision_recall_curve
from sklearn.preprocessing import StandardScaler
import warnings
warnings.filterwarnings('ignore')

# 加载数据
data = pd.read_csv('~/credit_fraud/creditcard.csv')
# print(data)
print(data)
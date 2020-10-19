# 试试自行分析一个全球鲨鱼攻击数据

import pandas as pd
import numpy as np
from pandas import Series,DataFrame

df = pd.read_excel('/Users/du/Downloads/Global Shark Attacks.xlsx')


df.fillna(method='ffill',inplace=True)

df.tail(125)

print(df)

# -*- coding: utf-8 -*-
# 反转字符串
s = "python"
rs = ''.join(reversed(s))
s = s[::-1]
print(s)
print(rs)

# 字符串切片操作
java,python = 'java','python'
jl,pl = len(java), len(python)
print([str(java[i%3*jl:]+python[i%5*pl:] or i) for i in range(1,10)])

# join 串联字符串
mystr = ['I', 'love', 'Python']
res = '_'.join(mystr)
print(res)

# 分割字符串
print('I_love_python'.split('_'))

# 替换
s = 'i love python'.replace('o', 'O')
print(s)

# 子串判断
## one
a = 'our'
b = 'flourish'
r = True if a in b else False
print(r)
## two
print(b.find(a))

# 去空格
a = '  \tI love python  \b\n'

# length for string
def str_byte_len(mystr):
  mystr_bytes = mystr.encode('utf-8')
  return(len(mystr_bytes))

print(str_byte_len('i love python'))

# 正则表达式
import re
# search
s = 'i love python very much'
pat = 'python'
r = re.search(pat, s)
print(r.span())

# match
s = 'flourish'
recom = re.compile('our')
print(recom.match(s))
res = recom.search(s)
print(res.span())

#finditer
s = '山东省潍坊市青州第1中学高三1班'
pat = '1'
r = re.finditer(pat,s)
for i in r:
  print(i)

# findall
s = '一共20行代码运行时间13.59s'
pat = r'\d+'
r = re.findall(pat, s)
print(r) # ['20', '13', '59']
# 没有达到预期，期望找到['20', '13.59']
pat = r'\d+\.?\d+'
r = re.findall(pat, s)
print(r)
# 以上正则无法匹配
s = '一共2行代码运行时间1.66s'
r = re.findall(pat,s)
print(r) # ['1.66']
# 以上没有匹配到数字2
pat = r'\d+\.?\d*'
r = re.findall(pat,s)
print(r) #['2', '1.66']

# 案例：匹配正整数
s = [-16, 1.5, 11.43, 10, 5]
pat = r'^[1-9]\d*$'
a = [i for i in s if re.match(pat, str(i))]
print(a)

# re.I 忽略大小写
s = 'That'
pat = r't'
r = re.finditer(pat,s,re.I)
a = []
for i in r:
  a.append(i.span())
print(a)

# split 分割单词
s = 'id\tname\taddress'
print(s.split('\t'))
# 正则匹配复杂分割符
s = 'This,,,   module ; \t   provides|| regular ; '
words = re.split('[,\s;|]+', s)
print(words)

# sub 替换匹配串
content = 'hello 12345, hello 456321'
pat = re.compile(r'\d+')
m = pat.sub('666', content)
print(m)

# compile 预编译
s = [-16,'good',1.5, 0.2, -0.1, '11.43', 10, '5e10']
rec = re.compile(r'^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$')
a = [i for i in s if rec.match(str(i))]
print(a)

# 贪心捕获
content = '''
          <h>ddedadsad</h>
          <div>graph</div>
          <div>math</div>'''
result = re.findall(r'<div>.*</div>',content)
print(result) # ['<div>graph</div>', '<div>math</div>']
# 如果不想保留<div>...</div>
result = re.findall(r'<div>(.*)</div>',content)
print(result)

# 非贪心捕获
result = re.findall(r'<div>(.*?)</div>',content)
print(result)

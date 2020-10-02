# -*- Coding: UTF-8 -*- #

# # 异常处理
# def compare(num1, num2):
#     try:
#         if(num1 >= num2):
#             return num1
#         else:
#             return num2
#     except:
#         return "ERROR"

# print('Compare(12, 34):', compare(12, 34))
# # 异常调用
# print('compare(12, ab):', compare(12, 'ab'))
# print("compare('12', 34):", compare('12', 34))

# import sys
# try:
#     f = open('myfile.txt')
#     s = f.readline()
#     print('result:', s)
# except TypeError:
#     print('ERROR')
# finally:
#     print('close file')
#     f.close()

# # 清楚知道错误类型
# try:
#     f = open('file.txt')
#     s = f.readline()
#     print('result', s)
# except FileNotFoundError as err:
#     print('Exception info:', err)
# finally:
#     print('close file')
# # 使用万能异常
# try:
#     f = open('file.txt')
#     s = f.readline()
#     print('result:', s)
# except Exception as err:
#     print('Exception info:', err)
# finally:
#     print('close file')

# import sys
# try:
#     # 输入一个文件名
#     fileName = input('Please input file name:')
#     splitList = fileName.split('.')
#     fileType = splitList[splitList.__len__()-1]
#     print('fileType:', fileType)
#     # 判断文件格式, 如果不是doc抛出异常
#     if(fileType != "doc"):
#         raise NameError("the file type: %s is not expected."%(fileType))
#     f = open(fileName)
#     s = f.readline()
#     print('result', s)
# except FileNotFoundError as err:
#     print("Exception info:", err)
# finally:
#     print("close file")

# 自定义异常, 继承自Exception
class MyException(Exception):
    def __init__(self, *args):
        self.args = args
# 定义不同种类的业务异常, 继承基础异常类
class loginError(MyException):
    def __init__(self, code=100,message='login error', args=('Internal Server Error', 'http:500')):
        self.args = args
        self.message = message
        self.code = code

class loginoutError(MyException):
    def __init__(self):
        self.args = ('Internal Server Error',)
        self.message = 'login out error'
        self.code = 200
#raise loginError(), 使用默认参数
try:
    raise loginError()
except loginError as e:
    print(e) #输出异常
    print(e.code) #输出错误代码
    print(e.message) #输出错误信息

#raise loginError(), 传入参数
try:
    raise loginError(400, 'password is wrong!', ('Internal Server Error',))
except loginError as e:
    print(e) # 输出异常
    print(e.code)
    print(e.message)




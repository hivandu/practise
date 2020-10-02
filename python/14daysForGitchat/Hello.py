# print Hello world!

def printInfo():
    print('Hello World!')

def printSum(x, y):
    print(x+y)

def __fun__():
    print('Just for test!')

# 通过__all__变量定义模块的公有接口
__all__ = ['printInfo', 'printSum','__fun__']


if __name__ == '__main__':
    print('native')
else:
    print('external')
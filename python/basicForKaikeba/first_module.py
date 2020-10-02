# 自定义模块的使用
__all__ = ['g_num', 'show']
g_num = 10

def show():
    print('I am a function')
class Student(object):
    def __init__(self,name,age):
        self.name =name
        self.age = age
    def show_msg(self):
        print(self.name,self.age)
if __name__ == '__main__':
    show()
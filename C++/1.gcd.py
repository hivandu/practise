'''
Descripttion: 
version: 
Author: Hivan Du
mail: doo@hivan.me
Date: 2022-01-21 16:19:21
LastEditors: Hivan Du
LastEditTime: 2022-01-21 16:35:06
'''




def gcd(a, b ):
    if b:
        return gcd(b, a%b)
    else:
        return a

        
if __name__ == '__main__':
    a = int(input("please input a:"))
    b = int(input("please input b:"))
    print("最大公约数是: {}".format(gcd(a, b)))
    print("最小公倍数是: {}".format(a*b / gcd(a, b)))
    
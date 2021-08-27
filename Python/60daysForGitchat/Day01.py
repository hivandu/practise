# -*- coding: utf-8 -*-

class Book(object):
    def __init__(self,book_id,book_name,book_store_count):
        self.book_id = book_id
        self.book_name = book_name
        self.book_store_count = book_store_count
    # 重写加法操作
    def __add__(self,book):
        return self.book_store_count + book.book_store_count

# init two book example
python_intro_book = Book(1, 'python book', 100)
ml_intro_book = Book(2, '机械学习入门书', 200)
# 求两本书的总销量
sales_cnt = python_intro_book + ml_intro_book
print(sales_cnt)

print(5//2)
print(5//4.5)
print(2**3)

a = [1,2,3,4,5,6,7,8,9,10,11]
n = len(a)
if n > 10:
    print(f"{n}大于10")
if (n := len(a)) > 10:
    print(f"{n} > 10")
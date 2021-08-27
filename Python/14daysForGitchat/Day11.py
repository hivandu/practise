# -*- Coding UTF-8 -*- #
import mysql.connector
# import MySQLdb
#!/usr/bin/python3
# import pymysql
# import sys
# print(sys.path)

# #数据库配置，据实填写
db_config = {'host': '127.0.0.1',
            'user':'root',
            'password':'fA>JrkK=EA2R4tiH',
            'port': 3306,
            'database':'mysql',
            'charset':'utf8'
            }
try:
   #connect方法加载config的配置进行数据库的连接，完成后用一个变量进行接收
    cnn=mysql.connector.connect(**db_config)
except mysql.connector.Error as e:
    print('operation failed！',str(e))
else:
    print("operation succeeded!")

#创建表的sql语句
sql_create_table='CREATE TABLE`student`\
(`id`int(10)NOT NULL AUTO_INCREMENT,\
`name`varchar(10) DEFAULT NULL,\
`age`int(3) DEFAULT NULL,\
PRIMARY KEY(`id`))\
ENGINE=MyISAM DEFAULT CHARSET = utf8'

#buffered=True会把结果集保存到本地并一次性返回，这样可以提高性能
cursor = cnn.cursor(buffered = True)
#执行sql语句，创建表
try:
    cursor.execute(sql_create_table)
except mysql.connector.Error as err:
    print('operation failed！',str(err))

#执行数据库操作
try: 
    #插入  
    sql_insert1="insert into student(name,age) values ('zhang san',18)"
    cursor.execute(sql_insert1)  
except mysql.connector.Error as err:
    print('operation failed！',str(err))
finally:
    #关闭数据库相关链接
    cursor.close()
    cnn.close()
# 练习2

```SQL
/*标量函数*/

-- 数值函数 https://www.yuque.com/hivan/product/sql-han-shu
-- 绝对值函数

select ABS(-2), ABS(2)
FROM employee
WHERE emp_id = 1;

-- 取整函数
/*
CEIL、CEILING 函数向上取整
FLOOR函数向下取整
ROUND函数执行四舍五入运算
*/
select ceil(1.9), floor(4.5), round(9.456, 2)
FROM employee
where emp_id = 1;

-- 指数函数
select exp(1), power(2,4)
from employee
where emp_id = 1;

-- 对数函数
select log(6,36), ln(2.7182818285)
FROM employee
where emp_id = 1;

-- 平方根函数
select SQRT(196)
FROM employee
where emp_id = 1

-- 余数函数
select mod(1,3)
from employee
where emp_id = 1

select 7%3
from employee
where emp_id = 1;

-- 最大值与最小值
SELECT GREATEST(1,2,3), LEAST(1,2,3)
FROM employee
where emp_id = 1


-- 生成随机数
select rand()
from employee
where emp_id = 1

/*
思考题：如何实现查询语句，每次执行时从员工表中返回随机的5条不同的数据？
*/
select emp_name,salary
FROM employee
ORDER by rand() limit 5;


--  字符函数

-- 字符与ASCII编码转换

select ASCII('SQL'), CHAR(83)
FROM employee
where emp_id = 1

-- 字符串链接
select concat('SQL', ' World')
FROM employee
WHERE emp_id = 1

-- 指定连接符

select CONCAT_WS('-','S','Q','L')

-- 大小写转换
select LOWER('SQL'),UPPER('sql')

-- 字符串长度
select CHAR_LENGTH('数据库'), OCTET_LENGTH('数据库')

-- 获取子串
select emp_name, SUBSTR(emp_name,1,1)
from employee
where emp_id = 1;

-- 截断字符串
select TRIM('-' FROM '--S-Q-L--'), TRIM(' S-Q-L ')
FROM employee
WHERE emp_id = 1

-- 查找与替换
select email, INSTR(email, '@'), replace(email, '@','.')
from employee
WHERE emp_id = 1;

/*
思考题：为了保护员工的隐私，在显示信息时将员工姓名进行隐藏处理：对于两个字的姓名，将姓氏显示为星号；对于三个字或更多字的姓名，将倒数第二个字显示为星号。如何使用 SQL 语句实现下面的效果？
*/

select emp_name, REPLACE(emp_name,SUBSTR(emp_name, -2, 1),'*')
from employee

/*日期和时间的存储*/

-- 返回当前日期时间
select current_date, current_time, CURRENT_TIMESTAMP

-- 提取日期时间信息
select emp_name,hire_date
FROM employee
where EXTRACT(YEAR from hire_date)  = 2018;

-- 日期和时间的数学运算
select emp_name, hire_date, CURRENT_DATE, DATEDIFF(CURRENT_DATE,hire_date) AS days
from employee

-- 员工入职一周年纪念日
select emp_name, hire_date, hire_date + INTERVAL '1' YEAR AS anniversary
from employee

-- 类型转换函数
select CAST('666' as SIGNED INTEGER), cast(hire_date as char(10))
from employee
where emp_id = 1

-- 隐式转换
select '666' + 123, CONCAT('hire_date: ', hire_date)
from employee
WHERE emp_id = 1;

/*思考题：如果知道今天或者日期是星期几*/
select DAYOFWEEK(CURRENT_TIMESTAMP())
```
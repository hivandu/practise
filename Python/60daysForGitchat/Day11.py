# -*- coding: utf-8 -*-
# 时间和日历

# time 模块

## 当前时间浮点数
import time
seconds = time.time()
print(seconds)

## 时间数组
local_time = time.localtime(seconds)
print(local_time)

## 时间字符串
str_time = time.asctime(local_time)
print(str_time)

## 格式化时间字符串
format_time = time.strftime('%Y-%m-%d %H:%M:%S', local_time)
print(format_time)

## 字符时间转时间数组
str_to_struct = time.strptime(format_time, '%Y-%m-%d %H:%M:%S')
print(str_to_struct)

# datetime 模块
from datetime import date,datetime,time,timedelta
## date
### 打印当前日期
tod = date.today()
print(tod)

### 当前日期字符串
str_date = date.strftime(tod, '%Y-%m-%d')
print(str_date)

### 字符日期转日期
str_to_date = datetime.strptime('2020-08-22', '%Y-%m-%d')
print(str_to_date)

## datetime
### 打印当前时间
right = datetime.now()
print(right)

### 当前时间转字符串显示
str_time = datetime.strftime(right, '%Y-%m-%d %H:%M:%S')
print(str_time)

### 字符时间转时间类型
str_to_time = datetime.strptime('2020-08-22 15:12:33', '%Y-%m-%d %H:%M:%S')
print(str_to_time)

## timedelta
def get_days_girlfriend(birthday:str) -> int:
    import re
    splits = re.split(r'[-.\s+/]', birthday)
    splits = [s for s in splits if s]
    if len(splits) < 3:
        raise ValueError('输入格式不正确，至少包括年月日')
    splits = splits[:3] # 只截取年月日
    birthday = datetime.strptime('-'.join(splits), '%Y-%m-%d')
    print(r'birthday:', birthday)
    tod = date.today()
    delta = birthday.date() - tod
    return delta.days

days = get_days_girlfriend('2020/12/14')
print(days)

## 更多时间小案例
### 绘制年的日历图
import calendar
from datetime import date
mydate = date.today()
year_calendar_str = calendar.calendar(mydate.year)
print(f"{mydate.year}年的日历图:{year_calendar_str}\n")

### 月的日历图
month_calendar_str = calendar.month(mydate.year, mydate.month)
print(f"{mydate.year}年-{mydate.month}月的日历图:\n{month_calendar_str}\n")

### 判断是否为闰年
is_leap = calendar.isleap(mydate.year)
print_leap_str = '%s年是闰年' if is_leap else "%s年不是闰年\n"
print(print_leap_str % mydate.year)

### 判断月有几天
weekday, days = calendar.monthrange(mydate.year, mydate.month)
print(f'{mydate.year}年-{mydate.month}月的第一天是那一周的第{weekday+1}天\n')
print(f'{mydate.year}年-{mydate.month}月共有{days}天\n')

### 月的第一天
month_first_day = date(mydate.year, mydate.month, 1)
print(f"当月第一天:{month_first_day}\n")

### 月的最后一天
_, days = calendar.monthrange(mydate.year, mydate.month)
month_last_day = date(mydate.year, mydate.month, days)
print(f'当月最后一天:{month_last_day}\n')
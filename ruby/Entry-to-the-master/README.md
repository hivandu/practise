# Ruby 从入门到精通

# 第一篇 基础与脚手架
## 第一章 让它跑起来，安装Ruby
### 1.1 安装Ruby
#### 1.1.1 windows
#### 1.1.2 Apple Mac OS X
#### 1.1.3 Linux
### 1.2 小结

## 第二章 编程等于快乐: Ruby和面向对象概览
### 2.1 初始步骤
#### 2.1.1 irb: 交互式Ruby
#### 2.1.2 Ruby是计算机的通用语
#### 2.1.3 为什么Ruby是如此杰出的编程语言

	10.times do print "Hello world!" end
	
	User.find_by_email('me@privacy.net').country = 'Belgium'

#### 2.1.4 心灵小径

### 2.2 把思路转变成Ruby代码

#### 2.2.1 Ruby怎么理解对象和类的概念
#### 2.2.2 造人过程

	class Person
	        attr_accessor :name, :age, :gender
	end

上一行代码为Person类提供了三个属性(attributes). 每个Person都有`name`,`age`和`gender`, `attr`代表`attribute`(属性)，而`accessor`大概表示“让这些属性可以访问，可被设置和修改”。

#### 2.2.3 基础变量

#### 2.2.4 从人到宠物

### 2.3 一切都是对象

#### 2.3.1 Kernel模块的方法

	Kernel.puts "Hello, World!"

#### 2.3.2 向方法传递数据

#### 2.3.3 使用String类的方法

![][image-1]

### 2.4 以非面向对象方式使用Ruby

	def dog_barking
	    puts "Woof!"
	end

### 2.5 小结

- 类: 在面向对象语言中，类是对概念的定义。
- 对象： 对象是类的单个实例。
- 面向对象:
- 变量: 变量是单个对象的占位符
- 方法: 方法代表类和/或对象中的一组代码。
- 参数: 包含在括号中传递给方法的数据
- Kernel模块
- 试验: 请时刻关注可能想要开发的东西，这种关注非常重要。

## 第三章 Ruby的构造元素: 数据，表达式和流程控制　　　
### 3.1 数字与表达式
#### 3.1.1 表达式基础知识
#### 3.1.2 变量
#### 3.1.3 比较运算符与表达式

如果处于制定的两个值之间，则该方法返回`true`, 例如: `age.between?(12, 20)`

#### 3.1.4 用块和迭代子再数字中循环

	1.upto(5) do |number|
		puts number
	end

#### 3.1.5 浮点数

	x = 10
	y = 3
	puts x.to_f / y.to_f

#### 3.1.6 常量

类与常量性质类似，一旦定义好之后，就是程序的固化部分。

### 3.2 文本与字符串

#### 3.2.1 字面字符串

字符串直接嵌入在代码中，这种构造就称为字面字符串(String literal)

#### 3.2.2 字符串表达式

#### 3.2.3 插写

#### 3.2.4 字符串方法

![][image-2]





















[image-1]:	images/2-1.jpg
[image-2]:	images/3-3.jpg
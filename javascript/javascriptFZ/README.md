
# 第一篇 基础篇
## 　第一章 JavaScript 基础
### 1.1 脚本语言的介绍
脚本语言是一种简单的程序，由ASCII字符构成。不需要编译，只需要适应的解释器(Interpreter)就可以执行。
#### 分类
服务器脚本语言和客户端脚本语言

#### JavaScript
#### 类，对象与对象实例
JavaScript没有类的概念
	var now = new Date();
所以把对象实例也简称为对象。

#### 指定MIME类型
	<script type="text/javascript"></script>

#### defer属性
### 执行方式
#### 直接执行
#### “javascript:” 调用
	<a href="javascript:alert('')">click me</a>
or
	<a href="javascript:OnclickLink()">click me</a>

#### 与事件结合使用
### 注意事项
- 大小写敏感
- 换行符
- 分号

## 第二章 数据类型，常量和变量
### 2.1 基本数据类型
- 字符串型
	- JavaScript没有字符类型(char)，只有字符串。
- 数字型
	- JavaScript没有整数型，只有浮点数
	- NaN，NaN不与任何数字相等，包括NaN，需要使用isNaN()来判断运算结果是不是NaN
- 布尔
### 2.2 复合数据类型
- 对象
- 数组
### 2.3 其他数据类型　
- 函数 `function`
	可执行的JavaScript代码
- null 空
### 2.4 数据类型的转换
#### 隐式转换
JS是无类型(Notype)语言,不需要制定变量数据类型，隐式转换
	if(1){console.log("true")}
- 数字类型：字符串环境下可以隐式转换为“数字”，布尔环境中可以转换为true或false(0)
- 非空字符串: 数字环境下转换为字符串中的数字(“123” -\> 123; “abc” -\> NaN )，布尔环境下转换为true
- 空字符串: 转换为0，转换为false
- 字符串”true” 转换为1，转换为true
- 字符串“flase”　转换为0，转换为false
- null 字符串环境下转换为”null”,数字转换为0，布尔转换为false
- NaN: 字符串转换为”NaN”, 布尔转换为false
- undefined: 字符串转换为”undefined”,数字转换为NaN, 布尔转换为false
- true or false: 字符串转换为”true” or “false”, 数字转换为1或者0

#### 显式转换
1. 转换成字符串
		var arr = ['javascript','VBScript','Script'];
		document.write{arr.toString()};
`toString`方法，除了数组以外，还有Date都想，Error对象，Number对象，Function函数等，都可以转换
2. 基本数据类型转换
	- 数字型转换为字符串，可以与一个空字符串相连
		var s = 123 + “”;
	- 字符串转换为数字，将其减0
		var s = "123" - 0;
	- 字符串或数字转换为布尔，可以将其连续使用两次`!`运算符
		var i = “true”;
		console.log(!!i);

### 2.5 常量
- 整数常量
- 浮点常量
- 字符串常量
- 布尔常量
- 数组常量
- 转义字符
### 2.6 变量
变量可称为标识符(Identifier)。

#### 命名
ASCII字符或`_`, 不能是数字，大小写敏感
要能看出作用
驼峰命名
不能写保留字

#### 类型
Notype
#### 定义变量
#### 定义的注意事项
1. 可重复定义变量
2. 变量必须先定义后使用
3. 给未定义的变量赋值
4. 引用未赋值的变量

#### 变量的值
- Number
- Logical 布尔值，也叫逻辑值
- String
- Null
- Undefined
				  　　　
#### 有效范围
- 全局
- 局部 （函数体内）
#### 使用的注意事项
1. 变量优先级
2. 函数内定义全局变量
	不使用var 直接赋值 `x = "abc"`
3. 嵌套函数体中的变量的有效范围
	函数可以嵌套，变量都可以在该函数体内以及嵌套的函数体内起作用，但是不能在父级以及父级以上内起作用。

### 2.7 保留字
[url][1]

## 第三章 表达式和运算符
#### 表达式
Expression就是一个语句，可以是常量或变量，也可以是由常量和两边组成的语句
- 常量表达式
- 变量表达式
- 复合表达式
#### 操作数
Operant是进行运算的常量或变量
#### 运算符介绍
- 一元运算符
- 二元运算符
- 三元运算符 `?:`
- 算数运算符
- 比较运算符
- 字符串运算符
- 赋值运算符
- 位运运算符
- 逻辑运算符
- 特殊运算符　　　　　　　　　

### 3.4 算数运算符
- 减法
- 减法
- 模
- 负号
- 正号
- 递增
- 递减
- 关系
- 等同
- 不等
- 不等同
- 小于
- 大于
- 大于或等于
- 小于或等于
- in运算符 判断字符串是否属于数组或对象
- instanceof运算符 判断对象与对象实例之间关系的运算符
- 字符串运算符 `+`
- 赋值运算符 `=`
- 逻辑运算符
	- 逻辑与
	- 逻辑或
	- 逻辑非
- 逐位运算符
	- 逐位与 `&`
	- 逐位或 `|`
	- 逐位异或 `^`
	- 逐位非 `~`
	- 左移运算符 `<<`
	- 带符号的右移运算符 `>>`
	- 用0补足的右移运算符 `>>>`

- 其他运算符
	- 条件运算符
	- new运算符
	- void运算符 (void舍弃了结果)
	- typeof运算符
	- 对象属性存取运算符 `.`
	- 数组元素存取运算符 `[]`
	- delete运算符
		- 内部核心属性和客户端属性不能删除
		- var定义的变量不能删除
		- 删除对象不存在返回true
		- 删除为定义的变量返回true
	- 逗号运算符
	- 函数调用运算符 `()`
	- this运算符 不需要属性，代表当前对象`this[.属性]`
- 运算符的优先级

[url][2]

[有关JavaScript的运算符][3]

## 第四章 语句

### 4.1 表达式语句
### 4.2 语句块
### 4.3 选择语句
- if
- if…else
- if…else if…else
- if…else if…
- if语句嵌套
- switch

### 4.4 循环语句
- while
- do…while
- for
- for…in

### 4.5 跳转语句
- break
- continue

### 4.6 异常处理语句
- throw语句
- try…catch…finally语句
- 综合应用
### 4.7 其他语句
- 标签语句
- var语句
- function语句
- return语句
- with语句
- 空语句
- comment语句 （注释语句)
## 第五章 函数
### 5.1 函数介绍
#### 为了重复使用而独立的代码块，独立主程序而存在。
#### 定义函数 `function`
	function 函数名 (参数1， 参数2...){
	    <语句块>
	    return 返回值
	}

#### 函数定义的注意事项
- 函数名通俗易懂
- 一个函数只实现一个功能
- 函数最好放在JS代码开头
- 合理安排函数的次序
- JS是一种无类型的语言，不会检测传递的参数是否符合要求
- 不会检测返回的值师傅符合函数的类型
#### 函数的嵌套定义
- 只能出现在函数中，不能出现在选择语句或循环语句中
- 嵌套定义的函数只能在嵌套的函数中调用，不能在其他函数中调用。
#### 使用Function()构造函数
	var x = new Function(“参数1”, “参数2”, “…”, “函数体”);　　

#### Function()构造函数与function语句的区别
-  Function()构造函数可以动态定义和编译函数, function语句只能预编译。如果函数经常使用，应该避免使用Function()
- Function()构造函数定义函数时可以将函数定义写成表达式
- Function()可以在一个表达式中定义函数，而function语句不能

#### 在表达式中定义函数
	var 函数名 = function(参数1，参数2，...）{函数体}
ex:
	var mySum = function(x, y){return x+y};

其实可以在function后写函数名
	var mySum = function 临时函数名(x, y){return x+y};
这种方法一般用在函数自身的递归上
	var myFun = function ftemp(x){if(x<1) return 1; else document.write(x); return ftemp(x-1);}

#### 三种定义函数方法的比较
- function语句可以在任何一个JS版本中使用，Function()构造函数只能在JS1.1或更高版本使用，表达式中定义只能在1.2或更高使用
- 只有function语句定义函数的方法不能在表达式中使用，其他两种都可以直接在表达式中定义函数
- 除了function语句定义函数的方法之外，其他两种使用起来都比较灵活，但是通常只使用一次，无需命名的函数中
- 除了function语句之外，如果其他两种方法的函数体中的语句比较多的话，看起来很臃肿
- 使用function语句定义函数和在表达式中定义函数的两种方法中，JS只会对函数解析和编译一次，而使用Function()构造函数定义的函数，每次调用函数，都会解析和编译一次。

### 调用函数
#### 直接调用无返回值的函数
- 直接调用 使用函数调用运算符(`()`);
- 事件处理 
#### 将函数的返回值赋给变量
#### 将函数的返回值赋给对象属性或数组元素
#### 综合应用
### 5.3 函数的参数
#### 传递参数的注意事项
以下是一些可能出现的情况:
- 传递的参数类型与函数所需要的数据类型不符
- 传递的参数个数与函数定义的参数个数不匹配

#### 传递函数参数的个数和值
- 判断传递的函数参数的个数
	`arguments.length`
- 获得实际传递参数的值
	`arguments`不仅可以判断个数，还可以获得参数的值
- Arguments对象的应用

### 5.4 函数的递归调用
#### 使用函数名的递归调用
`return 函数名(表达式)`
#### 使用callee属性的递归调用
`arguments.callee()`

### 函数的属性与方法
#### length属性:函数定义参数个数
获得函数定义的参数个数
函数的length属性可以在函数体之外使用
#### prototype属性: 引用原型对象
	对象.prototype.属性 = "参数";
#### caller属性，判断函数调用情况
`caller`查看函数在那里被调用，如果是顶层caller返回值为null,否则返回调用该函数当前函数的Function对象的引用:
#### 自定义属性
函数可以拥有自己的属性，和对象有点像。函数的属性与全局变量也有点像，但是函数的属性只属于函数本身，而不属于其他对象:
#### call()方法
	函数名.call(对象名，参数1， 参数2， ....)
`myFun.call(myObject, 123,4, 56);`
这句与一下代码实现的结果相同:
	myObject.temp = myFun;
	myObject.temp(123,4,56);
	delete myObject.temp;
#### apply()方法
	函数名.apply(对象名, 数组);
apply()要传入一个数组
apply()的另一个用法是放在其他函数内部

### 5.6 系统函数
#### 编码函数 escape()
字符串处理，将非文字，数字转换成相应的ASCII

#### 解码函数 unescape()

#### 求值函数eval()
主要作用是将字符串指定为对象

#### 数值判断函数isNaN()
判断是否为数字类型
#### 整数转换函数parseInt()
	parseInt(数据,底数)
底数是指出数值类型，如八进制就是8，十六进制就是16，二进制就是2，可以省略。

#### 浮点转换函数parseFloat()

## 第六章 对象
### 6.1 介绍
- 概念
- 属性
	`对象名.属性`
- 方法
	`对象名.方法名(参数列表)`

### 6.2 创建对象
#### 使用构造函数创建内置对象
JS中可以使用new运算符调用构造函数创建对象。
`var myObject = new Object()`

#### 直接创建自定义对象
`var 对象名 = {属性名1:属性值1, 属性名2:属性值2, 属性名3:属性值3,...}`

#### 使用自定义构造函数创建对象

### 6.3 对象的属性
#### 设置对象的属性
- 创建对象的同时设置对象的属性
- 创建对象的构造函数时设置对象的属性
- 先创建空对象，再设置对象属性
	设置对象的属性时，不能使用var
	由于对象也是一种数据类型，所以对象的属性值也可以是对象
#### 存取对象属性值
取值: `变量名 = 对象名.属性名`
赋值: `对象名.属性名=属性值`

#### 属性的枚举
JS可以通过`for...in`来枚举对象的所有属性
`for(var i in pen)`

#### 删除对象的属性
`delete`来删除对象的属性

### 6.4 构造函数
#### 创建简单的构造函数
#### 创建有默认值的构造函数
创建对象时，如果没有初始化某个属性，那么该属性的值会自动设置为undefined.

#### 创建有方法的构造函数
不知道为什么js检测不过，但是网页上可以执行.所以效果在 `6.4.3.html` 内

### 对象的原型与继承
#### 对象与类
JS没有正式“类”的概念，可以理解为构造函数就是类，使用构造函数创建对象，就是将类实例化。

#### 继承
#### 对象自己的方法和属性
#### 方法与属性的覆盖
#### 原型对象
1. 什么是原型对象
2. 原型对象的原理
3. 修改对象原型　　
`函数.prototype.属性 = "参数";`
`constructor`用于返回对象的构造函数
4. 存储对象属性
只有读取对象属性时，才回使用到原型对象，存储对象属性，是不需要使用原型对象的。

### 6.6 Object对象
#### 创建Object对象
	new Object();
	new Object(value);
如果没有制定value值，则Object不属于数组，也不属于布尔对象。

#### constructor属性: 返回对象的构造函数
`typeof`运算符判断操作数的类型，无法判断对象的类型。
`constructor`属性可以判断一个对象的类型，其引用的是对象的构造函数

实际使用中很少查看对象类型，而是通过if来判断是否属于某种类型

#### toString()方法，对象的字符串表示
`object.toString()`

#### toLocaleString()方法，返回对象的本地字符串表示
和`toString()`类似，但是格式转化成适合本地的表示法

#### propertyIsEnumerable()方法
判断属性是否方法所自有的
`object.propertyIsEnumerable(properyname)`
properyname为对象的属性名
- properyname必须是object的属性
- properyname不能是继承过来的属性
- properyname是可以通过`for...in`语句循环所枚举得到的属性
满足以上三点时候才回返回`true`

#### hasOwnProperty()方法:判断属性是否非继承的
与`propertyIsEnumerable`方法类似，判断一个属性是否非继承的属性。

`object.hasOwnProperty(properyname)`

- properyname必须是object的属性
- properyname不能使继承过来的

#### isPrototypeOf()方法：判断是否原型对象
判断一个对象是否另一个对象的原型对象
`object.prototype.isPrototypeOf(object1)`

#### valueOf()方法，返回对象的原始值
返回与对象相关的原始值，如果原始值不存在，则返回对象本身
`object.valueOf()`

### 6.7 其他系统对象

#### Arguments对象
`callee`属性: 对当前正在执行的函数的引用
`length`属性: 传递给函数的实际参数的个数

#### 布尔对象
1. 创建布尔对象和转换布尔值
	调用Boolean构造函数来创建一个布尔对象，将参数转换成一个布尔值
	`new Boolean(value)`
	只是将弃参数转换成一个布尔值
	`Boolean(value)`

2. toString(),将布尔对象转换成字符串
3. value()，返回布尔对象的布尔值

#### 日期对象
1. 创建日期对象
	`new Date();`
	`new Date(str);`
	\`new Date(year,month, day, hours, minutes, seconds, milliseconds);
	\`\`new Date(milliseconds);
	\`- str: 表示日期的字符串
	- year: 代表年份的数据
	- month: 代表月份的数据
	- day: 代表日期的数据
	- hours: 代表小时的数据
	- minutes: 代表分钟的数据
	- seconds: 代表秒钟的数据
	- milliseconds: 代表毫秒的数据
	- milliseconds1: 代表距离1970年1月1日0点时的毫秒数　

2. 将日期对象转换为字符串
	- date.toString(); 
		转换为本地时间
	- date.toLocaleString();
		转换为本地时间，将日期转化为地方日期格式
	- date.toUTCString();
		采用世界时间
	- date.toGMTString();
		采用GMT时间，目前反对使用，尽量使用UTC

	> UTC是协调世界时(Coordinated Universal Time)的简称,GMT是格林尼治时(Greenwich Mean Time)的简称

3. 将日期对象中的日期和时间转换为字符串
	将对象时间的日期或时间转换为字符串
	- date.toDateString()
		采用本地时间
	- date.toLocaleDateString();
		采用本地时间，显示为地方日期的格式
	- date.toTimeString();
		将时间部分转换，采用本地时间
	- date.toLocaleTimeString();
		显示为地方日期的格式

4. 日期对象中的日期
	- date.getYear();
		显示年份，不建议使用
	- date.getFullYear();
		四位数完整显示年份
	- date.getMonth();
		显示月份，0代表1月，11代表12月
	- date.getDate();
		显示一个月中的某一天
	- date.getDay();
		返回值为一周中的哪一天，周日为0

5. 日期对象中的时间
	- date.getHours()
		返回小时
	- date.getMinutes()
		返回分钟
	- date.getSeconds()
		返回秒钟
	- date.getMilliseconds()
		返回毫秒　
	- date.getTime()
		返回与1970年1月1日0时0分0秒间隔的毫秒数
	- date.getTimezoneOffset()
		返回日期对象中本地时间与UTC之间的时差数，单位为秒

		以上都为本地时间，如果是UTC时间，可以使用以下代码
	`date.getUTCHours();`
	`date.getUTCMinutes();`
	`date.getUTCSeconds();`
	`date.getUTCMilliseconds();`

6. 设置日期对象的日期
	- date.setYear(year);
		设置年份，该方法反对使用。
	- date.setFullYear(year, month, day)
		设置日期的年，月，日
	- date.setMonth(month, day)
		设置日期的月，日
	- date.setDate(day);
		设置日期的某一天，day为一月中的某一天

	如果要采用UTC时间
		date.setUTCFullYear(year, month, day);
		date.setUTCMonth(month, day);
		date.setUTCDate(day);

7. 设置日期对象的时间
	- date.setHours(hours, minutes, seconds, milliseconds)
	- date.setMinutes(minutes,seconds, milliseconds)
	- date.setSeconds(seconds, milliseconds)
	- date.setMilliseconds(milliseconds)
	如需采用UTC时间
		date.setUTCHours(hours, minutes, seconds)

8. 与毫秒相关的方法
	- date.setTime(milliseconds)
	- date.valueOf()
	- Date.Parse(str)
	- Date.UTC(year, month, day, hours, minutes, seconds, milliseconds)

#### 数字对象
1. 创建数字对象
	`new Number(value)`
	`Number(value)`
	如果省略new运算符，则把Number()当作一个转换函数来使用

2. 数字对象的属性
	- Number.Max\_VALUE 最大值:1.79e+308(大概)
	- Number.MIN\_VALUE 最小值:5e-324 (大概)
	- Number.NaN 
	- Number.POSITIVE\_INFINITY 正无穷大
	- Number.NEGATIVE\_INFINITY 负无穷大

3. 将数字对象转换成字符串
	- number.toString(radix)
		radix是进制，假设2，则先将数字转换成二进制
	- number.toLocaleString();
		转换为本地格式字符串
	- number.toExponential(digits)
		转换为科学计数法格式，digits取值0\~20
	- number.toFixed(digits)
		正常计数格式，digits取值为小数点后几位
	- number.toPrecision(precision)
		返回字符串中的有效位数，如小于整数部分，则采用科学计数

#### 数学对象
为数学计算提供常量和计算函数
1. 数学对象的属性
	- Math.E 代表自然对数的底数(e), 值近似于2.718
	- Math.LN10 代表10的自然对数（loge10），近似于2.3026
	- Math.LN2 代表2的自然对数(loge2), 近似于0.6931
	- Math.LOG10E 代表10为底e的对数(log10e),近似于0.4343
	- Math.LOG2E 代表2为底e的对数(log2e), 近似于1.4427
	- Math.PI 代表π, 近似于3.14159
	- Math.SQRT1\_2 代表2的平方根的倒数，近似于0.7071
	- Math.SQRT2 代表2的平方根，近似于1.414

2. 数学对象的方法
	没有构造函数，不能使用new，都是静态方法，直接使用
	- Math.abs(number) 返回number的绝对值　
	- Math.acos(number) 返回number的反余弦值，取值-1.0\~1.0
	- Math.asin(number) 返回反正弦值，取值-1.0\~1.0
	- Math.atan(number) 返回反正切值
	- Math.atan2(y,x) 返回X轴到座标x,y的角度
	- Math.ceil(number) 返回大于或等于number的最小整数
	- Math.cos(number) 返回余弦值
	- Math.exp(number) 返回e的number次幂
	- Math.floor(number) 返回小于或等于number的最大整数
	- Math.log(number) 返number的自然对数
	- Math.max(number1, number2, number3…) 返回列表中的最大值
	- Math.min(number1, number2, number3…) 返回列表中的最小值
	- Math.pow(x, y) 返回x的y次幂
	- Math.random()返回一个0.0\~1.0的随机数
	- Math.round(number) 返回number最近的整数
	- Math.sin(number) 返回正弦值
	- Math.sqrt(number) 返回平方根，必须大于或等于0，否则返回NaN
	- Math.tan(number) 返回number的正切值

#### 字符串对象
1. 创建字符串对象
		new String(str);
		String(str);

2. 字符串的长度
3. 查找字符串
	- string.charAt(index)
		返回字符串中的第index个字符，0\~string.length-1
	- string.charCodeAt(index)
		返回字符串中的index个字符的Unicode代码
	- string.indexOf(substring, startindex)
		返回子字符串substring在字符串中的第一次出现的位置。其中substring参数为要在字符串中查找的子字符串，startindex为可选参数，该参数用于指定查找字符串的位置，取值0\~string.length-1。如果没有指定startindex参数，则从字符串的第一个字符开始查找，相当于startindex值为0.如果字符串中包含子字符，则返回子字符串第一次出现在字符串中的位置，否则返回-1。
	- string.lastIndexOf(substring, startindex)
		和string.indexOf()相当，只是从最后开始查找
	- string.match(regexp)
		找到一个或多个正则表达式的匹配。
	- string.replace(regexp, replacetext)
		替换一个正则表达式匹配的字串
	- string.search(regexp)
		查找子字符在字符串中的个数
	- string.slice(startindex, endindex)
		返回一个子字符串，参数为开始位置和结束位置
	- string.substr(startindex, length)
		返回一个字符串
	- string.substring(startindex, endindex)
		返回一个字符串

	以上方法都不会改变原字符的内容，只会返回一个新字符串

	indexOf()与search()都可以返回子字符串在字符串中第一次出现的位置，但是indexOf()只是用于子字符串，search()还可以用于正则表达式

	slice(startindex, endindex)和substring(startindex,endindex)都返回从startindex到endindex的字符串，包含startindex, 不包含endindex

	slice()比substring()方法灵活，可以使用负数，substring()不可以使用负数

4. 转换大小写
	- string.toLocaleLowerCase()
	- string.toLowerCase()
	- string.toLocaleUpperCase()
	- string.toUpperCase()
5. 创建新的字符串
	`String.fromCharCode(value1, value2,…)`
	`string.concat(value1, value2…)`

	第一个方法是静态方法，由构造函数String()创建，而不是由字符串或字符串对象创建。value参数列表可以是0个或多个整数，这些整数代表了字符串中的字符Unicode编码

	第二个方法可以用来链接字符串，其中参数列表中为1个或多个字符串，该方法与使用`+`运算符类似

6.  其他方法
	`string.localeCompare(str)`
	用本地特定的顺序来比较两个字符串。
	\`string.split(regexp, limit)
	`将字符串分割为字符串数组, regexp参数用来指定用什么方式分割字符串,该参数可以是正则表达式，可以是字符串。limit参数可选，用于指定返回的数组的最大长度。`
	\``string.toString()`
	返回字符串对象中的字符串值
	`string.valueOf()`
	返回字符串对象中的字符串值

7. 非标准化方法
	- string.anchor(str): 相当于返回`<a name=str>string</a>`
	- string.big(): 相当于返回`<big>string</big>`
	- string.blink(): 相当于返回`<blink>string</blink>`
	- string.bold(): 相当于返回`<b>string</b>`
	- string.fixed(): `<tt>string</tt>`
	- string.fontcolor(str): `<font color=str>string</font>`
	- string.fongsize(str): `<font size=str>string</font>`
	- string.italics(): `<i>string</i>`
	- string.link(url): `<a href=str>string</a>`
	- string.small(): `<small>string</small>`
	- string.strike():`<strike>string</strike>`
	- string.sub(): `<sub>string</sub>`
	- string.sup(): `<sup>string</sup>`

#### 函数对象
JS函数既是一种基本的数据类型也是一个对象，因此函数拥有属于自己的属性与方法。
函数对象的属性:
- function.arguments 为当前执行的函数返回一个Arguments对象
- function.caller 调用当前函数的函数
- function.length 函数定义的参数个数
- function.prototype 引用原型对象
函数对象的方法:
- function.apply(name, args) 将函数作为一个对象的方法调用。name为对象名，args为参数数组
- function.call(name,value1,value2…) 将函数作为一个对象的方法调用哦哦那个。其中name为对象名，value等为参数
- function.toString() 返回函数的字符串表示

#### Error对象
JS代码出错时，JS的解释器就会抛出一个Error对象的实例
1. 接收抛出的Error对象实例 catch(ex){}
2. 创建Error对象
	- new Error()
	- new Error(message)
3. Error对象的属性
	- error.name 该属性为错误类型
	- error.message 该属性为错误信息
4. Error对象的方法
	`error.toString()`　

#### 其他对象
本章介绍了:
- Object对象
- Arguments对象
- 布尔对象
- 日期对象
- 数字对象
- 数学对象
- 字符串对象
- 函数对象
- Error对象

其他还有很多内置对象:
- 数组对象
- RegExp对象
- Window对象
- Navigator对象
- Screen对象
- Location对象
- History对象
- Document对象
- Form对象

## 第七章 数组
### 7.1 数组介绍
数组是一些数据集合，数组的数据都又一个编号，通过编号可以引用这些数据

#### 数组的概念
JS是无类型语言，所以数组内的每个元素类型可以是不相同的。数组中的元素类型可以是数字型，字符串型和布尔型，甚至也可以是一个数组

#### 数组元素
数组是数组元素(Element)的集合

#### 多维数组
JS不支持多维数组，但是JS中数组元素可以是任何类型的数据，包括数组
`arr[1][2]`

### 7.2 定义数组
#### 构造函数
	new Array()
	new Array(size)
	new Array(element1, element2...)

size: 数组元素的个数
element1, element2… 数组元素值的列表

#### 定义一个空数组

#### 通过指定数组长度定义数组

#### 通过指定数组元素定义数组

#### 直接定义数组

### 7.3 数组元素
#### 存取数组的元素
#### 添加数组元素
数组元素的个数是由数组的最大下标所决定的

#### 删除数组元素
数组元素一旦被定义不能被删除，只能删除其值

#### 数组元素的个数

	array.length

### 7.4 数组的方法
#### toString()方法： 将数组转换为字符串
#### join()方法: 将数组元素链接成字符串
	join();
	join(str);

#### push()方法: 在数组尾部添加元素
	push(value, ...)
返回值是添加元素后的长度

#### concat()方法 添加元素并生成新数组
concat()也是在数组后添加元素，但是会生成一个新数组
	concat(value1...)

#### unshift()方法: 在数组头部添加元素
	unshift(value...)

#### pop()方法 删除并返回数组的最后一个元素
#### shift()方法 删除并返回数组的第一个元素
#### splice()方法 删除，替换或插入数组元素
	splice(start, count, value,...)
start: 要删除，替换或插入数组元素的开始位置
count: 要删除，替换的数组元素的个数,可选
value: 要插入数组的值，
splice()返回值是一个数组

#### slice() 返回数组种的一部分
	slice(start, end)
slice()方法返回值也为一个数组，为原数组的一部分

#### reverse()方法: 颠倒数组中的元素
将数组元素颠倒, 会改变原数组的顺序

#### sort()方法: 将数组元素排序
	sort()
	sort(order)
会影响原数组的数据

#### toLocaleString()方法 转换为当地字符串
toString() 和 toLocaleString()

# 第二篇 实用篇
## 第八章JavaScript对象层次与事件处理
### 8.1 JavaScript的对象层次
JS中对象很多，这些并不是独立存在的，而是有层次结构的，对象可以依据层次来进行调用
#### 1. JS对象模型
对象模型是用来描述对象逻辑结构及其标准操作方法的一个接口（API）。
- JS语言核心部分:主要包括JS的数据类型，运算符和表达式
- 与数据类型相关的核心对象，主要包括一些与数据类型相关的内置对象，如布尔对象，日期对象，数学对象，数字对象和字符串对象
- 与浏览相关的对象: 主要包括window对象，Navigator对象和Location对象等
- 与文档相关的对象: 主要包括Document对象，Form对象和Image对象
#### 2. 客户端对象层次介绍
js中window对象表示一个浏览器窗口。
JS中window对象层级高于Document对象
	window.document.write("some thing")

如果要引用一些表单
	window.document.forms[1]
表单中还有一些表单元素,用到elements数组
`window.document.forms[0].elements[0]`
表单元素中也会存在一些属性,例如value属性
	window.docuemnt.forms[0].elements[0].value

#### 3. 浏览器对象模型
简称BOM(Brower Object Model),该对象模型提供了独立语内容的，与浏览器窗口进行交互的对象。

[浏览器对象模型URL][4]

Window对象是所有对象的顶级对象，所有对象都是该对象的子对象

Document对象又称为文档对象模型DOM(Document Object Model)

#### 4. 对象的引用
### 8.2 事件驱动与事件处理
#### 事件与事件驱动
通过事件来调用程序的方式称为事件驱动
#### 事件与处理代码关联
只要在对象的代码中添加一个属性即可 ex`onclick="clickButton`

#### 调用函数的事件
静态脚本不能够响应用户的事件，动态脚本定了事件处理程序的脚本，某个事件发生时，浏览器会自动调用事先定义好的事件处理程序。

#### 调用代码的事件
有的时候可以将响应的代码直接写在事件中
`<input type=“button” onclick=“alert(“您单击了按钮”)>`
#### 设置对象事件的方法
设置对象事件的方法有两种，分别为直接在HTML元素的属性中设置和在JS代码中设置
1. HTML元素中设置对象事件
	`<input type="button" onclick="btClick()">`
2. JS代码中设置对象事件　
		<script type="text/javascript">
		    function btClick () {
		      alert("你点击了一个按钮");
		    }
		    window.document.forms[0].elements[0].onclick = btClick;
		</script>
	JS代码中设置对象事件，不需要输入函数名后的括号，因为`()`是调用运算符，这回调用了函数中的代码
	还可以直接将function语句赋值给元素属性

#### 显式调用事件处理程序
事件并不一定是用户激发，也可以代码直接激发，达到显式调用事件处理程序的目的。
#### 事件处理程序的返回值
#### 事件与this运算符
this运算符代表的是函数内的对象本身
### 8.3 常用的事件
不同的对象产生的事件可能也有所不同

#### 浏览器与事件
事件是浏览器产生，而不是JS本身产生，所以不同浏览器，事件也有可能不同。

[HTML5中的事件][5]

#### 鼠标移动事件
鼠标移动事件包括鼠标一定(Mousemove), 鼠标离开对象(Mouseout), 鼠标移动到对象上(Mouseover)三种

#### 鼠标单击事件
- click
- dblclick
- mousedown
- mouseup
`mousedown`和`mouseup`右键也可以触发

#### 加载与卸载事件
- load
- unload
#### 得到焦点与失去焦点事件
- focus 得到焦点
- blur 失去焦点
HTML4中规定A, AREA, LABEL, INPUT, SELECT, TEXTAREA, BUTTON元素拥有onfocus属性和onblur属性

#### 键盘事件
- keydown 按下键盘
- keyup 释放键盘
- keypress 按下并释放键盘

#### 提交与重置事件
- submit
- reset
#### 选择与改变事件
- select 文本框中的文字被选择产生的事件
- change 文本框或下拉框中激活

## 第九章 窗口与框架
### 9.1 Window对象
window对象是一个全局对象，是所有对象的顶级对象。
#### Window对象介绍
Window对象可以控制窗口，可以控制窗口内容，可以控制框架之间的关系
#### Window对象的使用方法
	window.属性名
	window.方法名(参数列表)
Window对象，Document, Location, History, Screen对象等都属于客户端对象，这些对象不需要实例化，既不需要new运算符来创建的对象。只需要引用就可以了。
	window.alert("String");
	window.document.write("String");
现实使用重，JS允许字符串来给窗口命名。也可以使用关键字来代替某些特定窗口: `self`代替当前窗口， `parent`代替父级窗口
	parent.属性名

#### Window对象的属性
#### Window对象的方法

[属性列表][6]

#### Window对象的事件
- blur: 当窗口失去焦点时激发
- error: 执行JS代码产生错误时
- focus 窗口得到焦点时
- load 窗口文档完全加载时
- resize 调整窗口大小时
- unload 卸载网页时激发

### 9.2 Window对象事件
包括:
- blur
- error
- focus
- load
- move
- resize
- unload
#### 装载文档
load可以用于BODY或IMG元素中，BODY中只有加载完毕会激发

浏览器不同，加载顺序不一样

#### 卸载文档
unload
#### 得到焦点与失去焦点
- blur
- focus

#### 调整窗口大小
resize
#### 处理错误
error
可以传递以下三个参数给错误处理函数
- 详细的错误信息
- 产生错误网页的URL
- 产生错误的行数
**这三个返回值是按顺序的**　　

### 9.3 对话框
三种方式创造对话框
- 警告框
- 确认框
- 提示框
#### 警告框
	window.alert(message)
alert()中支持正则表达式，不支持HTMl代码

#### 确认框
	window.confirm(message)
confirm()方法还可以产生一个布尔类的返回值

#### 提示框
	window.prompt(message, defaulfText);
prompt()有可以输入文字的输入框
prompt()可以返回字符串类型的返回值

### 9.4 状态栏
window中的`defaultStatus`属性和`status`属性可以控制状态栏中的信息

#### 状态栏介绍
通常展示的信息有两种:
- 加载的文件和进度
- 超链接的URL
		 　　　
#### 默认状态栏信息
defaultStatus
#### 状态栏瞬间信息
hover的时候的URL信息就是瞬间信息，使用status属性

### 窗口操作

#### 新开窗口
	open()
1. open()方法的语法
		window.open(url, windowName, features, replace)
	- url 可选，空字符或null时，会新开空白窗口
	- windowName: 可选，新开窗口的名称
	- features: 字符串，描述新窗口的特征，可选
	- replace: 布尔值，只有windowName参数值为一个已经存在的窗口名称时才起作用，true则用url参数值来替代该窗口浏览历史的当前项，false,则该窗口浏览历史中创建一个新项

	**建议完整输入`window.open()`，防止和document的open()方法混淆**

2. 新开一个空白窗口
		window.open()
3. 新开一个有文档的窗口
	url不为空就可以
4. 新开一个命名窗口
	指定windowName()参数值
5. 设置新开窗口的特征
		feature = value
6. 设置浏览历史

#### 窗口名字　
#### 关闭窗口
	window.close()
1. 关闭自身窗口
2. 关闭JS代码创建的自身窗口
3. 关闭其他窗口
4. 判断窗口是否关闭
#### 窗口的引用
1. 新窗口中输入文字
2. 操作新打开窗口中的数据
3. 父级窗口的引用
		window.opener
**2， 3 调试不成功**　

#### 窗口聚焦
- 获得焦点
	window.focus()
	window对象名.focus()

- 失去焦点
	window.blur()
	window对象名.focus()

#### 滚动文档
- window.scroll(x, y)
	该方法可以将窗口中显示的文档滚动到指定的绝对位置
- window.scrollTo(x, y)
	建议使用scrollTo(),由1.2版本规定
- window.scrollBy(x, y)
	该方法可以将文档滚动到指定的相对位置上

#### 移动窗口
- window.moveTo(x, y)
- window.moveBy(x, y)

#### 调整窗口大小
- window.resizeTo(x, y)
- window.resizeBy(x, y)

### 9.6 超时与事件间隔
#### 延迟执行代码
使用`setTimeout()`方法可以延迟代码的执行时间
	window.setTimeout(code, delay)
- code:延迟执行的JS代码
- delay: 延迟事件，单位毫秒
#### 周期性执行代码
要反复执行代码，要使用`setInterval()`方法

	window.setInterval(code, interval);
	window.setInterval(function, interval, parameters);
- code: 要周期执行的代码
- interval: 执行代码的周期事件，单位毫秒
- function: 周期执行的函数
- parameters: function函数的参数列表
#### 停止周期性执行代码
	window.clearInterval(id)
clearInterval()根据该返回值`id`来决定停止哪个setInterval()方法

#### 取消延迟执行
	window.clearTimeout(id)

### 9.7 框架操作

JS中并不存在Frame对象，所谓的Frame对象只是Window对象的一个实例。该对象拥有Window对象的所有方法和属性及事件。

#### 框架介绍

#### 框架的数量
Window对象有一个frames属性，该属性是个数组，数组中的元素代表框架中包含的窗口。

#### 父窗口与子窗口
#### 窗口之间的关系
1. 框架关系中常用到的属性
	- self 代表当前窗口
	- parent 代表当前窗口的父级窗口
	- top 代表当前窗口的顶级窗口
2. 一个复杂的框架

3. 框架自身的引用
	以下三句的作用相同
		self.document.write()
		window.document.write()
		document.write()
4. 父窗口对子窗口的引用　
5. 子窗口对父窗口及其他窗口的引用
6. 对顶级窗口的引用

### 9.8 Window对象的子对象
包括Document, History, Location, Math, Navigator对象和Screen对象等
#### Document对象
HTML文档
#### History对象
窗口的浏览历史
#### Location对象　　
当前文档的URL
#### Math对象

#### Navigator对象
#### Screen对象
显示器信息

### 9.9 IE浏览器中的方法和属性
#### IE浏览器中的方法
1. navigate(url)
2. print()
#### IE浏览器中的属性
1. event
2. clientInformation
### 9.10 Netscape浏览器中的方法和属性
#### 方法
#### 属性
#### 事件　

## 第十章 屏幕对象与浏览器对象
### 10.1 屏幕对象
#### 屏幕对象的属性
Screen对象是一个JS自动创建的对象，描述客户端显示器的信息。是一个全局对象，只读。
- height
- width
- colorDepth
- availHeight
- availWidth
#### 客户端显示器屏幕分辨率
#### 客户端显示器屏幕的有效宽度和高度
#### 颜色深度
#### 综合应用
### 10.2 浏览器对象
Navigator对象也叫浏览器对象，包含了浏览器的整体信息。

#### 浏览器对象属性
Navigator对象的属性
- appName 浏览器名称
- appVersion 浏览器版本号
- userAgent 浏览器用于HTTP请求的用户代理头的值
- appCodeName 浏览器的代码名
- platform 运行浏览器的操作系统或硬件平台
IE支持的Navigator对象属性
- cookieEnabled 检查浏览器是否支持cookie
- systemLanguage 系统哦那个默认语言
- userLanguage 返回用户使用的语言
Netscape支持的Navigator对象属性
- cookieEnabled 
- language 返回浏览器中使用的默认语言
- mimeType 返回一个数组，数组中的元素代表浏览器支持的MIME类型
- plugins 返回一个数组，数组的元素代表浏览器已经安装的插件
#### 浏览器对象的子对象
在Netscape中，NuneType和Plugin是Navigator对象的子对象。
1. MimeType对象
	- description 返回MimeType对象的描述
	- enabledPlugin 该属性返回一个数组，数组中的元素为Plugin对象。该数组用于说明有那些插件支持该数据格式，如果没有插件支持则返回null
	- suffixes 该属性返回MIME类型文件的扩展名
	- type 该属性返回MIME类型的名称，该名称是唯一可以哟哦拿过来描述当前MIME类型的字符串
2. Plugin对象
	- description 插件的说明
	- filename 插件程序的文件名
	- length 插件所支持的MIME数据格式的个数
	- name　插件的名称
#### MimeType对象与Plugin对象互查
MimeType对象的enbledPlugin属性返回的就是Plugin对象，而Plugin数组中的元素就是MimeType对象

#### 浏览器对象的方法
只有一个判断是否启用了JAVA的方法
	navigator.javaEnabled

除此之外，Netscape浏览器还支持一个启用新安装插件的方法:
	navigator.plugins.refresh(load)
load参数为布尔值，

## 第十一章 历史对象和地址对象

### 11.1 历史对象
#### 历史对象的属性
History对象的属性只有一个，用于查看客户端浏览器窗口的历史列表中访问过的网页个数:
	history.length

#### 历史对象的方法
- back()
- forward()
- go() 该方法可以直接跳转到某一个已经访问过的URL。包含两个参数，一种参数是要访问的URL在历史列表中的相对位置，另一种参数为要访问的URL的字串
#### 前进和后退
#### 跳转
	history.go()可以让当前页刷新一次
### 11.2 地址对象
#### URL介绍
URL(Uniform Resource Locators) “统一资源定位器”
URL可以由协议，域名或IP，端口，虚拟路径，文件名，参数以及锚7个部分组成

1. 协议与域名
	常用协议
	- HTTP 超文本协议
			http://
	- FTP 文件传输协议
			ftp://
	- mailto 发送电子邮件
			mailto:
	- new 新闻组
			news://
	- gopher 信息查访
			gopher://
	- file 本地文件
			file://
	- JavaScript JS程序代码
			javascript:alert(“”);
	- view-source 查看网页源代码，该协议IE浏览器和Opera浏览器已经不再支持，但是Netscape浏览器和Firefox还支持　
			view-source:file://
2. 端口
	HTTP协议默认端口为80, FTP为21
3. 文件名
4. 虚拟目录
5. 锚
6. 参数
	参数名和文件名是用`?`号隔开，多个参数之间用`&`隔开，锚放在参数后

#### 地址对象的属性
- protocol 返回当前文档URL的协议部分，包括其他的冒号
- hostName 返回当前文档URL的域名部分
- port 返回当前文档URL的端口部分
- host 返回当前文档的URL的域名部分和端口部分
- pathname 返回当前文档URL的虚拟目录和文件名部分
- hash 返回当前文档URL的锚部分
- search 返回当前文档URL的参数部分，包括”?”
- href 返回当前文档的完整的URL
#### 地址对象属性的应用：加载新网页
#### 地址对象属性的应用: 获取参数
#### 地址对象的方法
- reload() 刷新文档
- replace() 用一个新的URL来取代当前的URL

#### 地址对象方法的应用: 刷新文档
#### 地址对象方法的应用: 加载新文档

## 第十二章 文档对象
### 12.1 文档对象概述
#### 文档对象介绍
Document对象:
- Anchor对象
- Applet对象
- cookie对象
- Embed对象
- Form对象
- Image对象
- Link对象
- Location对象
- Plugin对象
#### 文档对象的属性
- alinkColor 用于设置或返回呗激活的超链接的颜色
- anchors 返回一个数组，数组中的元素为Anchor对象，用来代表当前文档中的锚
- applets 返回一个数组，元素为applet对象，代表当前文档中的java小程序
- bgColor 用于设置或返回当前文档的背景颜色
- cookie 读写Cookie
- domain 指定当前文档所属的Internet域,并且可以使处在同一个Internet域中的相互信任的Web服务器在网页之间交互时降低某项安全性的限制
- embeds 返回一个数组，元素代表一个由enbed元素插入到HTML文档中的数据。通常是插件或ActiveX控件
- fgColor 该属性用于设置或返回当前文档的文本默认的颜色
- forms 返回一个数组，数组中的元素为Form对象，代表当前文档中的表单
- images 返回一个数组，元素为Image对象，代表当前文档中的图像
- lastModified 返回当前文档的最后一次修改时间
- linkColor 设置或返回当前文档中未被访问过的超链接的颜色
- links 返回一个数组，数组中的元素为Link对象，代表当前文档中的超链接
- location 返回一个Location对象，与window对象中的location对象相同，反对使用
- plugins 与embeds属性相同，推荐使用embeds属性
- referrer 返回链接到当前文档的HTML文档的URL
- title 用来设置或返回当前文档的标题
- URL 该属性可以返回当前文档的URL
- vlinkColor 设置或返回当前文档中已经访问过的链接颜色

#### 文档对象的方法
- clear() 擦去文档的内容，不过该方法反对使用
- close() 关闭一个文档的输出流，并现实文档流中的内容
- open() 该方法可以打开一个新文档
- write() 在文档中添加数据
- writeln() 与write()相同，只是在之后添加了一个换行

#### 文档中对象的引用方法
- 每个form元素都会创建一个Form对象，可以通过`forms[]`数组中的元素访问这些Form对象
- a元素会在`links[]`数组中创建一个元素
- 每个命名锚都会在`anchors[]`数组中创建一个元素
- 每个img元素都会在`images[]`数组中创建一个元素
- 每个applet元素都会在`applets[]`数组中创建一个元素
- 每个embed元素都会在`embeds[]`数组和`plugins[]`中创建一个元素，建议使用`embeds[]`数组

### 文档对象的应用
#### 设置超链接的颜色
　
#### 设置网页背景颜色和默认文字颜色
bgColor和fgColor属性来修改

#### 文档信息
Document对象中的lastModified,title和URL属性可以显示文档的信息。在HTML文件的最下方输出这些信息

#### 在标题栏中现实滚动信息
Document对象的title属性与Window对象的setInterval()方法相结合，可以在浏览器窗口中现实动态标题。

#### 防止盗链
使用Document对象的URL属性和referrer属性就可以防止盗链行为

#### 网页中输出内容
1. 简单的输出文字
2. 将多个字符串链接后输出
3. write()和writeln()之间的区别
4. write()和writeln()的注意事项
	只有在当前文档内才可以使用,否则会清除当前窗口内容　

#### 在其他文档中输出内容
在一个已经存在的文档中，使用open()方法和write()方法一样，都会清除文档内容

如果不使用close()来关闭文档流，则可能：
1. 浏览器将文档流存放在换村里，因此在浏览器窗口中不会现实缓存中的内容
2. 文档流一直打开这，浏览器有可能不现实其他动态内容

#### 输出非HTML文档
	document.open(mimeType)　
mimeType是可选参数，字符串，用于指定打开文档的MIME类型
如果要打开HTML文档意外的文件，必须生命mimeType参数

#### 文档中的所有HTML元素
all属性，返回一个数组，数组中的元素为HTML文档中的所有HTML元素

#### 引用文档中的HTML元素
	document.all[i]
	document.all[name]
	document.all[tagName]

#### 引用文档元素中的子元素
#### 其他文档信息

### 12.3 图像对象
images属性的返回值是一个数组，数组中的每一个元素都是一个Image对象

#### 图像对象介绍
	document.images[i]
	document.images[iamgeName]
	document.imageName

JS中可以使用构造函数来创建一个图片对象:
	new Image(width, height)

#### 图像对象的属性
- border 边框的宽度
- complete 返回布尔值，说明图片是否加载完毕
- height 返回整数，高度
- hspace 返回或设置替代图片的第质量图片的URL。该属性的初始值由img元素的lowsrc属性值决定
- name 图片的名称
- src 返回或这是图片的URL
- vspace 返回一个整数，说明图片与文字在垂直方向的距离
- width 返回整数，宽度

#### 图像对象的事件
Image对象没有可以使用的方法，但是支持abort, error等事件
- abort 当用户放弃加载图片时激发的事件
- click 图片上单击鼠标时激发
- dblclick 双击激发
- error 产生错误激发
- load 成功加载激发
- keydown 按下键盘激发
- keypress 按下并释放键盘激发
- keyup 释放键盘激发
- mousedown 按下鼠标未释放激发
- mouseup 释放鼠标激发
- mouseover hover激发
- mousemove 移动鼠标激发
- mouseout 移开鼠标激发
#### 显示图片的信息　
#### 置换图片
`src`属性可读写

#### 随机图片
#### 动态改变图片大小
#### 缓存图片
#### 显示默认图片

### 12.4 链接对象
#### 链接对象的属性

- hash 返回或设置link的锚部分
- host 返回或设置对象的域名部分和端口部分
- hostname 返回或设置link的域名部分
- href 返回或设置对象的完整URL部分
- pathname 返回或设置link的路径部分，包括目录和文件名
- port 返回或设置link的端口部分
- protocol 返回或设置link的协议部分
- search 返回或设置link的查询部分，包括分隔符”?”
- target 返回或设置打开的目标窗口
- text 现实link对象中的超链接文字，Netscape属性
- innerText　与text属性相当，IE属性

#### 链接对象的事件
link对象支持的事件与Image对象大致相同

#### 查看一个网页上的所有超链接
#### 翻页程序
#### 网站目录
### 12.5 锚对象
anchors属性可以返回一个数组，每一个元素都是一个Anchors对象(锚对象)。
#### 锚对象属性
- name 返回锚命名
- text Netscape浏览器属性
- innerText IE属性  

#### 锚对象与链接对象的区别
#### 创建文档索引

## 第十三章 表单对象
### 13.1 表单对象概述
#### 表单对象介绍
#### 表单对象的属性
- acceptCharset 返回或设置接受的输入数据所用的字符编码方式列表，该属性的初始值由form元素中的acceptCharset属性值决定。
- action 返回或设置表单提交的URL，初始值由form元素中的action属性值决定
- elements 返回由Form对象中的元素所构成的数组，数组中的元素也是对象，有可能是Button, Checkbox,Hidden, Password, Radio, Reset, Select, Submit, text, Texture
- encoding 返回或设置提交表单时传输数据的编码方式,初始值enctype属性值决定
- id 返回或设置表单的id
- length 返回From对象中元素的个数
- method 返回或设置提交表单的方式
- name 返回或设置表单的名称
- target 返回或设置将表单提交到指定浏览器窗口或框架中

#### 表单对象的方法

- reset()　
- submit()

#### 表单对象的事件

- reset
- submit

### 13.2 表单对象的应用
利用对象的属性，方法和事件可以实现很多动态效果

#### 表单验证
#### 循环验证表单
#### 设置表单的提交方式
#### 重置表单的提示
#### 不使用提交按钮提交表单
### 13.3 表单元素
#### 表单元素概述
**表单元素:**
- 单行文本框 \<input type=“text”\>
- 多行文本框 \<textarea\>\</textarea\>
- 密码框 \<input type=“password”\>
- 单选按钮 \<input type=“radio”\>
- 复选框 \<input type=“checkbox”\>
- 下拉列表框
- 文件选择框 \<input type=“file”\>
- 普通按钮 \<input type=“button”\>　
- 提交按钮 \<input type=“submit”\>
- 重置按钮 \<input type=“reset”\>
- 分组元素 \<fieldset\>\</fieldset\>　　

#### 表单元素的命名

### 13.4 文本框
input:
- type 类型
- name 文本框名称
- value 初始值
- size 宽度
- maxlength 文字最大数
textarea:
- rows 高度
- cols 宽度
- text 初始值

#### 文本框的属性
- accessKey 返回或设置访问文本框的快捷键
- defaultValue 返回或设置文本框中的初始文本
- disabled 返回或设置文本框是否被禁用 true or false
- form 返回包含文本框元素的Form对象的引用
- id 返回或设置文本框的ID属性值
- maxLength 返回或设置文本框可输入文字的最大数
- name 返回文本框的名称
- readOnly 返回或设置文本框是否只读
- size 返回或设置单行文本框的大小
- tabIndex 返回或设置文本而况的tab顺序索引
- type 返回文本框类型
- value 返回或设置文本框中的文本
- rows  多行文本框的高度
- cols 多行文本框的宽度

#### 文本框的方法
　
- blur() 移开焦点
- click() 模拟单击

#### 文本框的事件
- blur 焦点移开时激发
- change 内容改变并失去焦点激发
- click 单击文本框时激发
- dblclick 双击文本框时激发
- focus 获得焦点时激发
- keydown 按下键盘激发
- keypress 按下并释放键盘激发
- keyup 释放键盘激发
- mousedown 按下未释放鼠标激发
- mouseup 释放鼠标激发
- mouseover 移动到其上时激发
- mousemove 在其上移动鼠标时激发
- mouseout 文本框上移开时激发
- select 文本框的文字被选中失去焦点时激发
- selectstart 文字开始呗选中时激发

#### 限制文本框中输入的字数
1. 输入文字时判断输入字数
2. 提交数据时候判断输入字数
3. 失去焦点时候判断输入字数

#### 　自动选择文本框中的文字
1. 鼠标经过文本框时选择文字
	select()方法与mouseover事件结合
2. 鼠标经过的时候清除文本
	`myText.value = “”;`
3. 进一步完善
	不清除用户输入的文字　
	检查内容是否与初始值相同: 
	`textbox.value == textbox.defaultValue`
	`onfocus="clearText(this)"`

### 13.5 按钮
#### 按钮的创建方式
1. 使用button元素创建按钮
2. 使用input元素创建按钮
#### 按钮的属性
- accessKey 返回或设置快捷键
- defaultValue 返回或设置初始文字
- disabled 返回或设置是否被禁用
- form 返回包含按钮元素的Form对象的引用
- id 返回或设置ID
- name 返回按钮名称　
- tabIndex 返回或设置按钮的tab顺序索引
- type 返回按钮的类型
- value 返回或设置显示在按钮上的文字

#### 按钮的方法
- blur() 移开焦点
- click() 模拟鼠标点击
- focus() 该方法可以将焦点赋给按钮
#### 按钮的事件
- blur 移开按钮激发
- click 单击激发
- dblclick 双击激发
- focus 获得焦点激发
- keydown 按下键盘激发
- keypress 按下并释放键盘激发
- keyup 释放键盘激发
- mousedown 按下并释放鼠标激发
- mouseup 释放鼠标激发
- mouseover 鼠标移动到激发
- mousemove 在其上移动激发
- mouseout 移开激发

#### 网页调色板
#### 改变多行文本框大小
### 13.6 单选按钮和复选框
#### 创建单选按钮和复选框
#### 单选按钮和复选框的属性
#### 设置单选按钮与复选框的默认选项
用`checked`设置默认选项
#### Form对象与Radio对象，Checkbox对象
#### 组与选项
#### 获取单选按钮与复选框的值
#### 限制复选框的选择项数
### 13.7 下拉列表框
#### 创建下拉列表框
#### 下拉列表框的属性
- length 返回下拉框选项个数
- multiple 返回或设置下拉框是否允许多选
- option 返回一个数组，数组中的元素为选项
#### 下拉列表框的方法
- remove(i) 删除下拉列表框的选项,其中i为数组下标
#### 下拉列表框的事件
#### 选项对象
创建下拉列表框中的选项，可以使用以下构造函数:
`new Option(text, value, defalutSelected, selected)`

#### 选项对象的属性
#### 同时显示多行的下拉列表框
#### 可以同时选择多个选项的下拉列表框
multiple属性

#### 利用下拉列表框翻页
可以将选项值设置为要跳转的URL，通过select对象的value属性值得到该跳转URL，在通过Location对象的href属性跳转页面。

#### 简单的选课程序
利用下拉列表框的菜单，多行显示，以及随意添加，删除选项的特点。
#### 二级联动菜单

### 13.8 文件上传框
#### 创建文件上传框
#### 文件上传框的属性
#### 文件上传框的方法
#### 文件上传框的事件
#### 文件上传框的注意事项
- 上传文件的编码与传输方式与普通的文本不同，因此必须要在form元素中设置enctype属性与method属性，enctype必须为”mulitipart/form-data”, method属性值必须为”post“
- value属性值只能由哟哦你过户选择或输入，不能在JS程序中输入
- 不存在defaultValue属性
- 不会存在maxlength属性

#### 图片预览
### 13.9 隐藏域
是不在浏览器显示的，多数是向服务器上传一些不希望用户看到的数据
#### 创建隐藏域　　
#### 隐藏域的属性
#### 输入提示
### 13.10 Fieldset元素
使用Fieldset元素为表单中的元素进行分组，所有在`<fieldset>...</fieldset>`之间的表单元素可以划分为一组

#### 创建分组
fieldset元素也是Form对象的`elements[]`数组中的一员

## 第十四章 cookie
### 14.1 cookie介绍
#### 什么是cookie
就是一些信息，以文件的形式存储在客户端计算机上。

#### cookie的作用
cookie的主要作用是保存信息，并与服务器互动。
常用到cookie的场景
- 用户登录
- 电子商务
- 定制用户页面
- 手机用户喜好

### 14.2 创建与读取cookie
创建:
document.cookie = “name=value”

读取:
document.cookie

### 14.3 获取cookie的值
cookie文件存放的就是一个字符串，获取指定的cookie，还需要使用String对象中的方法才能获得需要的cookie值

### 14.4 cookie的编码
cookie都是未编码的格式存入，要将特殊符号写入cookie中，就必须在写入cookie之前，使用`escape()`函数将cookie值进行编码，在读取cookie时候再通过`unescape()`函数还原

### 14.5 cookie的生存期
document.cookie = “name=value; expires=date”

date必须是GMT格式的日期型字符串，格式如下:

`wdy, DD-Mon-YY HH:MM:SS GMT`

- wdy: 英文表示星期数
- DD: 两位数表示的日期数
- Mon: 用3个字符表示月份
- YY: 用两位数表示的年份
- HH: 用两位数表示的小时数
- MM: 用两位数表示的分钟数
- SS: 用两位数表示的秒数
- GMT: 用于说明该格式是GMT格式
ex: `Sat, 15 Sep 2015 06:27:12 GMT`

由于GMT格式使用起来很不方便，因此，可以先定义一个Date对象，再通过`toGMTString()`方法，来得到GMT格式的日期型字符串。

**此部分代码比较晦涩，需要请教其他人或再行研究, 代码 14.5.html**

### 14.6 cookie的路径
cookie默认只能被同路径或子路径页面读取，如果要网站其他目录的文件也能读取，需要使用path设置cookie的路径
设置path方法与设置expires的方法类似，使用分号与其他参数分割开来就可以了

### 14.7 cookie的domain
解决同域下不同网址访问问题，需要设置cookie的domain，和设置path方法类似
\`";domain=.hivan.me"
\`
### 14.8 cookie的secure
设置了cookie的secure，那么只能被HTTPS协议或其他安全协议传输，secure是一个布尔值

### 14.9 cookie的使用注意事项
- cookie并不是十分安全
- cookie存放的数据最多不能超过4kb
- cookie文件最多存储300个cookie
- 每个服务器(www.hivan.me和blog.hivan.me算两个服务器)最多不能超过20个cookie文件
- cookie的生存期是以毫秒为单位计算的
- 客户端浏览器可以设置拒绝cookie

# 第三篇 Ajax篇
## 第十五章 Ajax介绍
Ajax(Asynchronous JavaScript And XML)是异步JS和XML技术的缩写
### 15.1 传统的Web技术
### 15.2 Ajax技术原理
### 15.3 Ajax技术的优缺点
优点表现:
- 只提交有用的数据，而不是整个网页的所有数据，因此可以减少数据的冗余程度，也可以减轻网络贷款的压力和服务器的负担
- 可以局部更新，浏览器不会显示空白
- 相应速度快
- 将计算转嫁到客户端，减轻服务器负担
- 获得其他网页内容填充到自身网页
缺点表现:
- 需要Ajax引擎，不同浏览器Ajax有所不同
- 后退功能无效
- 不被搜索引擎支持
- 很多智能终端不能很好的支持Ajax　　

### 15.4 Ajax技术组成
Ajax包括HTML，XHTML,CSS,DOM,XML,XSTL和HTMLHttpRequest等技术
使用最多的是JavaScript,XMLHttpRequest, CSS, DOM和XML

#### JavaScript
Ajax中，使用最多的是JS来检验表单数据的有效性，或通过JS来操作XMLHttpRequest以达到与WEB服务器或数据库交互的目的。

#### XMLHttpRequest
XMLHttpRequest是XMLHTTP组件的一个对象，也是Ajax处理的核心。
IE中使用的是XMLHTTP组件的XMLHttpRequest对象，而Netscape是直接使用XMLHttpRequest组件，创建异步调用对象的语句有少许差别

#### CSS

#### DOM
Ajax中，DOM的作用主要是刷新局部数据

#### XMl
XML是以简历和管理数据为目标
Ajax中，XML主要是存储数据和文档，并让其他程序共享。

### 15.5 XMLHttpRequest对象
#### XMLHttpRequest的方法
- abort() 停止当前的请求
- getAllResponseHeaders() 获取相应的所有HTTP头
- getResponseHeader(header) 从相应的信息中获取指定的HTTP头
	header: 要获取的HTTP头的名称，如Content-Type
- open(method,URL,flag,name,pwd) 创建一个新的HTTP请求，并指定该HTTP请求的方法，URL及验证信息
	- method: HTTP请求方法，一共有get,post
	- head、put、delete五种方法，常用的方法为get和post
	- URL HTTP请求的URL地址，可以是绝对或相对
	- flag 可选的布尔型参数，用于指定是否使用异步方式，true表示异步方式，false表示同步方式，默认为true
	- name 可选参数，服务器需要验证，可以输入用户名
	- pwd 可选参数，需要验证，可以输入密码
- send(data) 将请求发送给Web服务器
	data 可选参数，发送请求的数据
- setRequestHeader(name, value) 单独指定请求的HTTP头
	- name: HTTP头名称
	- value HTTP头的值

#### XMLHttpRequest的属性
[具体地址][7]
属性
- readyState
	HTTP 请求的状态.当一个 XMLHttpRequest 初次创建时，这个属性的值从 0 开始，直到接收到完整的 HTTP 响应，这个值增加到 4。
	5 个状态中每一个都有一个相关联的非正式的名称，下表列出了状态、名称和含义：
	0. Uninitialized
		初始化状态。XMLHttpRequest 对象已创建或已被 abort() 方法重置。
	1. Open
		open() 方法已调用，但是 send() 方法未调用。请求还没有被发送。
	2. Sent
		Send() 方法已调用，HTTP 请求已发送到 Web 服务器。未接收到响应。
	3. Receiving
		所有响应头部都已经接收到。响应体开始接收但未完成。
	4. Loaded
		HTTP 响应已经完全接收。
	readyState 的值不会递减，除非当一个请求在处理过程中的时候调用了 abort() 或 open() 方法。每次这个属性的值增加的时候，都会触发 onreadystatechange 事件句柄。
- responseText
	目前为止为服务器接收到的响应体（不包括头部），或者如果还没有接收到数据的话，就是空字符串。
	如果 readyState 小于 3，这个属性就是一个空字符串。当 readyState 为 3，这个属性返回目前已经接收的响应部分。如果 readyState 为 4，这个属性保存了完整的响应体。
	如果响应包含了为响应体指定字符编码的头部，就使用该编码。否则，假定使用 Unicode UTF-8。
- responseXML
	对请求的响应，解析为 XML 并作为 Document 对象返回。
- status
	由服务器返回的 HTTP 状态代码，如 200 表示成功，而 404 表示 "Not Found" 错误。当 readyState 小于 3 的时候读取这一属性会导致一个异常。
- statusText
	这个属性用名称而不是数字指定了请求的 HTTP 的状态代码。也就是说，当状态为 200 的时候它是 "OK"，当状态为 404 的时候它是 "Not Found"。和 status 属性一样，当 readyState 小于 3 的时候读取这一属性会导致一个异常。

常用HTTP状态
[状态码地址][8]

#### XMLHttpRequest的事件
XMLHttpRequest对象可以响应readystatechange事件，该事件是在XMLHttpRequest对象的readyState属性值产生变化时所要激发的。

### 15.6 实现Ajax
实现异步调用需要XMLHttpRequest对象，要局部刷新需要使用到JavaScript和DOM。
#### 实现Ajax的步骤
1. 创建XMLHttpRequest对象
2. 创建一个新的HTTP请求，并指定HTTP请求的方法，URL及验证信息
3. 设置响应HTTP请求状态变化的函数
4. 发送HTTP请求
5. 获取异步调用返回的数据
6. 使用JavaScript和DOM实现局部刷新

#### 创建XMLHttpRequest对象
IE: 
`var xmlHttp = new ActivexObject("Microsoft.XMLHTTP);`
Netscape:
`var xmlHttp = new XMLHttpRequest()`

#### 创建HTTP请求
可以使用XMLHttpRequest对象的open()方法
`XMLHttpRequest.open(method,URL,flag,name,password)`
- method: 用于指定HTTP的请求方法，共有get,post,head,put,delete五种方法,常用get和post
- URL 用于指定HTTP请求的URL地址
- flag 可选，为布尔型。指定是否使用异步，默认为true
- name 可选，输入用户名，如果服务器需要验证，则必须
- password 可选，输入密码，如果服务器需要验证，则必须

通常使用以下代码来访问一个网站文件的内容
`xmlHttp.open("get", "http://www.aspxfans.com/BookSupport/JavaScript/ajax.xml", true);`　　　
或使用以下代码访问一个本地文件的内容
`xmlHttp.open("get", "ajax.html", true)`

#### 设置响应HTTP请求变化的函数
创建ＨＴＴＰ请求之后，就可以将请求发送给Ｗｅｂ服务器了。发送ＨTTP请求的目的是为了接收从服务器中返回的数据。从创建XMLHttpRequest对象开始，到发送数据，接收数据，XMLHttpRequest对象一共会经历以下5种状态

- 未初始化状态 创建完XMLHttpRequest对象时，该对象处于未初始化状态。此时XMLHttpRequest对象的readyState属性为0
- 初始化状态　在创建完XMLHttpRequest对象后，使用open()方法创建了HTTP请求时，该对象处于初始化状态。此时XMLHttpRequest对象的readyState属性值为1
- 发送数据状态 初始化XMLH对象之后，使用send()方法发送数据时，该对象处于发送给状态，此时XMLH对象的readyState属性值为2
- 接收数据状态 服务器处理完返回结果，此时处于接收状态，readyState属性值为3
- 完成状态 readyState属性值为4，此时接收完毕后数据存入客户端计算机的内存中，可以使用reponseText属性或reponseXML属性来获取数据

XMLttpRequest可以响应readystatechange事件，readyState属性值改变时激发。因此，可以通过该事件调用一个函数，并在该函数中判断XMLHttpRequest对象的readyState属性值，如果readyState为4则使用responseText属性或responseXML属性来获取数据

#### 设置获取服务器返回数据的语句
以上异步调用过程完毕，并不代表异步调用成功了，如果要判断异步调用是否成功，还要判断XMLHttpRequest对象的status属性值，只有该属性值为200，才表示异步调用成功，因此要获取服务器返回数据的语句，还必须要先判断XMLHttpRequest对象的status属性值是否等于200

**注意，如果HTTP文件是本地运行而不是服务器上运行，xmlHttp.status返回值为0**

#### 发送HTTP请求
`XMLHttpRequest.send(data)`
以下为data参数的一个实例
 `name=myName&value=myValue`
只有send()方法之后，XMLHttpRequest对象的readyState属性值才会开始改变，也才会激发readystatechange事件，并调用函数
#### 局部更新
1. 表单对象的数据更新
	表单对象的数据更新，通常只要更改表单对象的value属性值，其语法代码如下所示。
	`FormObject.value="新数值"`

2. IE浏览器中标签间文本的更新
	IE浏览器中使用inerText或innerHTML属性来更改标签间文本的内容。
3. DOM技术的局部刷新
	DOM中,HTML每一对开始标签和结束标签都堪称是一个节点。
	DOM中使用getElementById()方法可以通过id属性值来查找该标签，或者说节点
	`var node = document.getElementById("myDiv")`
	**注意: id节点是唯一的**

#### 完整的Ajax实例
[实例地址][9]

**需要再研究一遍实例**

## 第十六章 深入Ajax
全面掌握Ajax，除了JS，还需要掌握以下技术
### 16.1 客户端脚本语言
#### 使用JavaScript的局部刷新技术
局部刷新不一定需要Ajax，例如之前的二级联动菜单，就是一个局部刷新的例子。

#### 使用iFrame的局部刷新技术
### 16.2 服务器脚本语言
客户端脚本是Ajax的核心，异步存取是Ajax的灵魂
#### 改进iframe局部刷新
Iframe技术的好处
- 减少客户端代码，加载客户端文件比较块
- 根据需要显示指定的文件

#### Ajax与服务器交互

### 16.3 文档对象模型　

#### 16.4 层叠样式表
`element.style.attribute = value`

- element HTML中的元素名，通常由ID属性值指定
- style 关键字，用于声明 元素的样式
- attribute 样式的属性，也就是指定什么样式
- value 样式的属性值

#### 16.5 XML

[1]:	https://www.evernote.com/shard/s5/nl/545318/21405b6e-48b2-4dfa-a8f8-0f0b4d31f763/?csrfBusterToken=U%3D85226%3AP%3D%2F%3AE%3D14d41aa6063%3AS%3D18a649e9eb6f294c7d188c0db72f569e
[2]:	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence
[3]:	https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Operators
[4]:	http://www.w3school.com.cn/js/js_window.asp
[5]:	http://www.w3school.com.cn/tags/html_ref_eventattributes.asp
[6]:	http://www.w3school.com.cn/jsref/dom_obj_window.asp
[7]:	http://www.w3school.com.cn/xmldom/dom_http.asp
[8]:	http://www.w3school.com.cn/tags/html_ref_httpmessages.asp
[9]:	/public/15.6.8.html
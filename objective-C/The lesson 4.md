# 第四节课

### 代理使用

  前三步（封装）

    1. 声明代理原型
    2. 声明代理变量
    3. *调用*代理方法

  后三步（使用）

    1. h头文件`<>`实现代理
    2. 设置代理变量的值 //百分之九十九都是'self';
    3. 实现代理方法

  @class UTDragonView; //前项声明；

  当封装一个类，只知道某件事情会发生，但是不知道会去做什么，就使用代理；

### 代理的两个类型
  `optional` 可做可不做
  `required` 必须要做的

`SEL` 相当于一个函数指针，表示一个方法。


### 模板

Master-Detail Application

OpenGl Game

Page-Based Application

Single View Application

Tabbed Application

Utility Application

Empty Application //最常用的模板


### 目录结构
UTDemo04
  Classes
  Resources
  Supporting Files
    main.m
    plist
    pch   //预编译头文件
Frameworks      // 类库
  UIKit.framework   //UI类库
  Foundation.framework //基础的数据包，整型等
  CoreGraphics.framework
Products        //产品的包
  UTDemo04.app
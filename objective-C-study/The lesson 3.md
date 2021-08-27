# The third lesson

引起程序崩溃的三大原因：
1. 引用不存在的方法；
2. 非法访问；

## 属性怎么样用；
属性和set,get方法一样
`@property (nonatomic, copy)NSString *name;`
`@synthesize name = _name;`

常见的修饰`nonatomic, atomic, copy, retain, strong, weak, readonly, readwrite)`

`readonly, readwrite` // 只读，或者可读写；

`copy, retain, strong, weak, assign` // 说明赋值的操作是什么,用于在set方法当中


iOS种管理内容有个机制叫引用计数(retain count)
Ex： UTPerson *person  = [UTPerson alloc];

凡是用了'alloc copy retain strong' 会导致引用计数加一；
`release`会让引用计数减一;

`strong`等价于`retain`, 强引用，强制引用计数加一;
`weak`等价于`assign`

`nonatomic, atomic`涉及到多线程;
`atomic` 是原子运用，多个线程不能同时访问,其他线程需要等待;
`nonatomic` 允许多个线程同时访问;非原子的。

两者的访问速度不同。`atomic`较慢;

用完即`release`，自己管理自己的次数。

真正的施放内存是`dealloc`; dealloc当中最后一句一定是`[super dealloc];`

字符串用`copy`; 非字符串的对象用`retain, strong`; 基本数据类型用`assign, weak`

xxx.name = @"lisisisisis"; 等级于  [xxx setName:@"lisisisisis"];
age = xxx.age = 20; 等价于 


## 属性什么时候使用；
1. 在外部访问某个成员变量，需要把成员变量设置成属性。
2. 外部不需要使用变量，需要在自己的类中不同的地方赋值，声明成属性赋值，方便内存的维护。


`NSString`  不可变的集合类；
`NSMutableString` 动态可变的集合类；

`EXC_BAD_ACCESS` 程序崩溃； 基本是因为引用了一个不存在的内存地址；

    - （void）dealloc
    {
      self.name = nil;
      self.address = nil;
    //      [_name release];
    //      [_address release];
    //      _name = nil;
    //      _address = nil;
      [super dealloc];
    }

做`_name = nil`是因为防止野指针。 `nil`是系统自定义的一块内存，无论如何访问，都是安全的，不会造成系统崩溃。

## 区别需要使用成员变量还是属性

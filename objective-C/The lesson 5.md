#pragma mark - Application lifecycle methods

这一句是标识，类似于注释，但是和注释不同。解释说明，

## Classes 工程文件夹内的九个目录 （自己总结）

1. AppDelegate  //App代理
2. Components   //组件（自定义控件）
3. Controllers  //控制器 （放所有看得见摸得着的UI和页面）
4. Globals  //全局 （放所有的全局变量）
5. Models   //模块 （各式各样的数据结构）
6. Parsers  //解析器 （将数据解析成Model）
7. Publics  //公开 （用于放一些从网上找到的开源的数据库代码）
8. Requests //请求 （请求网络）
9. Utils(Utilities) //公用 （相当于工具箱）

## MVC

`M model` `V UIView` `C UIViewController`

`XIB`用于图形化设计界面的。
不推荐使用XIB来制作。


`+(id)arrayWithObjects:(id)firstObj, ....`是一个数组，有一组参数，这组参数一定要以`nil`结尾。

UINavigationController 纵向深入
UITabBarController 横向并列

`- (void)didReceiveMemoryWarning` 收到内存警告
`- (void)viewDidUnload` 释放非当前页面内存


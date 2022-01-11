//  链表

// 发生指针丢失和内存泄漏
p->next = x; // 将p的next指针指向x结点
x->next = p->next; // 讲x的节点的next指针指向b结点

// 正确的方法
x->next = p->next;
p->next = x;


// 单链表的插入操作
new_node->next = p->next;
p->next = new_code;

// 第一个结点的插入逻辑
if (head == null) {
    head = new_node;
}

// 单链表的删除操作
p->next = p->next->next;
// 最后一个结点的删除操作
if (head->next == null) {
    head = null;
}

//  带头链表
//  代码一

// 在数组a中, 查找key, 返回key所在的位置
// 其中, n表示数组a的长度
int find(char* a, int n, char key) {
    // 边界条件处理, 如果a为空, 或者n<=0, 说明数组中没有数据, 就不用while循环比较了
    if(a == null || n <= 0)  {
        return -1;
    }
    
    int i = 0;
    // 这里有两个比较操作: i< n 和a[i] == key;
    while (i < n) {
        if (a[i] == key) {
            return i;
        }
        ++i;
    }
    return -1;
}

// 代码二

// 在数组a中, 查找key, 返回key所在的位置
// 其中, n表述数组a的长度
// 举2个例子, 可以拿例子走一下代码
// a = {4, 2, 3, 5, 9, 6} n = 6 key = 7
// a = {4, 2, 3, 5, 9, 6} n = 6 key = 6
int find(char* a, int n, char key) {
    if(a == null || n <= 0) {
        return -1;
    }

    // 这里因为要讲a[n-1]的值替换成key, 所以要特殊处理这个值
    if (a[n-1] == key){
        return n-1;
    }

    // 把a[n-1]的值临时保存在变量tmp中, 以便之后回复  tmp = 6
    // 之所以这样做的目的是: 希望find()代码不要改变a数组中的内容
    char tmp = a[n-1];
    // 把key的值放到a[n-1]中, 此时a = {4, 2, 3, 5, 9, 7}
    a[n-1] = key;

    int i = 0;
    // while循环比起代码一, 少了i<n这个比较操作
    while (a[i] != key) {
        ++i;
    }

    // 回复a[n-1]原来的值, 此时a = {4, 2, 3, 5, 9, 6}
    a[n-1] = tmp;

    if (i == n-1) {
        // 如果i == n-1说明, 在n...n-2之间都没有key, 所以返回-1
        return -1;
    } else {
        // 否则, 返回i, 就是等于key值的元素的下标
        return i;
    }
}
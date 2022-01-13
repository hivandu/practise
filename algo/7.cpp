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

// 反转链表
public ListNode reverseList(ListNode head) {
    ListNode prev = null;
    ListNode curr = head;
    while(curr != null) {
        ListNode nextTemp = curr.next;
        curr.next = prev;
        prev = curr;
        curr = nextTemp;
    }
    return prev;
}

// 迭代反转链表
link * iteration_reverse(link* head) {
    if(head == NULL || head -> next == NULL) {
        return head;
    }
    else{
        link * beg = NULL;
        link * mid = head;
        link * end = head -> next;

        // 一直遍历
        while(1) {
            // 修改mid所指结点的指向
            mid->next = beg;
            // 此时判断end是否为NULL, 如果成立则退出循环
            if (end == NULL) {
                break;
            }
            // 整体向后移动3个指针
            beg = mid;
            mid = end;
            end = end->next;
        }
        // 最后修改head头指针的指向
        head = mid;
        return head;
    }
}

// 递归反转链表
link* recursive_reverse(link* head) {
    // 递归的出口
    if (head == NULL || head->next == NULL) // 空链或只有一个结点, 直接返回头指针
    {
        return head;
    }
    else
    {
        // 一直递归, 找到链表中最后一个结点
        link *new_head = recursive_reverse(head->next);

        //当逐层退出时，new_head 的指向都不变，一直指向原链表中最后一个节点；
        //递归每退出一层，函数中 head 指针的指向都会发生改变，都指向上一个节点。
        //每退出一层，都需要改变 head->next 节点指针域的指向，同时令 head 所指节点的指针域为 NULL。
        head->next->next = head;
        head->next = NULL;
        //每一层递归结束，都要将新的头指针返回给上一层。由此，即可保证整个递归过程中，能够一直找得到新链表的表头。
        return new_head;
    }
}

// 头插法反转链表

link * head_reverse(link * head) {
    link * new_head = NULL;
    link * temp = NULL;

    if (head == NULL || head->next == NULL) {
        return head;
    }
    while(head != NULL){
        temp = head;
        //  将temp从head中摘除
        head = head->next;

        // 将temp插入到new_head的头部
        temp->next = new_head;
        new_head = temp;
    }
    return new_head;
}

// 就地逆置法反转链表
link * local_reverse(link * head) {
    link * beg = NULL;
    link * end = NULL;
    if (head == NULL || head->next == NULL) {
        return head;
    }
    beg = head;
    end = head -> next;
    while (end != NULL) {
        // 将end从链表中摘除
        beg->next = end->next;
        // 将end移动至链表头
        end->next = head;
        head = end;
        // 调整end的指向, 另其指向beg后的一个结点, 为反转下一个结点做准备
        end = beg->next;
    }
    return head;
}
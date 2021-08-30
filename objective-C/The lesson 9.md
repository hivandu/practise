# The lesson 9

## Table view 必要的方法

    - (BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender
    {
        return 20;
    }

    - (UITableViewCell *)tableView:(UITableView *)tableView
             cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        static NSString *kCellIdentifier = @"kCellIdentifier";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
        if (cell == nil) {
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier] autorelease];
        }
        cell.textLabel.text = [NSString stringWithFormat:@"section = %i, row = %i", indexPath.section, indexPath.row];
        return cell;
    }

集合类:
- NSStriing
- NSSet //数学中的数字集合 *1
- NSArray // 数组 
- NSDictirnary //字典 *2
- NSData


*1 (NSSet中没有顺序，并且不能有重复的元素)
*2

可变的
- NSURLRequest
- NSMutable

记录偏移量等等用户操作信息，并在从新创建的时候加载上去。


要掌握的表的知识：

- 表的结构
  - Head
  - section
  - row
  - Foot

- 15个最常用的代理方法

- 要学会自定义cell
  - 要使用到代理回调
  - 控件和行做一个对应关系


## 网络通信部分



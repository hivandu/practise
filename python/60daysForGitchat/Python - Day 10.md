

# Python - Day 10



## 批量修改文件后缀名

从这个示例中学习`argparse`的用法

```python
def get_parser():
    parser = argparse.ArgumentParser(description='工作目录中文件后缀名修改')
    parser.add_argument('work_dir', metavar='WORK_DIR', type=str, nargs=1,
                        help='修改后缀名的文件目录')
    parser.add_argument('old_ext', metavar='OLD_EXT',
                        type=str, nargs=1, help='原来的后缀')
    parser.add_argument('new_ext', metavar='NEW_EXT',
                        type=str, nargs=1, help='新的后缀')
    return parser
```





```python
def batch_rename(work_dir, old_ext, new_ext):
    """
    传递当前目录，原来后缀名，新的后缀名后，批量重命名后缀
    """
    for filename in os.listdir(work_dir):
        # 获取得到文件后缀
        split_file = os.path.splitext(filename)
        file_ext = split_file[1]
        if old_ext == file_ext: # 定位后缀名为old_ext 的文件         
            newfile = split_file[0] + new_ext # 修改后文件的完整名称
            # 实现重命名操作
            os.rename(
                os.path.join(work_dir, filename),
                os.path.join(work_dir, newfile)
            )
    print("完成重命名")
    print(os.listdir(work_dir))

```



```python
def main():
    # 命令行参数
    parser = get_parser()
    args = vars(parser.parse_args())
    # 从命令行参数中依次解析出参数
    work_dir = args['work_dir'][0]
    old_ext = args['old_ext'][0]

    if old_ext[0] != '.':
        old_ext = '.' + old_ext
    new_ext = args['new_ext'][0]
    if new_ext[0] != '.':
        new_ext = '.' + new_ext

    batch_rename(work_dir, old_ext, new_ext)

```



最后执行的时候显示:

```shell
usage: Day10.re.py [-h] WORK_DIR OLD_EXT NEW_EXT
Day10_re.py: error: the following arguments are required: WORK_DIR, OLD_EXT, NEW_EXT
```

## 批量获取文件修改时间

```python
# 获取目录下文件的修改时间
import os
from datetime import datetime

print(f"当前时间：{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")

def get_modify_time(indir):
    for root, _, files in os.walk(indir):  # 循环目录和子目录
        for file in files:
            whole_file_name = os.path.join(root, file)
            modify_time = os.path.getmtime(whole_file_name) # 1581164725.991523，这种时间格式太不人性化
            nice_show_time = datetime.fromtimestamp(modify_time) # 转化为人性化的时间显示格式：2020-02-08 20:25:25.991523
            print('文件 %s 最后一次修改时间：%s' %(file,nice_show_time))
```



## 批量压缩文件

```python
import zipfile  # 导入 zipfile，这个是用来做；
import os
import time


def batch_zip(start_dir):
    start_dir = start_dir  # 要压缩的文件夹路径
    file_news = start_dir + '.zip'  # 压缩后文件夹的名字

    z = zipfile.ZipFile(file_news, 'w', zipfile.ZIP_DEFLATED)
    for dir_path, dir_names, file_names in os.walk(start_dir):
        # 这一句很重要，不 replace 的话，就从根目录开始复制
        f_path = dir_path.replace(start_dir, '')
        f_path = f_path and f_path + os.sep  # 实现当前文件夹以及包含的所有文件的压缩
        for filename in file_names:
            z.write(os.path.join(dir_path, filename), f_path + filename)
    z.close()
    return file_news
```



## 32 位文件加密

```python
import hashlib
def hash_cry32(s):
  m = hashlib.md5()
  m.update((str(s).encode('utf-8')))
  return m.hexdigest()

print(hash_cry32(1))
print(hash_cry32('hello'))
```




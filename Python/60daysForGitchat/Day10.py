# -*- coding: utf-8 -*- 
import os

# 读取本地文件
def read_file(filename):
    if os.path.exists(filename) is False:
        raise FileNotFoundError('%s not exists'%(filename,))
    f = open(filename,encoding='utf-8')
    content = f.read()
    f.close()
    return content

read_file('/Users/du/file.txt')

# 借用with避免打开和关闭的繁琐写法
def read_file_new(filename):
    if os.path.exists(filename) is False:
        raise FileNotFoundError(f'{filename} not exists')
    with open(filename, encoding='utf-8') as f:
        content = f.read()
    print(content)
    return content

read_file_new('/Users/du/file.txt')

# 文件按行读
#  -----------------------------------------------
# | 每次读入一行
# | 选择正则split分词，注意单词间空个不同
# | 使用defaultdict统计单词出现频次
# | 按照频次从大到小降序
#  -----------------------------------------------
from collections import defaultdict
import re
rec = re.compile('\s+')
dd = defaultdict(int)
with open('/Users/du/file.txt') as f:
    for line in f:
        clean_line = line.strip()
        if clean_line:
            words = rec.split(clean_line)
            for word in words:
                dd[word] += 1
dd = sorted(dd.items(), key=lambda x: x[1], reverse=True)
print('--- print start ---')
print(dd)
print('--- print start done ---')

# 文件写操作
def write_to_file(file_path,file_name):
    if os.path.exists(file_path) is False:
        os.mkdir(file_path) # 创建路径
    whole_path_filename = os.path.join(file_path, file_name)
    to_write_content = '''Hey, Python
I just love Python so much,
and want to get the whole python stack by this 60-days column and believe!
'''
    with open(whole_path_filename, mode='w', encoding='utf-8') as f:
        f.write(to_write_content)
    print('-----------write done------------')
    print('-----------begin reading------------')
    with open(whole_path_filename,encoding='utf-8') as f:
        content = f.read()
        print(content)
        if to_write_content == content:
            print('content is equal by reading and writing')
        else:
            print('--------- Warning: No Equal -----------------')

write_to_file('/Users/du/python/60 Days/file', 'Day10.md')

def write_file(file_path, file_name):
    if os.path.exists(file_path) is False:
        os.mkdir(file_path)
    file = os.path.join(file_path, file_name)
    content = ''' Hey MeiTing, I just like to so much, do u know this? like daughter'''
    with open(file, mode='w',encoding='utf-8') as f:
        f.write(content)
        print(content)
write_file('/Users/du/python/60 Days/file','MeiTing.md')

# 获取文件名
file_ext = os.path.split('./file/MeiTing.md')
ipath, ifile = file_ext
print(ipath)
print(ifile)

# 获取后缀名
file_extension = os.path.splitext('./file/MeiTing.md')
print('file : ', file_extension[0],'\nfileExtension : ', file_extension[1])

# 获取后缀名的文件
def find_file(work_dir,extension='md'):
    lst = []
    for filename in os.listdir(work_dir):
        print(filename)
        splits = os.path.splitext(filename)
        ext = splits[1]
        if ext == '.'+extension:
            lst.append(filename)
    return lst

r = find_file('./file', 'md')
print(r)

# 批量修改后缀名
import argparse
### 定义脚本参数
def get_parser():
    parser = argparse.ArgumentParser(description='工作目录中文件后缀名修改')
    parser.add_argument('work_dir',metavar='WORK_DIR',type=str,nargs=1,help='修改后缀名的文件目录')
    parser.add_argument('old_ext',metavar='OLD_EXT',type=str,nargs=1,help='原来的后缀')
    parser.add_argument('new_ext',metavar='NEW_EXT',type=str,nargs=1,help='新的后缀')
    return parser

### 后缀名批量修改
def batch_rename(work_dir,old_ext,new_ext):
    # """
    # 传递当前目录，原来后缀名，新的后缀名，批量重命名后缀名
    # “”“
    print('########### Here is batch_rename ########')
    print(f'work_dir:{work_dir}, old_ext:{old_ext}, new_ext{new_ext}')
    for filename in os.listdir(work_dir):
        # 获取得到文件后缀
        print(f'filename : {filename}')
        split_file = os.path.splitext(filename)
        file_ext = split_file[1]
        if old_ext == file_ext: # 定位后缀名为old_ext 的文件
            newfile = split_file[0] + new_ext # 修改后文件的完整名称
            # 实现重命名操作
            os.rename(
                os.path.join(work_dir,filename),
                os.path.join(work_dir,newfile)
            )
    print('完成重命名')
    print(os.listdir(work_dir))


### 实现Main
def main():
    # 命令行参数
    parser = get_parser()
    args = vars(parser.parse_args())
    # 从命令行参数中一次解析出参数
    work_dir = args['work_dir'][0]
    old_ext = args['old_ext'][0]
    if old_ext[0] != '.':
        old_ext = '.' + old_ext
    new_ext = args['new_ext'][0]
    if new_ext[0] != '.':
        new_ext = '.'+new_ext
    
    batch_rename('./file','md','txt')

# if __name__ == '__main__':
#     main()

# XLS批量转换成XLSX
def xls_to_xlsx(work_dir):
    old_ext, new_ext = '.xls', '.xlsx'
    for filename in os.listdir(work_dir):
        # 获取得到文件后悔
        split_file = os.path.splitext(filename)
        file_ext = split_file[1]
        # 定为后缀名为old_ext的文件
        if old_ext == file_ext:
            # 修改后文件的完整名称
            newfile = split_file[0]+new_ext
            # 实现重命名操作
            os.rename(
                os.path.join(work_dir, filename),
                os.path.join(work_dir, namefile)
            )
    print('完成重命名')
    print(os.listdir(work_dir))

# 批量获取文件修改时间

from datetime import datetime
print(f"当前时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")

def get_modify_time(indir):
    for root, _, files in os.walk(indir):
        for file in files:
            whole_file_name = os.path.join(root, file)
            modify_time = os.path.getmtime(whole_file_name)
            nice_show_time = datetime.fromtimestamp(modify_time)
            print('文件 %s 最后一次修改时间: %s: '%(file,nice_show_time))

get_modify_time('/Users/du/python/60 Days')

# 批量压缩文件

import zipfile
import os
import time

def batch_zip(start_dir):
    start_dir = start_dir # 要压缩的文件夹路径
    file_news = start_dir + '.zip' # 压缩后文件夹的名字

    z = zipfile.ZipFile(file_news, 'w', zipfile.ZIP_DEFLATED)
    for dir_path, dir_names, file_names in os.walk(start_dir):
        # 这一句很重要，不replace的话，就从根目录开始复制
        f_path = dir_path.replace(start_dir, '')
        f_path = f_path and f_path + os.sep # 实现w当前文件夹以及包含的所有文件
        for filename in file_names:
            z.write(os.path.join(dir_path, filename), f_path + filename)
    z.close()
    return file_news
batch_zip('/Users/du/python/60 Days')

# 32 位文件加密
import hashlib
def hash_cry32(s):
  m = hashlib.md5()
  m.update((str(s).encode('utf-8')))
  return m.hexdigest()

print(hash_cry32(1))
print(hash_cry32('hello'))

# 定制文件不同行
### 统计文件个数
def statLineCnt(statfile):
  print('文件名：'+statfile)
  cnt = 0
  with open(statfile,encoding='utf-8') as f:
    while f.readline():
      cnt += 1
    print(cnt)
    return cnt

statLineCnt('./Python - Day 10.md')
statLineCnt('./Day10.py')

### 统计文件不同之处
def diff(more, cnt, less):
    difflist = []
    with open(less, encoding='utf-8') as l:
        with open(more, encoding='utf-8') as m:
            lines = l.readlines()
            for i, line in enumerate(lines):
                if line.strip() != m.readline().strip():
                    difflist.append(i)
        if cnt - i > 1:
            difflist.extend(range(i + 1, cnt))
        return [no+1 for no in difflist]

### 主函数
def file_diff_line_nos(fileA, fileB):
    try:
        cntA = statLineCnt(fileA)
        cntB = statLineCnt(fileB)
        if cntA > cntB:
            return diff(fileA, cntA, fileB)
        return diff(fileB, cntB, fileA)
    
    except Exception as e:
        print(e)

if __name__ == '__main__':
    import os
    print(os.getcwd())

diff = file_diff_line_nos('./Day10.py', './Day10_re.py')
print(diff)
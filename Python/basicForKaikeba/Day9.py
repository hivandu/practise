# BeautifulSoup库
from bs4 import BeautifulSoup

html = '''
    <body>
        <header id="header">
            <h3 id="name">小强也可爱</h3>
            <title>标题</title>
            <div class="sns">
                <a href="http://www.kaikeba.com/feed/" target="_blank" rel="nofollow" title="RSS"><i class="fa fa‐rss" aria‐hidden="true"></i></a>
                <a href="http://kaikeba.com/kaikeba" target="_blank" rel="nofollow" title="Weibo"><i class="fa fa‐weibo" aria‐hidden="true"></i></a>
                <a href="https://www.kaikeba.com/in/kaikeba" target="_blank" rel="nofollow" title="Linkedin"><i class="fa fa‐linkedin" aria‐hidden="true"></i></a>
                <a href="mailto:kaikeba@gmail.com" target="_blank" rel="nofollow" title="envelope"><i class="fa fa‐envelope" aria‐hidden="true"></i></i></a>
            </div>
            <div class="nav">
                <ul>
                    <li class="current‐menu‐item"><a href="http://www.kaikeba.com/">hello</a></li>
                    <li><a href="http://www.kaikeba.com/about‐me/">word</a></li> 
                    <li><a href="http://www.kaikeba.com/post‐search/">nihao</a></li> 
                    <li><a href="http://www.kaikeba.com/wp‐login.php">kkb</a></li>
                </ul>
            </div>
        </header>
    </body>
    '''
soup = BeautifulSoup(html, 'lxml')

# print(soup.prettify())

# print(soup.li)

# print(soup.title.name)

# print(soup.title.string)


# # 练习
# soup = BeautifulSoup(result_str, 'lxml')
# # 获取文本
# texts = [i.get_text() for i in soup.find_all('a', attrs={'class','j_th_tit'})]
# # 获取链接
# links = ['https://tieba.baidu.com{}'.format(i.attrs['href']) for i in soup.find_all('a', attrs={'class':'j_th_tit'})]

# print(texts)

################## 文件的读写 ###################
# f = open('./test.txt', 'r', encoding='utf-8')
# content = f.read()
# print(content)
# f.close()

# 简便的方法, 不需要close
# with open('./test.txt') as f:
#     content = f.read()
#     for line in f.readlines():
#         print(line.strip())
#     print(content)


########### 动态数据获取 ############
import requests
import json
import time

# https://careers.tencent.com/tencentcareer/api/post/Query?timestamp=1601615000536&countryId=&cityId=&bgIds=&productId=&categoryId=&parentCategoryId=&attrId=&keyword=&pageIndex=2&pageSize=10&language=zh-cn&area=cn

base_url = 'https://careers.tencent.com/tencentcareer/api/post/Query?timestamp={}&countryId=&cityId=&bgIds=&productId=&categoryId=&parentCategoryId=&attrId=&keyword=大数据&pageIndex=2&pageSize=10&language=zh-cn&area=cn'

headers = {
    'User-Agent':'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'
}

# 计算时间戳
now_time = int(time.time())
now_time = now_time*1000

response = requests.get(url=base_url.format(now_time), headers=headers)
# print(response.text)

# 将数据转化成python对象
content_dict = json.loads(response.text)
posts_list = content_dict['Data']['Posts']
# print(posts_list)

# 写入到txt文件
def write_to_txt(data):
    with open('./tencent.txt', 'a', encoding='utf-8') as file:
        file.write(data)

for value_dict in posts_list:
    RecruitPostName = value_dict['RecruitPostName']
    # print(RecruitPostName)
    LastUpdateTime = value_dict['LastUpdateTime']
    # print(LastUpdateTime)

    data_str = RecruitPostName+':'+LastUpdateTime+'\n'
    write_to_txt(data_str)

# 拓展， MD5加密的参数值
import hashlib
md5 = hashlib.md5()
md5.update('how to use md5 in python hashlib'.encode('utf-8'))
print(md5.hexdigest())
'''
846014c3556d79e878be15fde5426e8a # VS Code
846014c3556d79e878be15fde5426e8a # jupyter
'''


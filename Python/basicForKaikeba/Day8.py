import requests

# 获取Google LOGO

# headers = {
#     'User-Agent':'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'
# }
# response = requests.get(url='https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',headers=headers)

# response.content

# with open('./google.png', 'wb') as f:
#     f.write(response.content)

# from lxml import etree

# data_str = """
#     <div> 
#         <ul>
#             <li class="item-0"><a href="link1.html">first item</a></li>
#             <li class="item-1"><a href="link2.html">second item</a></li>
#             <li class="item-0"><a href="link5.html">fifth item</a>
#             <li class="item-inactive"><a href="link3.html">third item</a></li>
#             <li class="item-1"><a href="link4.html">fourth item</a></li>
#         </ul>
#     </div> 
#     """
# html = etree.HTML(data_str)
# html.xpath('//div/ul/li[@class="item-0"]/a/@href')


from lxml import etree

tiebaName = 'lol'
base_url = 'https://tieba.baidu.com/f?kw='+tiebaName+'&ie=utf-8&pn={}'
headers = {
}

headers = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36'
}

# 翻页的请求链接
url_list = []
for i in range(1): # 先创建一个链接进行验证
    url_list.append(base_url.format(i*50))

# 2. 发布网路请求，获取数据
response = requests.get(url = url_list[0], headers = headers)

# 3. 响应的内容，验证找到的数据
wb = response.text

wb = wb.replace('<!--','').replace('-->','')

# 4. 解析数据


html = etree.HTML(wb)
links = html.xpath('//*[@id="thread_list"]/li[@class=" j_thread_list clearfix"]//div[@class="threadlist_title pull_left j_th_tit "]/a[@rel="noreferrer"]/@href')

# 拼接链接（列表生成式）
new_links = []
for i in links:
    link = 'https://tieba.baidu.com'+i
    new_links.append(link)

links = new_links

texts = html.xpath('//*[@id="thread_list"]/li[@class=" j_thread_list clearfix"]//div[@class="threadlist_title pull_left j_th_tit "]/a[@rel="noreferrer"]/text()')

print(f'links:{links}, path:{texts}')
# -*- Coding: UTF-8 -*-#

import requests
from bs4 import BeautifulSoup
import xlwt

# 获取网页文本信息
def getHTMLText(url):
    try:
        r = requests.get(url)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text
    except Exception as err:
        print(err)

# 通过Soup解析网页
def getData(html):
    soup = BeautifulSoup(html, "html.parser")
    print('soup:', soup)
    ChatList=soup.find('div',attrs={'class':'mazi-activity-container item-container'})
    datalist=[]#用于存放提取到全部Chat信息
    #遍历每一条Chat
    for Chat in ChatList.find_all('a',attrs={'id':'article-list-item'}):
        data = []
        #提取Chat标题
        chatTile=Chat.find('div',attrs={'class':'item-titleV2'}).getText()
        data.append(chatTile)    

        #提取订阅人数
        bookingNum = Chat.find('span', attrs={'class': 'text'})
        data.append(str(bookingNum.getText()).lstrip())

        #提取作者姓名
        authorName=Chat.find('div',attrs={'class':'item-author-nameV2'}).getText()
        data.append(authorName)

        #提取作者简介
        authorDesc=Chat.find('div',attrs={'class':'item-author-descV2'}).getText()
        data.append(authorDesc)
        datalist.append(data)
    return datalist

# 保存数据到Excel中
def saveData(datalist,path):
    #标题栏背景色
    styleBlueBkg = xlwt.easyxf('pattern: pattern solid, fore_colour pale_blue; font: bold on;'); # 80% like
    #创建一个工作簿
    book=xlwt.Workbook(encoding='utf-8',style_compression=0)
    #创建一张表
    sheet=book.add_sheet('最热ChatTop20',cell_overwrite_ok=True)
    #标题栏
    titleList=('Chat标题','订阅人数','作者','作者简介')
    #设置第一列尺寸
    first_col = sheet.col(0)
    first_col.width=256*40
    #写入标题栏
    for i in range(0,4):
        sheet.write(0,i,titleList[i], styleBlueBkg)
    #写入Chat信息  
    for i in range(0,len(datalist)):
        data=datalist[i]
        for j in range(0,4):
            sheet.write(i+1,j,data[j])
    #保存文件到指定路径
    book.save(path)


#网页地址
chatUrl='http://gitbook.cn/'
html=getHTMLText(chatUrl)  
datalist=getData(html)
saveData(datalist,str("topChat.xls"))
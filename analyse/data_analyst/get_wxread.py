import requests
import re
import xlwt

file='~/data/weixindushu.xls' # save folder

def save_excel(write_list,file):
    rowname = ['categoryid',
            'bookId',
            'title',
            'author',
            'cover',
            'version',
            'format',
            'price',
            'payType',
            'maxFreeChapter',
            'cpid',
            'centPrice',
            'category',
            'intro',
            'lastChapterIdx',
            'star',
            'ratingCount']
    book = xlwt.Workbook()  # 新建一个excel
    sheet = book.add_sheet('case1_sheet')  # 添加一个sheet页
    for i in range(len(rowname)):
        sheet.write(0, i, rowname[i])
    row = 1  # 控制行
    for stu in write_list:
        col = 0  # 控制列
        for s in stu:  # 再循环里面list的值，每一列
            sheet.write(row, col, s)
            col += 1
        row += 1
    book.save(file)  # 保存到当前目录下
def get_categoryBookList(category,maxIndex):
    url = 'https://weread.qq.com/web/bookListInCategory/'+category+'?maxIndex='+maxIndex
    html = requests.get(url)
    retext = r'bookInfo(.*?)readingCount'
    pattern = re.compile(retext)
    wr_bookList_item_info = pattern.findall(html.text)
    return(wr_bookList_item_info)
def get_info(text):
    retext = r'"bookId":"(.*?)"'# 取商品ID
    pattern = re.compile(retext)
    bookId_re = pattern.findall(text)
    retext = r'"title":"(.*?)"'# 取商品名称
    pattern = re.compile(retext)
    title_re = pattern.findall(text)
    retext = r'"author":"(.*?)"'# 取作者名称
    pattern = re.compile(retext)
    author_re = pattern.findall(text)
    retext = r'"cover":"(.*?)"'  # 取今日阅读人数
    pattern = re.compile(retext)
    cover_re = pattern.findall(text)
    retext = r'"version":(.*?),'  # 取今日阅读人数
    pattern = re.compile(retext)
    version_re = pattern.findall(text)
    retext = r'"format":"(.*?)"'# 取作者名称
    pattern = re.compile(retext)
    format_re = pattern.findall(text)
    retext = r'"price":(.*?),'  # 取价格
    pattern = re.compile(retext)
    price_re = pattern.findall(text)
    retext = r'"payType":(.*?),'# 取付款
    pattern = re.compile(retext)
    payType_re = pattern.findall(text)
    retext = r'"maxFreeChapter":(.*?),'# 免费章节
    pattern = re.compile(retext)
    maxFreeChapter_re = pattern.findall(text)
    retext = r'"cpid":(.*?),' # 取cpid
    pattern = re.compile(retext)
    cpid_re = pattern.findall(text)
    retext = r'"centPrice":(.*?),'# 取分价
    pattern = re.compile(retext)
    centPrice_re = pattern.findall(text)
    retext = r'"category":"(.*?)"'# 取类目
    pattern = re.compile(retext)
    category_re = pattern.findall(text)
    retext = r'"intro":"(.*?)"'# 取内容
    pattern = re.compile(retext)
    intro_re = pattern.findall(text)
    retext = r'"lastChapterIdx":(.*?),'# 取作者名称
    pattern = re.compile(retext)
    lastChapterIdx_re = pattern.findall(text)
    retext = r'"star":(.*?),'# 取评分
    pattern = re.compile(retext)
    star_re = pattern.findall(text)
    retext = r'"ratingCount":(.*?)}'# 取评分人数
    pattern = re.compile(retext)
    ratingCount_re = pattern.findall(text)
    return_str=bookId_re[0]+'|'+title_re[0]+'|' + author_re[0] + '|'+cover_re[0]+'|'+version_re[0]+'|'+ format_re[0] + '|' + price_re[0] + '|' + payType_re[0] + '|' + maxFreeChapter_re[0] + '|' + cpid_re[0] + '|' + centPrice_re[0] + '|' + category_re[0] + '|' +intro_re[0] + '|' + lastChapterIdx_re[0] + '|' + star_re[0] + '|' + ratingCount_re[0]
    return(return_str)
write_list=[]
html=requests.get('https://weread.qq.com/')
pattern=re.compile('<li class="ranking_allCategory_list_li"><a href="/web/category/(.*?)" class="ranking_allCategory_list_item">')
categoryid=pattern.findall(html.text)
for a in range(len(categoryid)):
    for i in range(50):
        num = i * 20 + 20
        wr_bookList_item_info = get_categoryBookList(categoryid[a], str(num))
        if len(wr_bookList_item_info) == 0:
            break
        for j in range(len(wr_bookList_item_info)):
            write_str = get_info(wr_bookList_item_info[j])
            write_str=categoryid[a]+'|'+write_str
            write_info_list = write_str.split('|')
            write_list.append(write_info_list)
data_list=[]
for i in range(len(write_list)):
    data_list.append(write_list[i][12])
data_list = list(set(data_list))
epub_num=0
reading_num=0
reading_num_all=0
for i in range(len(write_list)):
    write_list_one=write_list[i]
    num_str = write_list_one[16]
    if len(write_list[i]) <18:
        reading_num_all = reading_num_all + int(num_str)
for ii in range(len(data_list)):
    num=0
    epub_num=0
    reading_num = 0
    for i in range(len(write_list)):
        if data_list[ii]==write_list[i][12]:
            if len(write_list[i]) <18:
                if write_list[i][6] == 'epub':
                    epub_num = epub_num + 1
                num_str = write_list[i][16]
                reading_num = reading_num + int(num_str)
                num = num + 1
    reading_percent=reading_num/reading_num_all
    reading_percent = reading_percent * 10000
    reading_percent = int(reading_percent)
    reading_percent =reading_percent/100
    print(data_list[ii]+'类目书籍总计:'+str(num)+'本，其中epub文件的'+str(epub_num)+',今日阅读量'+str(reading_num)+',占整体阅读量'+str(reading_percent)+'%')
save_excel(write_list,file)



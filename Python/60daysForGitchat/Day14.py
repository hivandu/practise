# -*- coding: 'utf-8' -*- 

## Flask

# from flask import Flask
# App = Flask(__name__)

# @App.route('/')
# def index():
#     return 'Hello World!'
# if __name__ == "__main__":
#     App.run(debug=True)

## FastAPI
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class User(BaseModel):
    id: int
    name: str
    friends: list

@app.get("/")
def index():
    return {"admin": "welcome to FastAPI"}

@app.get("/Users/{user_id}")
def read_user(user_id: int, name: str = None):
    return {"user_id": user_id, "name": name}

@app.put("/Users/{user_id}")
def update_user(user_id: int, user: User):
    return {"user_name": user.name, "user_id": user_id}

## Requests
import requests
from lxml import etree
import pandas as pd
import re
import os
import webbrowser
from PIL import Image
from PIL import ImageFilter
def write_file(file_path, file_name, file_content):
    if os.path.exists(file_path) is False:
        os.mkdir(file_path)
    file = os.path.join(file_path, file_name)
    content = file_content
    with open(file, mode='wb') as f:
        f.write(content)
url = 'http://www.weather.com.cn/weather1d/101010100.shtml#input'
with requests.get(url) as res:
    status = res.status_code
    print(status)
    content = res.content
    html = etree.HTML(content)
    # 使用lxml模块提取值
    location = html.xpath('//*[@id="around"]//a[@target="_blank"]/span/text()')
    temperature = html.xpath('//*[@id="around"]/div/ul/li/a/i/text()')
    print(location)
    print(temperature)
    im = Image.open('./img/plotly2.png')
# im.rotate(45).show()
# im.filter(ImageFilter.CONTOUR).show()
# im.thumbnail((128,72),Image.ANTIALIAS).show()

from pydantic import ValidationError
from datetime import datetime
from typing import List
from pydantic import BaseModel

class User(BaseModel):
    id:int
    name='jack guo'
    signup_timestamp: datetime = None
    friends: List[int] = []
    try:
        User(signup_timestamp = 'not datetime', friends=[1,2,3,'not number'])
    except ValidationError as e:
        print(e.json())
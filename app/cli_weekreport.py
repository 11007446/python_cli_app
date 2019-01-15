# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

import datetime
import time

from docx import Document

#from docx.shared import Pt
#from docx.shared import Inches
#from docx.oxml.ns import qn

template_path = "D:/developer/python_cli_app/res/应用开发部模板.docx"
output_path = "D:/科申周报"
# docx 目前版本采用的是不提示直接覆盖原文件模式

#TODO 读取指定路径word模板
weekreportfilename = "应用开发部-周报-{}-蔡靖亮.docx".format(
    time.strftime('%Y%m%d', time.localtime(time.time())))

document = Document(template_path)
now = datetime.datetime.now()

last_week_start = (
    now - datetime.timedelta(days=now.weekday() + 7)).strftime('%Y-%m-%d')
last_week_end = (
    now - datetime.timedelta(days=now.weekday() + 1)).strftime('%Y-%m-%d')
datecontent = "报告时间：	从{}到{}".format(last_week_start, last_week_end)

#TODO 替换模板中的占位符

for paragraph in document.paragraphs:
    if '_datecontent_' in paragraph.text:
        paragraph.text = datecontent
    pass

#TODO 生成word另存
document.save(output_path + "/" + weekreportfilename)

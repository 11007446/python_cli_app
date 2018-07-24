# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

import os
import shutil

IGNORE = ['projCatalog2018']


def parseasp(filepath, yearflag):
    print("{:*^30}".format("文件解析开始"))
    diagfiledir = ""
    paths = filepath.split("/")
    diagfiledir = "/".join(paths[:len(paths) - 1]) + "/分析结果"  # 获取目录所在位置
    print("创建分析结果文件于[%s]" % diagfiledir)
    if (os.path.exists(diagfiledir)):
        shutil.rmtree(diagfiledir)
    os.makedirs(diagfiledir)  # 创建分析文件所在目录
    diagfilepath = "{}/分析结果.txt".format(diagfiledir)

    #TODO: 读取asp程序文件
    '''
    分析结果内容：
    视图Y个列表如下:, 列表如下:
    ************
    ************
    其中带有年度后缀Z个，列表如下:
    ************
    ************
    不带年度后缀A个，列表如下:
    ************
    ************
    合计表XX个
    '''
    diagcontent = ""
    viewcount = 0
    viewlist = []
    tablesufcount = 0
    tablesuflist = []
    tablecount = 0
    tablelist = []
    with open(filepath, 'r', encoding='utf-8') as asp:
        for line in asp:
            if (isingore(line)):
                continue
            if ('TABLE_' in line):
                if (yearflag in line):
                    tablesufcount += 1
                    tablesuflist.append(stripname(line))
                    pass
                else:
                    tablecount += 1
                    tablelist.append(stripname(line))
                    pass
            elif ('VIEW_' in line):
                viewcount += 1
                viewlist.append(stripname(line))
    viewlist.sort()
    tablesuflist.sort()
    tablelist.sort()
    with open(diagfilepath, 'w', encoding='utf-8') as diag:
        diag.write("分析结果内容如下:")
        diag.write("\n")
        diag.write("{:*^30}".format("视图列表如下:".format(viewcount)))
        diag.write("\n")
        diag.writelines([view + '\n' for view in viewlist])
        diag.write("\n")
        diag.write("\n")
        diag.write("{:*^30}".format("其中,带年度后缀列表如下:".format(tablesufcount)))
        diag.write("\n")
        diag.writelines([tablesuf + '\n' for tablesuf in tablesuflist])
        diag.write("\n")
        diag.write("\n")
        diag.write("{:*^30}".format("无年度后缀列表如下:".format(tablecount)))
        diag.write("\n")

        diag.writelines([table + '\n' for table in tablelist])
        diag.write("\n")
        diag.write("\n")
        diag.write("*" * 60)
        diag.write("\n")
        diag.write("总结：视图合计{}个,数据表带年度后缀{}个,无年度后缀{}个,合计共{}个\n".format(
            viewcount, tablesufcount, tablecount, tablesufcount + tablecount))
        diag.write("*" * 60)
        diag.write("\n")
        diag.write("\n")
        diag.write("\n")
        diag.write("{:*^30}".format("无效忽略对象列表如下:"))
        diag.write("\n")
        diag.writelines([ignore + '\n' for ignore in IGNORE])

    print("{:*^30}".format("文件解析完成"))


def isingore(str):
    for ignore in IGNORE:
        if ignore in str:
            return True
    return False


def stripname(str):
    '''
    TABLE_WKY_ATTACHMENT_FILE="wky_attachment_2018_file" '显示PDF文档
    VIEW_notCheckApply_pmp ="view_notCheckApply_pmp"
    '''
    str = str.strip('\n')  # 去末尾换行
    str = str.replace("\"", "")  # 去双引号
    str = str.split("=")[1]  # 获取等号右侧字符串
    if ("\'" in str):  # 如果有注释
        str = str.split("\'")[0]  # 获取单引号左侧字符串
    str = str.strip()  # 最后去除左右空格，得到表/视图名
    return str


if __name__ == '__main__':
    parseasp("D:/developer/python_cli_app/res/wkyTableName.asp", "2018")
    pass

# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

import os
import shutil
#import argparse

VERSION = "0.0.1"

# def clicommand():
#     global VERSION
#     parser = argparse.ArgumentParser()

#     parser.add_argument(
#         "-v", "--version", help="show version", action="store_true")

#     args = parser.parse_args()

#     if (args.version):
#         print("{:*^30}".format(VERSION))

#     #dojob

#     pass


def parsewholefile(filePath, currentYear, specYear):
    '''
    1.根据文件路径[filePath]读取总建表文件，将其中每一个建表语句切割成单独的建表语句文件，放置在总建表文件同级[建表语句]
    2.建表语句中将[currentYear]替换成[specYear]
    '''
    #根据[filePath]创建建表语句目录,若目录已存在则删除整个目录重建
    paths = filePath.split("\\")
    sqlDirPath = "/".join(paths[:len(paths) - 1]) + "/建表语句"  # 获取目录所在位置
    print("创建建表脚本文件于[%s]" % sqlDirPath)
    if (os.path.exists(sqlDirPath)):
        shutil.rmtree(sqlDirPath)

    os.makedirs(sqlDirPath)

    #拆分大脚本文件到单独建表脚本文件
    splitfile(filePath, sqlDirPath)

    #重命名拆分后单表脚本文件, 替换[specYear]
    renamefile(sqlDirPath, currentYear, specYear)


def renamefile(sqlDirPath, currentYear, specYear):
    sqlfiles = os.listdir(sqlDirPath)
    for index, sqlfile in enumerate(sqlfiles):
        newfilename = ""
        # 解析表名
        oldfilename = '{}/{}'.format(sqlDirPath, sqlfile)
        with open(oldfilename, "r") as sql:
            for line in sql:
                if (line.find("CREATE TABLE") >= 0):
                    line = line.strip("\n")  # 删末尾换行
                    line = line[:len(line) - 1]  # 删末尾括号
                    line = line.replace("CREATE TABLE [dbo].[", "").replace(
                        "]", "")  # 剥出表名
                    print(line)
                    newfilename = '{}/{}.sql'.format(sqlDirPath, line)
                    #break
                pass
                line

            pass
        pass
        #文件更名
        os.rename(oldfilename, newfilename)

    pass


def splitfile(filePath, sqlDirPath):
    newfile = open(sqlDirPath + '/sql_0.sql', 'w')
    filecreated = 0
    try:
        with open(filePath, mode='r') as f:
            for index, line in enumerate(f):
                newfile.writelines(line)
                if (index > 0 and line.find("USE [kyproject_ydb]") >= 0):
                    newfile.close()
                    filecreated = filecreated + 1
                    newfile = open(
                        '{}/sql_{}.sql'.format(sqlDirPath, filecreated), 'w')
                    newfile.writelines(line)
                # if (filecreated > 5):
                #     break
    finally:
        if newfile:
            newfile.close()
    pass


if __name__ == '__main__':
    parsewholefile(
        "D:\\cvsdocument\\应用开发部\\科研计划项目\\论证项目管理子系统（课题可行性方案）\\设计文档\\2018年度\\2018年度可行性方案新建表脚本.sql",
        "2018", "2019")
    pass

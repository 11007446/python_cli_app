# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

# feature:
# - 目录层级以 N(4*ws)表示 ws：white space
# - 文件夹： N(4*空格)+"/"+文件夹名称
# - 文件： N(4*空格)+文件名(.后缀)
# - 文件夹与文件名称以及架构描述存放在txt文件中,程序读取结构描述文件构建文件夹格式
# - 使用git工作流模式 建立develop fix release 分支

import os
import shutil
import argparse

VERSION = "0.0.1"


def clicommand():
    global VERSION
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "-v", "--version", help="show version", action="store_true")
    parser.add_argument("spath", help="struct file path")
    parser.add_argument("tpath", help="target path")
    args = parser.parse_args()

    if (args.version):
        print("{:*^30}".format(VERSION))

    doJob(args.spath, args.tpath)
    #       "D:/developer/pathoutput")
    pass


def doJob(structdescfilename, destpath):
    msgoutput = ""
    try:
        buildDirStruct(structdescfilename, destpath)
        msgoutput = "目录创建完毕"
    except BaseException as err:
        clearDir(destpath)
        msgoutput = "目录创建失败 错误：%s" % err
        raise
    finally:
        print(msgoutput)


def liststrut(structdescfilename):
    lines_as_tuples = readfiledelimyyield(structdescfilename, ' ')
    for line_tuple in lines_as_tuples:  # 生成器只能循环一次！
        print(line_tuple)
        pass


def clearDir(destpath):
    if os.path.exists(destpath):
        shutil.rmtree(destpath)

    pass


def buildDirStruct(structdescfilename, destpath):
    '''读取指定项目文件目录描述文件[structdescfilename]， 在指定路径[destpath]下创建目录结构
    '''
    # TODO:
    # - 使用正则来描述分隔符并作为配置项
    # - 若在目标路径已存在目录，询问是否要清空

    makedir(destpath)  # 目标路径若不存在则新建
    #获取文件内容

    lines_as_tuples = readfiledelimyyield(structdescfilename, ' ')

    currentlevelnum = 0  # 起始根层级数
    pathdic = {}  # 初始化路径字典
    for line_tuple in lines_as_tuples:  # 生成器只能循环一次！

        #print("pathdic is : %s" % pathdic)
        tuplelen = len(line_tuple)
        thelevelnum = tuplelen - 1
        fileordir = line_tuple[-1]
        targetpath = ""
        if (thelevelnum == 0):  # 根目录位置
            targetpath = destpath
            makefileordir(destpath, fileordir)
        elif (thelevelnum == currentlevelnum):
            targetpath = pathdic['%d' % currentlevelnum]
            makefileordir(targetpath, fileordir)
            pass
        elif (thelevelnum != currentlevelnum):
            #目录层级变更,此处解析必须是目录，否则报错
            if ("file" == isDirOrFile(fileordir)):
                ThrowCustomErr("错误：目录层次变化请将子目录放在最前！")
                pass
            if (thelevelnum > currentlevelnum):
                targetpath = pathdic['%d' %
                                     currentlevelnum] + fileordir  # 更新当前路径指向

            elif (thelevelnum < currentlevelnum):
                targetpath = pathdic['%d' %
                                     thelevelnum] + fileordir  # 更新当前路径指向
        else:

            ThrowCustomErr("错误：目录结构异常,请检查目录结构！")
            pass
        pathdic['%d' % thelevelnum] = targetpath
        makefileordir(targetpath, fileordir)
        currentlevelnum = thelevelnum  # 更新当前目录层级数

        pass

    pass


def parsedatatuple(data_tuple, currentlevelnum, pathdic, destpath):
    tuplelen = len(data_tuple)
    thelevelnum = tuplelen - 1
    fileordir = data_tuple[-1]
    targetpath = ""
    if (thelevelnum == 0):  # 根目录位置
        pathdic['%d' % thelevelnum] = destpath
        makefileordir(destpath, fileordir)
    elif (thelevelnum == currentlevelnum):
        targetpath = pathdic['%d' % currentlevelnum]
        makefileordir(targetpath, fileordir)
        pass
    elif (thelevelnum != currentlevelnum):
        #目录层级变更,此处解析必须是目录，否则报错
        if ("file" == isDirOrFile(fileordir)):
            ThrowCustomErr("错误：目录层次变化请将子目录放在最前！")
            pass
        if (thelevelnum > currentlevelnum):
            targetpath = pathdic['%d' %
                                 currentlevelnum] + fileordir  # 更新当前路径指向

        elif (thelevelnum < currentlevelnum):
            targetpath = pathdic['%d' % thelevelnum] + fileordir  # 更新当前路径指向
    else:

        ThrowCustomErr("错误：目录结构异常,请检查目录结构！")
        pass
    pathdic['%d' % thelevelnum] = targetpath
    makefileordir(targetpath, fileordir)
    currentlevelnum = thelevelnum  # 更新当前目录层级数


def makefileordir(destpath, fileordir):
    '''根据传参类型创建目录或空文件
    '''
    if ("dir" == isDirOrFile(fileordir)):
        makedir(destpath, fileordir)

    elif ("file" == isDirOrFile(fileordir)):
        makefile(destpath, fileordir)


def makedir(targetpath, dirname=""):
    '''在指定文件路径创建目录
    '''
    newdir = targetpath + dirname
    if not os.path.exists(newdir):
        os.makedirs(newdir)

    pass


def makefile(targetpath, filename):
    '''在指定路径创建空文件
    '''
    open(targetpath + "/" + filename, 'a', encoding='UTF-8').close()
    #os.mknod(targetpath + "/" + datastr) 需要root权限
    pass


def isDirOrFile(datastr):
    '''判断是否目录还是文件
    '''
    # TODO: 目录判断符号由硬编码改为可配置
    if ("/" == datastr[0]):
        return "dir"
    else:
        return "file"


def restoreDelim(delimcount):
    # TODO: 分隔符由硬编码改为可配置
    return "-" * delimcount


def testdatatuple(data_tuple):
    tuplelen = len(data_tuple)
    delimcount = tuplelen - 1

    if tuplelen > 1:
        print("1. tuplelen is %s data is %s,delim is |%s|,filename is |%s|" %
              (tuplelen, data_tuple, restoreDelim(delimcount),
               data_tuple[tuplelen - 1]))
        pass

    else:
        print("2. tuplelen is %s data is %s" % (tuplelen, data_tuple[-1]))
        pass

    pass


def readfiledelimyyield(filepath, delim):
    '''逐行读文件并使用分隔符切割行 返回生成器
    '''
    # FIXME: 读取文件内容会带有回车换行\r， 需要详细了解open
    with open(filepath, mode='r') as f:
        for line in f:
            line = line.strip('\n')  # 去除换行符
            yield tuple(line.split(delim))
    pass


def ThrowCustomErr(errormsg):
    raise Exception(errormsg)


if __name__ == '__main__':
    # doJob("D:/developer/python_cli_app/app/struct_demo.txt",
    #       "D:/developer/pathoutput")
    clicommand()

    pass

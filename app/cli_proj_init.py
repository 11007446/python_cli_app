# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

# TODO: feature
# - 目录层级以 N(4*ws)表示 ws：white space
# - 文件夹： N(4*空格)+"/"+文件夹名称
# - 文件： N(4*空格)+文件名(.后缀)
# - 文件夹与文件名称以及架构描述存放在txt文件中,程序读取结构描述文件构建文件夹格式
# - 使用git工作流模式 建立develop fix release 分支

import os


def buildDirStruct(structdescfilename, destpath):
    """
    读取指定项目文件目录描述文件[structdescfilename]， 在指定路径[destpath]下创建目录结构
    """
    #获取文件内容
    # TODO: 使用正则来描述分隔符并作为配置项
    lines_as_tuples = readfiledelimyyield(structdescfilename, ' ')

    currentlevelnum = 0  # 起始根层级数
    pathdic = {}  # 初始化路径字典
    for line_tuple in lines_as_tuples:  # 生成器只能循环一次！
        # TODO：输出如果有换行符需要清理
        #testdatatuple(line_tuple)
        parsedatatuple(line_tuple, currentlevelnum, pathdic, destpath)
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
        targetpath = pathdic[currentlevelnum]
        makefileordir(targetpath, fileordir)
        pass
    elif (thelevelnum != currentlevelnum):
        #目录层级变更,此处解析必须是目录，否则报错
        if ("file" == isDirOrFile(fileordir)):
            ThrowCustomErr("错误：目录层次变化请将子目录放在最前！")
            pass
        if (thelevelnum > currentlevelnum):
            targetpath = pathdic[currentlevelnum] + fileordir  # 更新当前路径指向

        elif (thelevelnum < currentlevelnum):
            targetpath = pathdic[thelevelnum] + fileordir  # 更新当前路径指向
    else:

        ThrowCustomErr("错误：目录结构异常,请检查目录结构！")
        pass
    pathdic['%d' % thelevelnum] = targetpath
    makefileordir(targetpath, fileordir)
    currentlevelnum = thelevelnum  # 更新当前目录层级数


def makefileordir(destpath, fileordir):
    if ("dir" == isDirOrFile(fileordir)):
        makedir(destpath, fileordir)

    elif ("file" == isDirOrFile(fileordir)):
        makefile(destpath, fileordir)


def makedir(targetpath, dirname):
    """
    在指定文件路径创建目录
    """
    newdir = targetpath + dirname
    if not os.path.exists(newdir):
        os.makedirs(newdir)

    pass


def makefile(targetpath, filename):
    """
    在指定路径创建空文件
    """
    open(targetpath + "/" + filename, 'a').close()
    #os.mknod(targetpath + "/" + datastr) 需要root权限
    pass


def restoreDelim(delimcount):
    # TODO: 分隔符由硬编码改为可配置
    return "-" * delimcount


def isDirOrFile(datastr):
    # TODO: 目录判断符号由硬编码改为可配置
    if ("/" == datastr[0]):
        return "dir"
    else:
        return "file"


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
    with open(filepath, 'r') as f:
        for line in f:
            yield tuple(line.split(delim))
    pass


def ThrowCustomErr(errormsg):
    raise Exception(errormsg)


if __name__ == '__main__':
    # TODO: 测试程序
    buildDirStruct("D:/developer/python_cli_app/app/struct_demo.txt", "")
    pass

# !/usr/bin/env python3
# -*- coding: UTF-8 -*-
import datetime
import os
import click
#import shutil


@click.command()
def genWeekTODO():
    #TODO:
    #获取当前日期
    #根据当前日期获取当前周工作日日期列表
    #在指定位置生成todo文件 周一日期~周五日期.todo
    #todo文件内容添加首行说明 本周工作（日期列表）:

    date_patten = '%Y%m%d'

    today = datetime.date.today()
    firday = today + datetime.timedelta(4 - today.weekday())
    monday = today - datetime.timedelta(today.weekday())
    today_f = datetime.datetime.strftime(today, date_patten)
    firday_f = datetime.datetime.strftime(firday, date_patten)
    monday_f = datetime.datetime.strftime(monday, date_patten)
    todofilefullpath = 'D:/developer/todo/todo/weekwork/{}~{}.todo'.format(
        monday_f, firday_f)
    thisweek = week_get(today)
    #如果有重复文件，控制台提示等待用户确认是否覆盖
    if (os.path.exists(todofilefullpath)):

        answer = input("已有该文件存在,确认覆盖 Y/N ？")  # type:str
        answer = answer.upper
        if (answer == "Y"):
            os.remove(todofilefullpath)
            with open(todofilefullpath, mode='w', encoding='utf-8') as tdf:
                tdf.write("本周工作如下:\n\n")

                for day in thisweek:
                    tdf.write("    {}:".format(day))
                    tdf.write("\n")
                    tdf.write("\n")

                    pass
                pass
            pass
            print("{}生成完毕".format(todofilefullpath))
        else:
            click.echo("保留原有todo文件！")
            return


numcn = {
    1: "一",
    2: "二",
    3: "三",
    4: "四",
    5: "五",
    6: "六",
    7: "日",
}


def week_get(vdate):
    dayscount = datetime.timedelta(days=vdate.isoweekday())
    dayfrom = vdate - dayscount + datetime.timedelta(days=1)
    dayto = vdate - dayscount + datetime.timedelta(days=7)
    print('~~'.join([str(dayfrom), str(dayto)]))
    week7 = []
    i = 0
    while (i <= 6):
        week7.append('周{}[{}]'.format(
            numcn.get(i + 1), str(dayfrom + datetime.timedelta(days=i))))
        # week7.append('周' + numcn.get(i + 1) + '' +
        #              str(dayfrom + datetime.timedelta(days=i)))
        i += 1
    return week7


if __name__ == '__main__':

    genWeekTODO()

    pass

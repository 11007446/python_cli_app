# !/usr/bin/env python3
# -*- coding: UTF-8 -*-
import datetime


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

    # with open(todofilefullpath, mode='w') as tdf:
    #     tdf.writelines("本周工作（{},{},{},{},{}）:".format())
    #     pass

    print(week_get(today))

    print(today_f)
    print(firday_f)
    print(monday_f)
    print(todofilefullpath)
    print(week_get(today))
    pass


def week_get(vdate):
    dayscount = datetime.timedelta(days=vdate.isoweekday())
    dayfrom = vdate - dayscount + datetime.timedelta(days=1)
    dayto = vdate - dayscount + datetime.timedelta(days=7)
    print('~~'.join([str(dayfrom), str(dayto)]))
    week7 = []
    i = 0
    while (i <= 6):
        week7.append('周' + str(i + 1) + ': ' +
                     str(dayfrom + datetime.timedelta(days=i)))
        i += 1
    return week7


if __name__ == '__main__':
    genWeekTODO()
    pass
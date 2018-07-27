# !/usr/bin/env python3
# -*- coding: UTF-8 -*-
#Filename:label.py

from collections import OrderedDict
from prettytable import PrettyTable
import datetime
import traceback
import sys
from cli_logo import showlogo_2


def exception_to_string(excp):
    stack = traceback.extract_stack()[:-3] + traceback.extract_tb(
        excp.__traceback__)  # add limit=??
    pretty = traceback.format_list(stack)
    return ''.join(pretty) + '\n  {} {}'.format(excp.__class__, excp)


class _Command:
    '''命令行命令装饰类
    title:        命令名称
    desc:         命令功能简述
    need_confirm: 命令是否需要用户确认 [True/False,default False]
    '''
    def __init__(self, func, title, desc=None, need_confirm=False):
        self.func = func
        self.title = title
        self.desc = desc
        self.need_confirm = need_confirm

    def confirm(self):
        if not self.need_confirm:
            return True
        choice = input("输入 yes 或 Y 确认执行命令 {} ：".format(self.title))
        if choice == "yes" or choice == "Y":
            return True
        print("输入内容错误[{}],确认没有通过".format(choice))
        return False

    def run(self):
        if self.confirm():
            self.func()
            return True
        return False


class _CliTool:
    '''命令行工具入口

    '''
    def __init__(self):
        self.cmds = OrderedDict()
        self.hotkeys = dict()

    def add_cmd(self, cmd):
        self.cmds[str(len(self.cmds) + 1)] = cmd
        if cmd.desc:
            if cmd.desc in self.hotkeys:
                print("\n热键冲突,{}和{}".format(cmd.title,
                                            self.hotkeys[cmd.desc].title))
            else:
                self.hotkeys[cmd.desc] = cmd

    def show_cmds(self):

        table = PrettyTable(["ID", "指令", "简述"])
        table.align["指令"] = "l"  # 左对齐

        for cmd_id in self.cmds:
            if not self.cmds[cmd_id].desc:
                desc = ''
            else:
                desc = self.cmds[cmd_id].desc
            table.add_row([cmd_id, self.cmds[cmd_id].title, desc])
        print("\n\n")
        print(showlogo_2())
        print("\n\n")
        print(table)

    def choice_cmd(self):
        while 1:
            cmd_id = input("选择指令：")
            if cmd_id in self.cmds:
                return self.cmds[cmd_id]
            elif cmd_id in self.hotkeys:
                return self.hotkeys[cmd_id]
            else:
                print('输入的ID或者热键不存在，请重新选择')

    def run(self):
        while True:
            try:
                self.show_cmds()
                cmd = self.choice_cmd()
                if cmd.run():
                    print('\n执行完成 {}\n'.format(datetime.datetime.now()))
            except Exception as e:
                print(exception_to_string(e))


class cli:
    _cli_tool = _CliTool()

    @classmethod
    def add(cls, title, desc=None, need_confirm=False):
        def wrap(func):
            cls._cli_tool.add_cmd(_Command(func, title, desc, need_confirm))

        return wrap

    @classmethod
    def run(cls):
        cls._cli_tool.run()


if __name__ == '__main__':

    # 使用展示

    @cli.add("svn update", desc='更新', need_confirm=True)
    def svn_update():
        print("svn update!!!")

    @cli.add("svn revert")
    def svn_revert():
        print("svn revert!!!")

    @cli.add("svn clean up")
    def svn_clean_up():
        print("svn clean up!!!")

    @cli.add("exit")
    def exit_cli():
        sys.exit()

    cli.run()

# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

import click


@click.command()
def hello():
    click.echo('Hello World!')


def compose_greet_func(name):
    sname = name

    def get_message(thesname):
        # thatsname = sname 该赋值语句报错，提示sname在赋值前被引用，此处sname被认为是嵌套函数所在作用域的sname变量
        nonlocal sname  # 明确声明此处sname是外作用域的sname变量
        thatsname = sname + " in get_message "
        #sname = "123123213"  # 此处sname被认为是本地变量

        return "Hello there " + thatsname + sname + thesname + "!"

    return get_message(sname)  # 此处sname为 compose_greet_func 范围内变量


if __name__ == '__main__':
    #hello()

    greet = compose_greet_func("John")
    print(greet)

    pass

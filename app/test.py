# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

# TODO：闭包研究


def pregnant():
    childcount = 0

    def child():
        nonlocal childcount
        childcount = childcount + 1
        print(childcount)
    return child


if __name__ == '__main__':
    son1 = pregnant()
    son2 = pregnant()
    son3 = pregnant()
    son4 = pregnant()

    pass

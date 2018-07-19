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



def printme(str):
    print(str)



if __name__ == '__main__':
    # son = pregnant()
    # son()
    # son()
    # son()
    # son()
    # son()
    printme("print str")
    printme(str="the str")
    pass

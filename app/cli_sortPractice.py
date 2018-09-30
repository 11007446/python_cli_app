# !/usr/bin/env python3
# -*- coding: UTF-8 -*-


def sortdeco(func):
    def func_wrapper(*args, **kwargs):
        print("sort start")
        func(*args, **kwargs)
        print("sort end")
    return func_wrapper


def selectsort(plist):
    plen = len(plist)
    for index in range(0, plen):
        for index_inner in range(index + 1, plen):
            if (plist[index] > plist[index_inner]):
                plist[index_inner], plist[index] = plist[index], plist[
                    index_inner]
            pass

        pass

    print(plist)
    pass



@sortdeco
def portsort(list_tosort):
    list_len = len(list_tosort)
    for index in range(list_len)[::-1]:
        for index_inner in range(index):

            if (list_tosort[index_inner] > list_tosort[index_inner + 1]):
                list_tosort[index_inner], list_tosort[
                    index_inner + 1] = list_tosort[index_inner +
                                                   1], list_tosort[index_inner]
            print(list_tosort)
            pass

    pass




def insertsort():
    pass


if __name__ == '__main__':
    list_tosort = [5, 1, 2, 7, 9, 11, 5, 7]
    [1, 2, 3, 6, 5, 4]
    #
    #sortdeco(portsort)(list_tosort)
    #selectsort(list_tosort)
    portsort(list_tosort)

    print(list_tosort)

    pass

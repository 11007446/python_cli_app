# !/usr/bin/env python3
# -*- coding: UTF-8 -*-


def showlogo_3(indent=None):
    if not indent:
        indent = 10
    print("\n\n")
    print("    ___   {}    ___   {}    ___  \n".format(" " * indent,
                                                       " " * indent))
    print("   /\  \  {}   /\  \  {}   /\__\ \n".format(" " * indent,
                                                       " " * indent))
    print("  /::\  \ {}  _\:\  \ {}  /:/  / \n".format(" " * indent,
                                                       " " * indent))
    print(" /:/\:\__\{} /\/::\__\{} /:/__/  \n".format(" " * indent,
                                                       " " * indent))
    print(" \:\ \/__/{} \::/\/__/{} \:\  \  \n".format(" " * indent,
                                                       " " * indent))
    print("  \:\__\  {}  \/__/   {}  \:\__\ \n".format(" " * indent,
                                                       " " * indent))
    print("   \/__/  {}          {}   \/__/ \n".format(" " * indent,
                                                       " " * indent))
    print("\n\n")
    pass


def showlogo_2(indent=None):
    if not indent:
        indent = 7
    logo = []
    logo.append("    ,o888888o.               8 8888 8 8888        ")
    logo.append("   8888     `88.             8 8888 8 8888        ")
    logo.append(",8 8888       `8.            8 8888 8 8888        ")
    logo.append("88 8888                      8 8888 8 8888        ")
    logo.append("88 8888                      8 8888 8 8888        ")
    logo.append("88 8888                      8 8888 8 8888        ")
    logo.append("88 8888           88.        8 8888 8 8888        ")
    logo.append("`8 8888       .8' `88.       8 888' 8 8888        ")
    logo.append("   8888     ,88'    `88o.    8 88'  8 8888        ")
    logo.append("    `8888888P'        `Y888888 '    8 888888888888")
    indentlogo = []
    for index, char in enumerate(logo):
        # 17
        indentlogo.append(char[:17] + " " * indent + char[18:35] + " " * indent + char[36:])
    pass
    return ("\n".join(indentlogo))


def showlogo_1():
    indent = 10
    print(
        "          _____          {}          _____          {}          _____     \n".
        format(" " * indent, " " * indent))
    print(
        "         /\    \         {}         /\    \         {}         /\    \    \n".
        format(" " * indent, " " * indent))
    print(
        "        /::\    \        {}        /::\    \        {}        /::\____\   \n".
        format(" " * indent, " " * indent))
    print(
        "       /::::\    \       {}        \:::\    \       {}       /:::/    /   \n".
        format(" " * indent, " " * indent))
    print(
        "      /::::::\    \      {}         \:::\    \      {}      /:::/    /    \n".
        format(" " * indent, " " * indent))
    print(
        "     /:::/\:::\    \     {}          \:::\    \     {}     /:::/    /     \n".
        format(" " * indent, " " * indent))
    print(
        "    /:::/  \:::\    \    {}           \:::\    \    {}    /:::/    /      \n".
        format(" " * indent, " " * indent))
    print(
        "   /:::/    \:::\    \   {}           /::::\    \   {}   /:::/    /       \n".
        format(" " * indent, " " * indent))
    print(
        "  /:::/    / \:::\    \  {}  _____   /::::::\    \  {}  /:::/    /        \n".
        format(" " * indent, " " * indent))
    print(
        " /:::/    /   \:::\    \ {} /\    \ /:::/\:::\    \ {} /:::/    /         \n".
        format(" " * indent, " " * indent))
    print(
        "/:::/____/     \:::\____\{}/::\    /:::/  \:::\____\{}/:::/____/          \n".
        format(" " * indent, " " * indent))
    print(
        "\:::\    \      \::/    /{}\:::\  /:::/    \::/    /{}\:::\    \          \n".
        format(" " * indent, " " * indent))
    print(
        " \:::\    \      \/____/ {} \:::\/:::/    / \/____/ {} \:::\    \         \n".
        format(" " * indent, " " * indent))
    print(
        "  \:::\    \             {}  \::::::/    /          {}  \:::\    \        \n".
        format(" " * indent, " " * indent))
    print(
        "   \:::\    \            {}   \::::/    /           {}   \:::\    \       \n".
        format(" " * indent, " " * indent))
    print(
        "    \:::\    \           {}    \::/    /            {}    \:::\    \      \n".
        format(" " * indent, " " * indent))
    print(
        "     \:::\    \          {}     \/____/             {}     \:::\    \     \n".
        format(" " * indent, " " * indent))
    print(
        "      \:::\    \         {}                         {}      \:::\    \    \n".
        format(" " * indent, " " * indent))
    print(
        "       \:::\____\        {}                         {}       \:::\____\   \n".
        format(" " * indent, " " * indent))
    print(
        "        \::/    /        {}                         {}        \::/    /   \n".
        format(" " * indent, " " * indent))
    print(
        "         \/____/         {}                         {}         \/____/    \n".
        format(" " * indent, " " * indent))
    print("\n")


if __name__ == '__main__':
    showlogo_2()
    pass

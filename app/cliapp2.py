# !/usr/bin/env python3
# -*- coding: UTF-8 -*-

import optparse

from scapy.all import srp, Ether, ARP, conf


def arping(iprange="10.0.1.0/24"):
    """Arping function takes IP Address or Network, returns nested mac/ip list"""

    conf.verb = 0
    ans, unans = srp(
        Ether(dst="ff:ff:ff:ff:ff:ff") / ARP(pdst=iprange), timeout=2)

    collection = []
    for snd, rcv in ans:
        result = rcv.sprintf(r"%ARP.psrc% %Ether.src%").split()
        collection.append(result)
    return collection


def main():
    """Runs program and handles command line options"""

    p = optparse.OptionParser(
        description=' Finds MAC Address of IP address(es)',
        prog='pyarping',
        version='pyarping 0.1',
        usage='%prog [10.0.1.1 or 10.0.1.0/24]')  # CLI 程序自说明

    options, arguments = p.parse_args()
    if len(arguments) == 1:
        values = arping(iprange=arguments)
        for ip, mac in values:
            print(ip, mac)
    else:
        #p.print_help()
        print("no input")


if __name__ == '__main__':
    main()
    pass

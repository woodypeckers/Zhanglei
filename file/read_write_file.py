#!/usr/bin/env python
# -*- coding: utf-8 -*-
# anuther :zhanglei

def read_file():
    #afile = file('data.txt', 'r')
    afile = open('data_write.txt','r')
    for i in afile.readlines():
        print i.strip().decode('utf-8')
    afile.close()

def write_file():
    name_list=[u'张三',u'李四',u'王五']
    afile=open('data_write.txt','w')
    for i in name_list:
        afile.write(i.encode('utf-8')+'\n')
    afile.close()
    import os

if __name__=='__main__':
    read_file()
    #write_file()
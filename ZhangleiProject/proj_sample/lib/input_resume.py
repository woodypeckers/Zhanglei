#!/usr/bin/env python
# -*- coding: utf-8 -*-
# author: zhanglei

def send_mail():
    pass


def get_strftime():
    pass


def zhaopin_read_excel(path):
    import xlrd
    ret_dict = {}
    data = xlrd.open_workbook(path)
    sheet = data.sheets()[0]

    nrows = sheet.nrows
    for i in range(nrows):
        if i == 0:
            continue
        ret_dict[i] = sheet.row_values(i)
        #print "第%s行是 %s" % (i, sheet.row_values(i))
    return ret_dict


if __name__ == '__main__':
    #data = read_excel(r"F:\GitHub\proj_demo\data\login_account.xlsx")
    data = zhaopin_read_excel(r"E:\LearnPython\proj_sample\data\login_account.xlsx")
    print type(data)
    print data.get(1)
    print data.get(2)
    print data.get(3)

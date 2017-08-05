*** Settings ***
Library           Selenium2Library
Resource          业务关键字.robot
Resource          公共关键字.robot

*** Test Cases ***
新建的用户李四登录
    管理员登陆成功    lisi    123456    退出

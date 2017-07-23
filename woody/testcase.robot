*** Settings ***
Resource          resources.robot
Library           Selenium2Library

*** Test Cases ***
验证登录成功_帐号密码正确
    [Template]    验证公共登录逻辑
    admin    123456    退出

验证登录失败_用户名不正确
    [Template]    验证公共登录逻辑
    abcd    123456    用户名不存在

验证登录失败_密码错误
    [Template]    验证公共登录逻辑
    admin    11111111    用户名和密码不匹配

正常登录
    Given Browser "打开登录页面1"
    when 用户 "admin" 和 "123456" 登录
    then 成功登录
    关闭浏览器

*** Keywords ***
验证公共登录逻辑
    [Arguments]    ${username}    ${password}    ${verify_contain}
    打开登录页面    http://localhost/bugfree
    输入用户名    ${username}
    输入密码    ${password}
    点击登录
    等待3秒
    验证登录状态    ${verify_contain}
    [Teardown]    Close Browser

Browser "打开登录页面1"
    打开登录页面1

用户 "${username}" 和 "${password}" 登录
    输入用户名    ${username}
    输入密码    ${password}
    点击登录

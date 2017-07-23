*** Settings ***
Library           Selenium2Library

*** Variables ***
${server}         localhost/bugfree
${browser}        firefox
${delay}          0
${valid user}     admin
${valid password}    123456
${welcome url}    http://${server}/index.php/bug/list/7
${login url}      http://${server}/
${error url}      http://${server}/error.html

*** Keywords ***
打开登录页面
    [Arguments]    ${cur_url}
    Open Browser    ${cur_url}    firefox

输入用户名
    [Arguments]    ${username}
    Input Text    id=LoginForm_username    ${username}

输入密码
    [Arguments]    ${password}
    Input Password    id=LoginForm_password    ${password}

点击登录
    Click Button    id=SubmitLoginBTN

验证登录状态
    [Arguments]    ${verify_contain}
    Page Should Contain    ${verify_contain}

等待3秒
    Sleep    3s

成功登录
    Location Should Be    ${welcome url}
    Title Should Be    BugFree

打开登录页面1
    Open Browser    ${login url}    ${browser}
    Maximize Browser Window

关闭浏览器
    Close All Browsers

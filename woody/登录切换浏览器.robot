*** Settings ***
Library           Selenium2Library

*** Test Cases ***
case1
    Open Browser    http://localhost/bugfree    ff    bugfree
    Open Browser    http://www.baidu.com    chrome    baidu
    Switch Browser    bugfree
    Input Text    id=LoginForm_username    admin
    Input Password    id=LoginForm_password    123456
    Close All Browsers

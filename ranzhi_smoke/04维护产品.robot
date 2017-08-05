*** Settings ***
Library           Selenium2Library
Resource          业务关键字.robot
Resource          公共关键字.robot

*** Test Cases ***
TC01_新建产品
    管理员登陆成功    admin    admin8888    退出
    选择frame跳转到产品
    Sleep    2s
    Click Element    xpath=//*[@id="menuActions"]/a    #点击添加产品
    Sleep    2s
    Input Text    id=name    测试产品名称
    Input Text    id=code    product001
    Select From List By Value    id=line    default
    Select From List By Value    id=type    service
    Select From List By Value    id=status    normal
    Click Element    xpath=//*[@id="submit" and @type="submit"]
    Page Should Contain    测试产品名称

TC02_新增默认产品线
    管理员登陆成功    admin    admin8888    退出
    选择frame跳转到产品
    #Click Element    xpath=.//*[@id='mainNavbar']/div[2]/ul/li[7]/a
    Click Link    维护产品线
    sleep    2s
    Input Text    xpath=//*[@id="values[]"]    默认产品线    #如果有多个怎么定位
    Click Element    id=submit
    Page Should Contain    默认产品线

TC03_编辑产品
    管理员登陆成功    admin    admin8888    退出
    选择frame跳转到产品
    #Click Link    编辑
    Click Element    xpath=//*[@id="productList"]/tbody/tr/td[8]/a[1]    #点击编辑
    Sleep    2s
    Input Text    id=name    测试产品名称(编辑)
    sleep    1s
    Input Text    id=code    producteditor001
    sleep    1s
    Select From List By Value    id=line    default
    Select From List By Value    id=type    real
    sleep    1s
    Select From List By Value    id=status    developing
    sleep    1s
    Click Element    xpath=//*[@id="submit" and @type="submit"]
    Page Should Contain    测试产品名称(编辑)

TC04_删除产品
    管理员登陆成功    admin    admin8888    退出
    选择frame跳转到产品
    #Click Link    删除
    Click Element    xpath=//*[@id="productList"]/tbody/tr/td[8]/a[2]
    sleep    2s
    Choose Cancel On Next Confirmation
    Confirm Action

test_zhaopin
    Open Browser    http://test.zhaopin.oa.com/Resumeactive    chrome
    Sleep    2s
    Input Text    id=txtLoginName    kals
    Input Password    id=txtPassword    123456
    Click Element    id=ibnLogin
    #Select From List By Value    xpath=//*[@id="searchConditionContents"]/div[1]/div/select    string:7
    sleep    2s
    Select Checkbox    id=IncludeChildTag
    sleep    1s
    Select Checkbox    id=MergeSearchTag
    sleep    1s
    Unselect Checkbox    id=IncludeChildTag
    Click Element    xpath=//*[@id="operationSearch"]/div[1]/section[25]/section[1]/span/img[3]
    sleep    1s
    Click Element    xpath=//*[@id="operationSearch"]/div[1]/section[25]/section[2]/span[2]/img[4]
    Select From List By Value    id=Packages    999999
    sleep    2s
    Click Button    id=fsetting
    sleep    2s
    #Select Frame    name=hrcbox1501752010426
    Select Frame    xpath=.//*[@id="hrcboxLoadedContent"]/iframe
    sleep    1s
    Click Element    xpath=.//*[@id='PushBy']/a
    sleep    1s
    Click Button    id=arrow-right
    sleep    1s
    Click Element    xpath=.//*[@id='PushBy']/a
    Click Button    id=arrow-left
    Click Button    xpath=//*[@id="div_setting"]/table/tbody/tr[3]/td[3]/div/button[1]    #点击确定
    sleep    1s
    Click Element    xpath=.//*[@id='hrcboxLoadedContent']/div/table/tbody/tr[3]/td[2]/a
    sleep    3s
    Unselect Frame
    Select Checkbox    id=IncludeChildTag
    sleep    1s
    Input Text    id=Name    张磊
    Click Button    xpath=//*[@id="operationSearch"]/div[2]/button[1]    #点击查询按钮
    #Select From List By Value    运营人
    sleep    5s
    Click Button    xpath=//*[@id="tablecontainer"]/div/div[1]/div[1]/div[2]/div/button    #设置显示字段
    sleep    1s
    Select Checkbox    xpath=//*[@id="tablecontainer"]/div/div[1]/div[1]/div[2]/div/ul/li[44]/label/input
    sleep    1s
    Click Button    xpath=//*[@id="tablecontainer"]/div/div[1]/div[1]/div[2]/div/button

*** Keywords ***
选择frame跳转到产品
    Click Button    xpath=//*[@id='s-menu-1']/button
    Select Frame    id=iframe-1
    Click Link    产品

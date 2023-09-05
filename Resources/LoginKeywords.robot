*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
Open Test Browser
    [Arguments]    ${baseURL}   ${browserName}
    Open Browser    ${baseURL}  ${browserName}
    Maximize Browser Window

Enter Username
    [Arguments]    ${userName}
    Input Text    ${fieldUserName}  ${userName}

Enter Password
    [Arguments]    ${password}
    Input Text    ${fieldPassword}  ${password}

Click Login
    Click Button    ${loginButton}

Verify Successful Login
    Title Should Be    Swag Labs

Close Test Browser
    Close All Browsers

*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/CommonVariables.py
Resource    ../Resources/LoginKeywords.robot

*** Variables ***

*** Test Cases ***
LoginTest
    Open Test Browser    ${baseUrl}  ${browserName}
    LoginProcess
    Close Test Browser

*** Keywords ***
LoginProcess
    Enter Username    ${userName}
    Enter Password    ${password}
    Click Login
    Sleep   5 seconds
    Verify Successful Login


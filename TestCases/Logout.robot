*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/CommonVariables.py
Resource    ../Resources/LoginKeywords.robot
#Resource    ../TestCases/Login.robot
Resource    ../Resources/LogoutKeywords.robot


Test Setup      Open Test Browser    ${baseUrl}  ${browserName}
Test Teardown    Close Test Browser


*** Variables ***


*** Test Cases ***
LogoutTest
    #Open Test Browser    ${baseUrl}  ${browserName}
    Enter Username    ${userName}
    Enter Password    ${password}
    Click Login
    Sleep   5 seconds
    #LoginProcess
    OpenMenuOptions
    Sleep   5 seconds
    ClickLogout
    #Close Test Browser




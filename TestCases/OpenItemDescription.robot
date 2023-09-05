*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py
Variables    ../Variables/CommonVariables.py
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/OpenItemDescriptionKeywords.robot
#Resource    ../TestCases/Login.robot
Resource    ../Resources/LogoutKeywords.robot

Test Setup      Open Test Browser    ${baseUrl}  ${browserName}
Test Teardown    Close Test Browser

*** Variables ***
${itemName}     Sauce Labs Backpack
*** Test Cases ***
OpenItem
    Enter Username    ${userName}
    Enter Password    ${password}
    Click Login
    Sleep   5 seconds
    #LoginProcess
    ClickItemTitle
    Sleep   5 seconds
    Verify Description  ${itemName}
    OpenMenuOptions
    Sleep   5 seconds
    ClickLogout
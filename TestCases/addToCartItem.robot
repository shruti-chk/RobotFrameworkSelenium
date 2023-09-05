*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py
Variables    ../Variables/CommonVariables.py
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/OpenItemDescriptionKeywords.robot
#Resource    ../TestCases/Login.robot
Resource    ../Resources/LogoutKeywords.robot
Resource    ../Resources/addToCartKeywords.robot

Test Setup      Open Test Browser    ${baseUrl}  ${browserName}
Test Teardown    Close Test Browser

*** Variables ***
${itemName}     Sauce Labs Backpack
*** Test Cases ***
AddItem
    Enter Username    ${userName}
    Enter Password    ${password}
    Click Login
    Sleep   5 seconds
    #LoginProcess
    ClickItemTitle
    Sleep   5 seconds
    Verify Description  ${itemName}
    Click AddToCartButton
    Verify Cart Adding
    OpenMenuOptions
    Sleep   5 seconds
    ClickLogout

*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
OpenMenuOptions
    Click Button    ${menuButton}

ClickLogout
    Click Link    ${logOutLink}

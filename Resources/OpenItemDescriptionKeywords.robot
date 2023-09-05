*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
ClickItemTitle
    Click Link    ${itemSelectionLink}

Verify Description
    [Arguments]    ${itemName}
    Element Text Should Be       ${itemNameLoc}   ${itemName}



*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
Click AddToCartButton
    Click Button    ${addToCartButton}

Verify Cart Adding
    Element Should Not Be Visible    ${addToCartButton}
    Element Should Be Visible    ${removeFromCart}

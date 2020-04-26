*** Settings ***
Library        SeleniumLibrary
Variables      Core/EnvironmentConfigs/PROD.py

*** Keywords ***
Base web test setup
    Open Browser   about:blank   ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed   1s

Base web test teardown
    Close Browser

the user launches eBAY app
    Go To    ${EBAY_LOGIN_URL}
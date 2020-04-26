*** Settings ***
Resource       Resources/PageObjects/Common.robot

*** Variables ***
${TEXT_SearchProduct}           xpath=//input[@aria-label='Search for anything']
${BUTTON_Search}           xpath=//input[@value='Search']


*** Keywords ***
the user searches for a product
    [Arguments]     ${productName}
    input text   ${TEXT_SearchProduct}    ${productName}

the user clicks on search
    click element   ${BUTTON_Search}

the user selects the product randomly
    ${num}=   generate random string   length=1   chars=[NUMBERS]
    log to console    ${num}
    click element        xpath=//li[contains(@class,'s-item')][${num}]


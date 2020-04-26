*** Settings ***
Resource       Resources/PageObjects/Common.robot

*** Variables ***
${LINK_Sign_In}            xpath=//a[text()='Sign in']
${TEXT_Username}           id=userid
${BUTTON_Continue}         id=signin-continue-btn
${TEXT_Password}      id=pass
${BUTTON_Login}            id=sgnBt

*** Keywords ***
the user clicks on sign in
    click element     ${LINK_Sign_In}

the user enters username
    input text            ${TEXT_Username}   ${LOGIN_USERNAME}

the user clicks on continue
    click element         ${BUTTON_Continue}

the user enters password
    wait until element is visible    ${TEXT_Password}
    input text            ${TEXT_Password}     ${LOGIN_PASSWORD}

the user clicks on login button
    click element         ${BUTTON_Login}


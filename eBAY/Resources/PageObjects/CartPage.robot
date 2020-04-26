*** Settings ***
Resource       Resources/PageObjects/Common.robot

*** Variables ***
${BUTTON_AddToCart}           id=isCartBtn_btn
${BUTTON_NoThanks}        xpath=//button[text()='No thanks']
${BUTTON_GoToCheckout}        xpath=//button[text()='Go to checkout']

*** Keywords ***
the user adds the product to the cart
    click element     ${BUTTON_AddToCart}

the user does not take the protection plan
    click element    ${BUTTON_NoThanks}

the user clicks on go to checkout
    click element   ${BUTTON_GoToCheckout}




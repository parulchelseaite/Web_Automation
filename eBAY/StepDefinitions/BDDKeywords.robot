*** Settings ***
Resource        Resources/PageObjects/LoginPage.robot
Resource        Resources/PageObjects/SearchPage.robot
Resource        Resources/PageObjects/CartPage.robot


*** Keywords ***
the user opens eBAY application
    the user launches eBAY app

the user logs in eBAY with valid username and password
    the user clicks on sign in
    the user enters username
    the user clicks on continue
    the user enters password
    the user clicks on login button

the user searches for a product in 'search for anything' bar
    the user searches for a product     Sony TV
    the user clicks on search
    the user selects the product randomly

the user adds it to the cart
    the user adds the product to the cart
    the user does not take the protection plan

the user is able to purchase the item
    the user clicks on go to checkout




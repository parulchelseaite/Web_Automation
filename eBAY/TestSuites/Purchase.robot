*** Settings ***
Resource        StepDefinitions/BDDKeywords.robot
Test Setup      Base web test setup
Test Teardown   Base web test teardown

*** Test Cases ***
Verify that user is able to login and purchase an item from eBAY
    [Tags]    login_addCart
    Given the user opens eBAY application
    And the user logs in eBAY with valid username and password
    And the user searches for a product in 'search for anything' bar
    When the user adds it to the cart
    Then the user is able to purchase the item




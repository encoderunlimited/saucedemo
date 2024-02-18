*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open Chrome Browser
    Open Browser  https://www.saucedemo.com/  chrome
Verify Login Screen username
    Wait Until Page Contains Element  id:user-name
    Input Text  id:user-name  standard_user
Verify Login Screen Password
    Wait Until Page Contains Element  id:password
    Input Text  id:password  secret_sauce
Verify the Login Button and Click on to the Button
    Wait Until Page Contains Element  id:login-button
    Click Button  id:login-button
Verify the Next Screen After Click onto Login Button
    ${expected_url}=  Set Variable  https://www.saucedemo.com/inventory.html
    ${CURR_URL}=  Get Location
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_url}  ${CURR_URL}
    ${expected_title}=  Set Variable  Swag Labs
    ${CURR_TITLE}=  Get Title
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_title}  ${CURR_TITLE}
Verify Cart Checkout
    Wait Until Page Contains Element  id:add-to-cart-sauce-labs-backpack
    Click Button  id:add-to-cart-sauce-labs-backpack
    Wait Until Page Contains Element  class:shopping_cart_link
    Click Element  class:shopping_cart_link
    Wait Until Page Contains Element  id:checkout
    Click Button  id:checkout
    ${expected_url}=  Set Variable  https://www.saucedemo.com/checkout-step-one.html
    ${CURR_URL}=  Get Location
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_url}  ${CURR_URL}
    ${expected_title}=  Set Variable  Swag Labs
    ${CURR_TITLE}=  Get Title
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_title}  ${CURR_TITLE}
    Wait Until Page Contains Element  id:first-name
    Input Text  id:first-name  test
    Wait Until Page Contains Element  id:last-name
    Input Text  id:last-name  test
    Wait Until Page Contains Element  id:postal-code
    Input Text  id:postal-code  test
    Wait Until Page Contains Element  id:continue
    Click Button  id:continue
    ${expected_url}=  Set Variable  https://www.saucedemo.com/checkout-step-two.html
    ${CURR_URL}=  Get Location
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_url}  ${CURR_URL}
    Wait Until Page Contains Element  id:finish
    Click Button  id:finish
    ${expected_url}=  Set Variable  https://www.saucedemo.com/checkout-complete.html
    ${CURR_URL}=  Get Location
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_url}  ${CURR_URL}
    Wait Until Page Contains Element  id:back-to-products
    Click Button  id:back-to-products
    ${expected_url}=  Set Variable  https://www.saucedemo.com/inventory.html
    ${CURR_URL}=  Get Location
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_url}  ${CURR_URL}


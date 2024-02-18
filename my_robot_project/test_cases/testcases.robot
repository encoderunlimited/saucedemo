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
    ${expected_url}=  Set Variable  https://www.saucedemo.com/inventory.html
    ${CURR_URL}=  Get Location
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_url}  ${CURR_URL}
    ${expected_title}=  Set Variable  Swag Labs
    ${CURR_TITLE}=  Get Title
    Wait Until Keyword Succeeds  10x  3s  Should Be Equal  ${expected_title}  ${CURR_TITLE}
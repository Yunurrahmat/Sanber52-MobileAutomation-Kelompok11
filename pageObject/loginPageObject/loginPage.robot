*** Settings ***
Resource        ../base/base.robot
Resource        ../homePageObject/homePage.robot
Variables       loginPage_locators.yaml

*** Variables ***
${VALID_EMAIL}              support@ngendigital.com
${VALID_PASSWORD}           abc123

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${emailInput_LoginPage}
    Wait Until Element Is Visible    ${passwordInput_LoginPage}
    Wait Until Element Is Visible    ${signIn_button_LoginPage}

Input User Email on Login Page 
    [Arguments]    ${email}
    Wait Until Element Is Visible     ${emailInput_LoginPage} 
    Input Text                        ${emailInput_LoginPage}   ${email}

Input User Password on Login Page
    Wait Until Element Is Visible     ${passwordInput_LoginPage}     
   [Arguments]    ${password}
    Input Text                        ${passwordInput_LoginPage}   ${password}

Click Sign In on Login Page 
   Click Element    ${signIn_button_LoginPage}

Login with valid credentials
    [Arguments]                          ${email}=${VALID_EMAIL}         ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button on Home Page
    Verify Login Appears
    Input User Email on Login Page       ${email}
    Input User Password on Login Page    ${password}
    Click Sign In on Login Page 
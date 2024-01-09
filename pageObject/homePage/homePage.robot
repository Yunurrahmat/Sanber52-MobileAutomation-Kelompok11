*** Settings ***
Resource            ../base.robot
Variables           homepage-locators.yaml


*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${loginButton}
    Wait Until Element Is Visible    ${searchButton}
    Wait Until Element Is Visible    ${checkInButton}

*** Settings ***
Resource          ../pageObject/base/base.robot
Resource          ../pageObject/homePageObject/homePage.robot
Resource          ../pageObject/loginPageObject/loginPage.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Variables ***
${VALID_EMAIL}        support@ngendigital.com
${VALID_PASSWORD}     abc123

*** Test Cases ***
#Round-way
Login Valid Credential
 
    Click Sign In Button On Home Page  

    Verify Login Appears

    Input User Email on Login Page             ${VALID_EMAIL}     

    Input User Password on Login Page           ${VALID_PASSWORD} 

    Click Sign In on Login Page 

    Verify User Is Logged In

       



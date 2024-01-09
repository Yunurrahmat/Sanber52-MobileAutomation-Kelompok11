*** Settings ***
Resource          ../pageObject/base/base.robot
Resource          ../pageObject/homePageObject/homePage.robot
Resource          ../pageObject/searchPageObject/searchPage.robot
Resource          ../pageObject/loginPageObject/loginPage.robot


Test Setup          Run Keywords      
...                 Open Flight Application
...                 Login with valid credentials
Test Teardown       Close Flight Application

*** Variables ***
${VALID_EMAIL}        support@ngendigital.com
${VALID_PASSWORD}     abc123

*** Test Cases ***
Success Searching Flight Number
# Precondition: User is already logged in with valid credentials
    # step : 
    homePage. Verify User Is Logged In
    searchPage. Click Button Search
    searchPage. Verify Search Page Appears
    searchPage. Input Flight Number
    searchPage. Click Button Search On Search Page 
    searchPage. Verify Success Search Flight Number

*** Settings ***
Resource               ../pageObjects/base.robot
Resource               ../pageObjects/homePage/homePage.robot
Resource               ../pageObjects/login/login.robot



*** Test Cases ***
Verify Login Success - Valid User And Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Username Login Page
    Input Password Login Page
    Click Sign In Button
    Verify Main Page Appears


Verify Failed Login - Valid User And Invalid Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Username Login Page
    Input Wrong Password
    Click Sign In Button
    Show Message Invalid User Or Password

Verify Failed Login - Invalid User And Valid Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Wrong Username
    Input Password Login Page
    Click Sign In Button
    Show Message Invalid User Or Password


Verify Failed Login - Invalid User And Invalid Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Wrong Username
    Input Wrong Password
    Click Sign In Button
    Show Message Invalid User Or Password

Verify Failed Login - Valid User And Blank Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Username Login Page
    Input Blank Password
    Click Sign In Button
    Show Message Invalid User Or Password

Verify Failed Login - Blank User And Valid Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Blank Username
    Input Password Login Page
    Click Sign In Button
    Show Message Invalid User Or Password

Verify Failed Login - Blank User And Blank Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Blank Username
    Input Blank Password
    Click Sign In Button
    Show Message Invalid User Or Password


    

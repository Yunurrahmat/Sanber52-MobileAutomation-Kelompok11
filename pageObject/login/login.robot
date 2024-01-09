*** Settings ***
Resource                                 ../base.robot
Variables                                login_locator.yaml
Variables                                ../homePage/homepage-locators.yaml

*** Keywords ***
# Tujuan: Verifikasi aplikasi berhasil login dan memunculkan halaman home login
# Step 1: Buka Aplikasi Flight
# Step 2: Memunculkan halaman home
# Step 3: mengklik tombol login
# Step 4: Verifikasi halaman login
# Step 4: Input Username di textbox username
# Step 5: Input password di txtbox password
# Step 6: Mngklik tombol sign in
# Step 7 : Memunculkan halaman home login

Click Log In Button
    Click Element                        ${loginButton}

Verify Login Page Appears
    Wait Until Element Is Visible        ${appLogo3}

Input Username Login Page
    Input Text                           ${locatorUserName}            ${USERNAME}

Input Password Login Page 
    Input Password                       ${locatorPassword}            ${PASSWORD}

Input Wrong Username
    Input Text                           ${locatorUserName}            ${WRONGUSERNAME}

Input Wrong Password
    Input Text                           ${locatorPassword}            ${WRONGPASSWORD}

Input Blank Password
    Input Text                           ${locatorPassword}            ${EMPTY}

Input Blank Username
    Input Text                           ${locatorUserName}            ${EMPTY}

Click Sign In Button
    Click Element                         ${signIn}

Show Message Invalid User Or Password
    Wait Until Page Contains              ${INVALIDMESSAGE}    
       


Verify Main Page Appears
    Wait Until Element Is Visible        ${accountName}
    Element Should Contain Text          ${signOutButton}              ${SIGNOUT}

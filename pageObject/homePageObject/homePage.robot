*** Settings ***
Resource                ../base/base.robot
Variables               homePageLocators.yaml

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible      ${logo_HomePage}

Click Sign In Button On Home Page    
    Wait Until Element Is Visible     ${signIN_button_homepage} 
    Click Element                     ${signIN_button_homepage}

Verify User Is Logged In
    Wait Until Element Is Visible    ${userName_text_homePage}

Click Button Book
    Wait Until Element Is Visible    ${book_button_homePage}
    Click Element                    ${book_button_homePage}

Verify User Success Booking
    Wait Until Element Is Visible    ${code_booking}
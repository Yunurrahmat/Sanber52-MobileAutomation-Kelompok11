*** Settings ***
Resource          ../pageObject/base/base.robot
Resource          ../pageObject/homePageObject/homePage.robot
Resource          ../pageObject/loginPageObject/loginPage.robot
Resource          ../pageObject/bookPageObject/bookOnWayPage.robot

Test Setup          Run Keywords      
...                 Open Flight Application
...                 Login with valid credentials
Test Teardown       Close Flight Application

*** Variables ***
${VALID_EMAIL}        support@ngendigital.com
${VALID_PASSWORD}     abc123

*** Test Cases ***
#One Way
TC001 - Booking with form city Toronto- Ottawa- First - Flight - with date
# Precondition: User is already logged in with valid credentials
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Choose From City Toronto
    Choose To City Ottawa
    Choose Class First
    Choose Start Date
    Choose End Date 
    Choose Flight
    Click Checkbox Day
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking

TC002-Booking with form city Ney York - Paris- First - Flight - with date
# Precondition: User is already logged in with valid credentials
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Choose From City New York
    Choose To City Paris
    Choose Class First
    Choose Start Date
    Choose End Date 
    Choose Flight
    Click Checkbox Day
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking


TC003-Booking with form city Chicago - Ottawa - First - Flight - with date
# Precondition: User is already logged in with valid credentials
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Choose From City Cichago
    Choose To City ottawa
    Choose Class First
    Choose Start Date
    Choose End Date 
    Choose Flight
    Click Checkbox Day
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking


#EXPECTED Failed
TC004-Booking with form city Toronto - London - Business - Flight - Invalid Date
# Precondition: User is already logged in with valid credentials
# Notes: EXPECTED Result "End Date Cannot be Before Start Date"
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Choose From City Toronto
    Choose To City London
    Choose Class Business
    Choose Start Date
    Choose End Date Invalid
    Choose Flight
    Click Checkbox Day
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking

TC005- User should not be able to book flight One Way - Without Day
# Precondition: User is already logged in with valid credentials
# Notes: EXPECTED TO BE FAILED BECAUSE A VALID ISSUE ON THE APPLICATION
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Choose From City Cichago
    Choose To City Paris
    Choose Class Business
    Choose Start Date
    Choose End Date 
    Choose Flight
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking

TC006- User should not be able to book flight One Way- Without Day and Without Start Date, End Date
# Precondition: User is already logged in with valid credentials
# Notes: EXPECTED TO BE FAILED BECAUSE A VALID ISSUE ON THE APPLICATION
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Choose From City New York
    Choose To City London
    Choose Class Business
    Choose Flight
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking

TC007-User should not be able to book flight One Way - empty field
# Precondition: User is already logged in with valid credentials
# Notes: EXPECTED TO BE FAILED BECAUSE A VALID ISSUE ON THE APPLICATION
    # step : 
    Verify User Is Logged In
    Click Button Book
    Verify Book Appears-OneWay
    Click One-way Flight
    Click Button Book On Book Page
    Choose Price and Confirm 
    Verify User Success Booking

     
    


    





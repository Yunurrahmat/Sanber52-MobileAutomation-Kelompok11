*** Setting ***
Resource            ../base/base.robot
Resource            ../homePageObject/homePage.robot
Variables            bookPageLocators.yaml


*** Keywords ***
Verify Book Appears-OneWay
    Wait Until Element Is Visible    ${oneWay_button }
    Wait Until Element Is Visible    ${logo_HomePage}
 
Verify Book Appears-RoundTrip
    Wait Until Element Is Visible    ${roundTrip_button }
    Wait Until Element Is Visible    ${logo_HomePage}
 
Click One-way Flight
    Click Element                    ${oneWay_button}
Click Round-Trip Flight
    Click Element                    ${roundTrip_button}

#Form City
Choose From City New York
    Click Element                    ${formCity_button}
    Wait Until Element Is Visible    ${newyork}
    Click Element                    ${newyork}

Choose From City Cichago
    Click Element                    ${formCity_button}
    Wait Until Element Is Visible    ${chicago}
    Click Element                    ${chicago}

Choose From City Toronto
    Click Element                    ${formCity_button}
    Wait Until Element Is Visible    ${toronto}
    Click Element                    ${toronto}


#TO City
Choose To City London
    Click Element                    ${toCity_button}
    Wait Until Element Is Visible    ${london}
    Click Element                    ${london}

Choose To City Paris
    Click Element                    ${toCity_button}
    Wait Until Element Is Visible    ${paris}
    Click Element                    ${paris}

Choose To City Ottawa
    Click Element                    ${toCity_button}
    Wait Until Element Is Visible    ${ottawa}
    Click Element                    ${ottawa}



#Class
Choose Class Economy
    Click Element                    ${class_button}
    Wait Until Element Is Visible    ${economy}
    Click Element                    ${economy}

Choose Class First
    Click Element                    ${class_button}
    Wait Until Element Is Visible    ${first}
    Click Element                    ${first}

Choose Class Business
    Click Element                    ${class_button}
    Wait Until Element Is Visible    ${business}
    Click Element                    ${business}

#Date
Choose Start Date
    Click Element                    ${startDate_button}
    Wait Until Element Is Visible    ${17Ags19}
    Click Element                    ${17Ags19}
    Click Element                    ${okbtn}

Choose End Date Invalid
    Click Element                    ${endDate_button}
    Wait Until Element Is Visible    ${1Ags}
    Click Element                    ${1Ags}
    Click Element                    ${okbtn}

Choose End Date 
    Click Element                    ${endDate_button}
    Wait Until Element Is Visible    ${29Ags19}
    Click Element                    ${29Ags19}
    Click Element                    ${okbtn}



Choose Flight
    Wait Until Element Is Visible    ${flight_button}
    Click Element                    ${flight_button}        

Click Checkbox Day
    Wait Until Element Is Visible    ${checkboxDay_button}  
    Click Element                    ${checkboxDay_button}  

Click Button Book On Book Page
    Click Element                    ${book_button}

Choose Price and Confirm 
    Wait Until Element Is Visible    ${confirm_button}
    Click Element                    ${price}
    Click Element                    ${confirm_button}

Wait Until Page Contains Element 
    Wait Until Element Is Visible    ${code_booking}





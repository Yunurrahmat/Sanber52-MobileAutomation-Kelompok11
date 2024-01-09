*** Setting ***
Resource            ../base/base.robot
Resource            ../homePageObject/homePage.robot
Variables            searchPage_locator.yaml




*** Keywords ***
#Success
Verify User Is Logged In
    Wait Until Element Is Visible    ${logo_HomePage}
Click Button Search On Home Page
    Click Element                    ${search_Button1}
Verify Search Page Appears
    Wait Until Element Is Visible    ${text_Flight_Number}
Input Flight Number
    Input Text                       ${flight_Number}    {text}
Click Button Search On Search Page
    Click Element                    ${button_search_Page}
Verify Success Search Flight Number
    Wait Until Element Is Visible    ${search_Result}
 
 
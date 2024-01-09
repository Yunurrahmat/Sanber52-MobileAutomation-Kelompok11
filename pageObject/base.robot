*** Settings ***
Library            AppiumLibrary

*** Variables ***
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      9.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity
${TIMEOUT}               100000
${PASSWORD}              abc123
${USERNAME}              support@ngendigital.com
${SIGNOUT}               Sign Out
${WRONGPASSWORD}         passwrong
${WRONGUSERNAME}         error@ngendigital.com
${EMPTY}                 
${INVALIDMESSAGE}        Invalid username/password
${CODE_BOOKING}          DA935



*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appPackage=${APP_PACKAGE}
    ...                     appActivity=${APP_ACTIVITY}
    ...                     newCommandTimeout=${TIMEOUT}


Close Flight Application
    Close Application

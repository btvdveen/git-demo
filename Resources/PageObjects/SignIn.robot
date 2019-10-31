*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div[1]/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Element Text Should Be  ${SIGNIN_MAIN_HEADING}  Sign-In

Login With Valid Credentials
  [Arguments]  ${Username}
    # [Arguments]  ${Username}  ${Password}
    Fill Email Field  ${Username}
    # Fill Password Field  ${Password}
    Click Continue Button

Fill Email Field
    [Arguments]  ${Username}
    Log  Filling Emailaddress with ${Username}

Fill Password Field
    [Arguments]  ${Password}
    Log  Filling Password with ${Password}

Click Continue Button
    Log  Clicking continue button
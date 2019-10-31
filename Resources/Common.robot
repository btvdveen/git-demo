*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Insert Test Data
    Log  Inserting test data

Clean Test Data
    Log  Cleaning test data
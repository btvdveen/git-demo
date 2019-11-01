*** Settings ***
Documentation  This is basic info about the suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Common.Insert Test Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Clean Test Data
# robot -d results tests/amazon.robot
# robot -d results -i Current tests/amazon.robot
# TEST 1

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458
${LOGIN_EMAIL} =  some@user.com
${LOGIN_PASSWORD} =  password

*** Test Cases ***
Should be able to login
    [Tags]  Smoke  Products
    # AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}
    AmazonApp.Login  ${LOGIN_EMAIL}

Should not be able to login with invalid credentials
    [Tags]  Smoke  View
    AmazonApp.Login with invalid credentials

User can search for products
    [Tags]  Smoke
    AmazonApp.Search for Products

User can view product
    [Tags]  Current
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

User can add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

User must sign in to check out
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

Feature 1 Test
    Log  doing feature 1

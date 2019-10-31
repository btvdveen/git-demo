*** Settings ***
Library  SeleniumLibrary
Resource  PageObjects/LandingPage.robot
Resource  PageObjects/Cart.robot
Resource  PageObjects/Product.robot
Resource  PageObjects/SearchResults.robot
Resource  PageObjects/SignIn.robot
Resource  PageObjects/TopNav.robot

*** Variables ***

*** Keywords ***
Login
    # hiermee geef je de waardes uit de glabal variables uit Amazon.robot door
    # [Arguments]  ${Username}  ${Password}
    [Arguments]  ${Username}
    # SignIn.Login With Valid Credentials  ${Username}  ${Password}
    SignIn.Login With Valid Credentials  ${Username}

Login with invalid credentials
    # hiermee geef je een eigen waarde door, de keyword in SignIn is zo gedefinieerd dat deze meegegeven argumenten kan ontvangen
    SignIn.Fill Email Field  bogus@bogus.com
    SignIn.Click Continue Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
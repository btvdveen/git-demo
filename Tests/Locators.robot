*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Should be able to search for product
    Open Browser  http://www.amazon.com  ff
    Sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    Click Button  css=.nav-search-submit > input:nth-child(2)
    Sleep  3s
    Click Link  xpath=/html/body/div[1]/div[1]/div[1]/div[2]/div/span[3]/div[1]/div[2]/div/span/div/div/div[2]/div[3]/div/div[1]/h2/a

*** Keywords ***

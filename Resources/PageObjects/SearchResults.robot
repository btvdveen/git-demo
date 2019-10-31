*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product link in the results list
    # Click Element  xpath=/html/body/div[1]/div[1]/div[1]/div[2]/div/span[3]/div[1]/div[10]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img
    # Click Link  .index\=9 > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)
    Click Element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/span/div/div/div/div/div[2]/div[3]/div/div[1]/h2/a/span

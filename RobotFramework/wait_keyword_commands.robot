*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.thetestingworld.com/

*** Test Cases ***
TC_10
    open browser    ${url}  Chrome
    maximize browser window
    set selenium timeout    10 seconds
    wait until element contains     xpath://a[text()='Quick Demo']  Quick Demo
    #wait until page contains    VIDEOS
    click element   xpath://a[text()='Quick Demo']
*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open the browser
    Open Browser  ${url}    Chrome
    Maximize Browser Window
    Sleep   2

Close Browser session
    Close Browser
*** Settings ***
Library     SeleniumLibrary

*** Keywords ***

Open the browser
    Open Browser   ${url}   Chrome
    Maximize Browser Window
    sleep   2

Close Browser Session
    Close Browser
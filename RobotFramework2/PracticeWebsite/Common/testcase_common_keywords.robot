*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open the browser
    Open Browser    ${url}  Chrome
    Maximize Browser window
    Wait Until Element Is Visible   ${logo}

Close Browser session
    Close Browser
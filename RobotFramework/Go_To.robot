*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.thetestingworld.com/

*** Test Cases ***
TC_06
    open browser    ${url}  Chrome
    go to   https://www.google.com
    ${url1}=    get location
    log to console  ${url1}
    go back
    ${url2}=    get location
    log to console  ${url2}
    Close Browser

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.thetestingworld.com/

*** Test Cases ***
TC_07
    open browser    ${url}  Chrome
    maximize browser window
    Execute Javascript  window.scrollTo(0,1000)
    sleep 10 seconds
    close browser
    
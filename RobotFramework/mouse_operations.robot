*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.thetestingworld.com/

*** Test Cases ***
TC_08
    open browser    ${url}  Chrome
    maximize browser window
    #open context menu   xpath://span[text()='TRAINING']
    #double click element    xpath://a[text()='Quick Demo']
    #mouse down    xpath://a[text()='Quick Demo']
    #mouse up    xpath://a[text()='Quick Demo']
    #mouse over
    sleep   10
    close browser
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.thetestingworld.com/

*** Test Cases ***
TC_09
    open browser    ${url}  Chrome
    maximize browser window
    click link  //a[text()='Quick Demo']
    press key   //input[@id='wdform_1_element_first2']  dhruvi
    press key   id:wdform_1_element_last2   virani
    sleep 10 seconds
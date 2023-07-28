*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/

*** Test Cases ***
TC_02
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
    Click link  xpath://a[text()='Quick Demo']
    input text  name:wdform_1_element_first2    dhruvi
    input text  name:wdform_1_element_last2    virani
    input text  name:wdform_2_element2  dhruvi@123
    Click button  xpath://button[@class='button-reset']
    Open Browser    https://www.google.com  Chrome
    close all browsers
    


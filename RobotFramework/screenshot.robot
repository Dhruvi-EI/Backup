*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/

*** Test Cases ***
TC_05
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
    Click link  xpath://a[text()='Quick Demo']
    input text  name:wdform_1_element_first2    dhruvi
    input text  name:wdform_1_element_last2    virani
    input text  name:wdform_2_element2  dhruvi@123
    Click link  xpath://button[@class='button-reset']
    capture page screenshot     C:/Users/158410/robot_folder/RobotFramework/TC1.png
    close browser
*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Test Cases ***
Validate
    Open the browser
    Fetch text from images
    Close the browser

*** Keywords ***
Open the browser
    Open Browser    https://www.lambdatest.com/automation-testing   Chrome
    Maximize Browser Window

Fetch text from images
    Wait Until Element Is Visible      css=img[alt='Logo']
    Scroll Element Into View    css=div[class='container__selenium sel__slider']
    Click Element   css=span[class='cookie__bar__close hover:underline smtablet:hidden']
    ${Element}=     Get WebElements    css=div[class='w-175 is__box mr-14 mb-14'] img
    @{imageText}=   Create List     
    FOR  ${i}   IN  @{Element}
        Get Title     
        Append To List    ${imageText}    ${i.text}
    END
    Log     ${imageText}

Close the browser
    Close Browser
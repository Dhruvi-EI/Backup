*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     String
Library     BuiltIn
Documentation   To validate Login page
Test Setup  Open the browser
Test Teardown   Close Browser Session
Resource    resource.robot

*** Test Cases ***
Validate child window functionality
    Select the link of the child window
    Verify the user is switched to the child window
    Grab the mail id in the child window
    Switch back to the parent window

*** Keywords ***
Select the link of the child window
    Click Link  css:a[class='blinkingText']
    sleep   5

Verify the user is switched to the child window
    Switch Window   NEW
    Element Text Should Be      css:div[class='inner-box']  DOCUMENTS REQUEST

Grab the mail id in the child window
    ${text}=    get text    css:p[class='im-para red']
    @{words}=    split string    ${text}  at
    ${text_split}=    Get From List   ${words}    1
    log     ${text_split}
    @{words_2}=    split string   ${text_split}    
    ${email}=       Get From List    ${words_2}  0 
    Set Global Variable    ${email}
    log     ${email}
    sleep   2

Switch back to the parent window
    Switch Window   MAIN
    Title Should Be     LoginPage Practise | Rahul Shetty Academy
    input text  id:username    ${email}
    sleep   2

*** Settings ***
Library     SeleniumLibrary
Library     Collections
Documentation   To validate Login page
Test Setup  Open the browser
Test Teardown   Close Browser Session
Resource    resource.robot


*** Test Cases ***
Validate login
    validate login page 
    validate titles of products
    select the card     Nokia Edge
    #fill the login details and validate the login form

*** Keywords ***
validate login page 
    input text  id:username      rahulshettyacademy 
    input password  id:password     learning
    click element   css:input[value='user']
    Select From List By Index       css:select[class='form-control']    1
    Wait Until Element Is Visible   css:button[id='okayBtn'] 
    Click Button    css:button[id='okayBtn']
    Select Checkbox     id:terms
    Checkbox Should Be Selected     id:terms
    Click Button    id:signInBtn
    sleep   2

validate titles of products
    Scroll Element Into View  xpath://a[text()='iphone X']
    @{expected_list} =    Create List     iphone X    Samsung Note 8  Nokia Edge  Blackberry
    ${elements} =    Get WebElements    class:card-title
    @{create_list} =     Create List    

     FOR     ${element}  IN      @{elements}
        Log  ${element.text}

        Append To List  ${create_list}  ${element.text}
    END  
    
    Lists Should Be Equal   ${expected_list}  ${create_list}
    

select the card
    sleep   2
    Scroll Element Into View    css:p[class='m-0 text-center text-white']
    [arguments]     ${cardName}
    ${elements} =  Get WebElements     css:.card-title
    ${index}=   Set Variable    1
    FOR  ${element}  IN      ${elements}
         Exit For Loop If      '${cardName}' == '${element.text}'
         ${index}=  Evaluate   ${index} + 1
    END
    Click Button    xpath:(//*[@class='card-footer'])[${index}]/button




    
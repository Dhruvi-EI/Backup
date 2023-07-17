*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Test Cases ***
Validate
    Open the browser
    Enter The Input1 And Move To That Page1
    Close the browser

*** Keywords ***
Open the browser
    Open Browser    https://www.flipkart.com/   Chrome
    Maximize Browser Window

Enter The Input1 And Move To That Page1
    Set Selenium Timeout    20 seconds
    Wait Until Element Is Visible   css:button[class='_2KpZ6l _2doB4z']
    Click Element   css:button[class='_2KpZ6l _2doB4z']
    Wait Until Element Is Visible   css:input[class='_3704LK']
    Scroll Element Into View    //h2[text()='Best of Electronics']
    Click Element   //div[text()='Top Mirrorless Cameras']
    Wait Until Element Is Visible   //div[text()='SONY ZV-E10L Mirrorless Camera Body with 1650 mm Power Zoom Lens Vlog Camera']
    Scroll Element Into View    (//img[@alt='Canon EOS M50 Mark II Mirrorless Camera EF-M15-45mm is STM Lens'])
    Click Element   //div[text()='Canon EOS M50 Mark II Mirrorless Camera EF-M15-45mm is STM Lens']
    Switch Window   NEW
    Wait Until Element Is Visible   css:a[class='_1_3w1N']
    Scroll Element Into View    css:input[placeholder='Enter Delivery Pincode']
    Input Text  css:input[class='_36yFo0']  380015
    Click Element   css:span[class='_2P_LDn']
    Click Element   css:button[class='_2KpZ6l _2U9uOA _3v1-ww']
    Switch Window   MAIN
    Go Back
    Sleep   3
    
Close the browser
    Close Browser

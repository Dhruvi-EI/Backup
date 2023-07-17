*** Settings ***
Resource        ../../Common/Testcase_resources.robot

*** Test Cases ***
Validate Practice Automation website
    Open the browser
    Validate Page Title
    Validate and click Home 
    Click on the radio button
    Type the suggestion of a country name to get the options
    Select dropdown
    Click on the checkbox
    Validate Switch window example
    Validate Switch Tab example
    Validate Switch to alert example
    Scroll down and validate hide and show button
    Scroll down and validate mouse hover
    Close Browser Session
    
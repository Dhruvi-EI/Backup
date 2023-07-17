*** Settings ***
Resource    ../../Common/testcase_resourse.robot
Suite Setup     Open the browser
Suite Teardown      Close Browser session
#Author     Dhruvi Virani

*** Test Cases ***
Validate Practice Automation Website
    #Execute Javascript  document.querySelector("div[class='page_heading']").scrollIntoView(true)
    #Sleep   0.5
    Wait Until Element Is Visible   (//h5[@class='ui-widget-header'])[1]
    Drag And Drop   (//h5[@class='ui-widget-header'])[1]  css=div[class='ui-widget-content ui-state-default ui-droppable']

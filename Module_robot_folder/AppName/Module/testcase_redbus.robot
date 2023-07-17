*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../../Common/Testcase_resources.robot
Suite Setup     Open the browser3    
Suite Teardown      Close Browser Session


*** Test Cases ***
Validate Red Bus website
    
    Enter The Destinations And Dates And Search For The Buses   




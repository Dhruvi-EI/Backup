*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../../Common/Testcase_resources.robot
Suite Setup     Open the browser1    
Suite Teardown      Close Browser Session


*** Test Cases ***
Validate Intranet Website
    Move To Home And Then New Joinee
    Fetch Email ID Of The New Joinee
    
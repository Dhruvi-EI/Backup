*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../../Common/testCase_resources.robot
#Suite Setup      Open the browser
#Suite TearDown  Close Browser Session
#Author:<Dhruvi Virani>


*** Test Cases ***
Validate the Intranet Holiday List
    Open the browser
    Go to home and then Holiday List
    Select year     2023
    Select location     Ahmedabad
    Fetch the Holidays list of year 2022
    Select year2     2023
    Select location2     Pune
    Fetch the Holiday list of year 2023
    Compare and find the difference between Holiday list of both the years
    ${diff_list}=    List Difference    ${Holiday_list_2022}  ${Holiday_list_2023}
    Close Browser Session


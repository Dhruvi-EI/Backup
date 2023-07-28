*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    testCase_resources.robot
#Suite Setup      Open the browser
#Suite TearDown  Close Browser Session
#Author:<Dhruvi Virani>


*** Variables ***
${url}  https://intranet.einfochips.com/ 
${mouse_hover_to_home}   css:div[class='collapse navbar-collapse navbar-ex1-collapse']>ul>li>a[class='dropdown-toggle nav-link']
${click_holiday_list}     css:a[href='https://intranet.einfochips.com/employee_intranet/portal/leave/holidaylist']
${select_holiday_year_dropdown}     css:select[id='holiday_year']
${click_year}     css:option[value='2022']
${select_months}     css:select[id='month_id']>option
${select_submit_button}     css:button[class='btn btn-success']
${description_of_holiday_list}     css:table[id='mt'] tbody td:nth-child(4)
${click_pagination_2}     css:a[id='2']
${click_pagination_3}     css:a[id='3']
${click_pagination_4}     css:a[id='4']
${select_year}     css:option[value='2023']


*** Test Cases ***
Validate the Intranet Holiday List
    Open the browser
    Go to home and then Holiday List
    Fetch the Holidays list of year 2022
    Fetch the Holiday list of year 2023
    Compare and find the difference between Holiday list of both the years
    ${diff_list}=    List Difference    ${Holiday_list_2022}  ${Holiday_list_2023}
    Close Browser Session

*** Keywords ***
Open the browser
    Open Browser   ${url}   Chrome
    Maximize Browser Window
    sleep   2

Go to home and then Holiday List
    Sleep   2
    Mouse Over    ${mouse_hover_to_home}
    Sleep   2
    Click Link   {click_holiday_list}

Fetch the Holidays list of year 2022
    Click Element   ${select_holiday_year_dropdown}
    Sleep   2
    Click Element   ${click_year}
    Sleep   2
    Click Element   ${select_months}
    Click Button   ${select_submit_button}

    @{Expected_holiday_list} =      Create List     ${description_of_holiday_list}
    
    ${Elements} =  Get WebElements     ${description_of_holiday_list}
    Set Global Variable     ${Elements}   
    @{Holiday_list_2022} =      Create List 
    Set Global Variable     @{Holiday_list_2022}
    
    
    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2022}   ${Element.text}
    END
    

    Click Element   ${click_pagination_2}

    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2022}   ${Element.text}
    END
    

    Click Element   ${click_pagination_3}
    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2022}   ${Element.text}
    END
     

    Click Element   ${click_pagination_4}
    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2022}   ${Element.text}
    END
    Log    ${Holiday_list_2022}


Fetch the Holiday list of year 2023
    Click Element   ${select_holiday_year_dropdown}
    Sleep   2
    Click Element   ${select_year}
    Sleep   2
    Click Element   ${select_months}
    Click Button   ${select_submit_button}

    @{Expected_holiday_list1} =      Create List     ${description_of_holiday_list}
    
    ${Elements1} =  Get WebElements     ${description_of_holiday_list}
    Set Global Variable     ${Elements1}   
    @{Holiday_list_2023} =      Create List 
    Set Global Variable     @{Holiday_list_2023}
    
    FOR  ${Element}  IN      @{Elements1}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2023}   ${Element.text}
    END
    
    Click Element   ${click_pagination_2}
    FOR  ${Element}  IN      @{Elements1}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2023}   ${Element.text}
    END

    Click Element   ${click_pagination_3}
    FOR  ${Element}  IN      @{Elements1}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2023}   ${Element.text}
    END

    Click Element   ${click_pagination_4}
    FOR  ${Element}  IN      @{Elements1}
        Log    ${Element.text}
        Append To List      ${Holiday_list_2023}   ${Element.text}
    END
    Log    ${Holiday_list_2023}

Compare and find the difference between Holiday list of both the years
    ${list1}=   Get Length  ${Elements}
    Log     ${list1}
    ${list2}=   Get Length  ${Elements1}
    Log     ${list2}

   
List Difference
    [Arguments]    ${arg1}    ${arg2}
    @{New_list}=    Create List    @{arg1}    @{arg2}
    FOR    ${item}    IN    @{arg1}
        Remove Values From List    ${New_list}    ${item}
    END
    Log    ${New_list}
    Get Length     ${New_list} 

Close Browser Session
    Close Browser
    
*** Settings ***
Resource    ../../Common/testcase_resources.robot
Suite Setup     Open the browser
Suite Teardown      Close Browser session
#Author     Dhruvi Virani
Force Tags  suite

*** Keywords ***
List Difference
    [Arguments]     ${arg1}     ${arg2}
    @{NewList}=     Create List     @{arg1}     @{arg2}
    FOR    ${item}    IN    @{arg1}
        Remove Values From List    ${NewList}   ${item}
    END
    Log To Console    ${NewList}
    Get Length    ${NewList}


*** Test Cases ***

Validate All Categories Button Of Amazon
    [Tags]  Dhruvi
    Click Element   ${logo}
    Wait Until Element Is Visible   ${logo}
    Click Element   ${AllBesideSearchbutton}
    Sleep   2
    Click Element   ${Watches}
    Click Element   ${SearchButton}
    Sleep   2
    Click Element   ${ClickPremium}
    Scroll Element Into View    ${ScrollToDialColour}
    Wait Until Element Is Visible   ${ScrollToDialColour}
    Sleep   2
    Click Element   ${ClickWatch}
    Switch Window   New
    Wait Until Element Is Visible   ${ProductTitle}
    ${FetchText}=   Get Text    ${TitleSection}
    Log to Console  ${FetchText}
    Switch Window   Main
    Sleep   1
    FOR  ${i}   IN RANGE    0   2
        Go Back
    END
    Sleep   5

Validate Search Button
    [Tags]  temp
    Click Element   ${SearchBar}
    ${RandomValue}=   Random
    Input Text  ${SearchBar}     ${RandomValue}
    Wait Until Element Is Visible   ${AllOptionsOfSearch}
    Sleep   2
    Click Element   ${AllOptionsOfSearch}
    Sleep   2
    Click Element   ${BeforeSwitchWindow}
    Switch Window   New
    ${FetchText}=   Get Text    ${ProductTitle}
    Log to Console      ${FetchText}
    Switch Window   Main
    Sleep   1
    FOR  ${i}   IN RANGE    0   2
        Go Back
    END
    Sleep   5

Validate All Button
    [Tags]  Virani
    Click Element   ${ClickAllButton}
    Sleep   3
    Click Element   ${ClickFlight}
    Click Element   ${Email}
    Wait Until Element Is Visible   ${Email}
    Input Text  ${Email}     ${Username}
    Sleep   1
    Click Element   ${password}
    Sleep   1
    Input Text  ${password}  ${pwd}
    Sleep   1
    Click Element   ${SignInButton}
    Sleep   5
    Click Element   ${RoundTrip}
    Click Element   ${InputTextSource}
    Input Text  ${SourceDestination}     Thailand
    Wait Until Element Is Visible   ${Destination}
    Click Element   ${Destination}
    Input Text  ${SourceDestination}     Mumbai
    Wait Until Element Is Visible   ${ReturnDestination}
    Click Element   ${ReturnDestination}
    Sleep   1
    ${choosedate}=  Selectdate  2
    ${date}=    Replace String  (//li[text()='date'])[1]    date    ${choosedate}
    Click Element   ${date}
    ${returndate}=  Selectdate  2
    ${date2}=    Replace String  (//li[text()='date'])[2]    date    ${returndate}
    Click Element   ${date2}
    Click Element   ${ClickSearchButton}
    Sleep   3

Validate Press Keys Keywords
    [Tags]  robot
    #Set Screenshot Directory    ScreenshotsOfAmazon
    Click Element   ${SearchBar}
    Input Text  ${SearchBar}    Purses
    Capture Page Screenshot     Sample.png
    Capture Element Screenshot  ${SearchBar}    dhruvi.png
    Press Keys  ${SearchBar}  RETURN
    Sleep   1
    @{NewList}=     Create List     a   b   c
    Append To List    ${NewList}  d
    Log To Console  ${NewList}
    @{LIST2}=   Create List     Dhruvi  Virani
    ${l1}=    Combine Lists   ${NewList}  ${LIST2}
    Log to Console  ${L1}
    ${Dict1}=   Create Dictionary   a   1   b   2
    ${items}     Convert To Dictionary   ${Dict1}
    Log to Console  ${items}
    FOR  ${i}   ${j}    IN  @{items.keys()}     @{items.values()}
        Log     the current key is:${i}
        #Log     the current values is:${j}
    END
    ${var1}=    Run Keyword If  ${NewList}!=${LIST2}    Log to Console  Successful

Compare Two Lists
    [Tags]  khushi
    ${Result}=  Create List     a   b   c
    ${Result1}=     Create List     a   b   c    
    ${diff_list}=    List Difference    ${Result}  ${Result1}
    Log To Console  ${diff_list}
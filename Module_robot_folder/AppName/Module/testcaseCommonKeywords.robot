*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Test Cases ***
Validate
    Open the browser
    Fetch list of birthdays
    #Fetch list Of anniversaries
    Close the browser

*** Keywords ***
Open the browser
    Open Browser    https://intranet.einfochips.com/    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible   //a[text()='Dhruvi Virani']

Fetch list of birthdays
    Scroll Element Into View    (//ul[@class='pagination '])[1]
    #${Values}=  Get WebElements     css=td[data-title='Name']
    ${Birthday}=    Get WebElements     //ul/li/div[contains(.,'Happy Marriage Anniversary!!!')]/div/a
    @{BirthdayList}=    Create List
    
    FOR     ${i}   IN      @{Birthday}
        Log    ${i.text} 
        Sleep   3    
        Append To List  ${BirthdayList}     ${i.text} 
    END
    Log     ${BirthdayList}

Close the browser
    Close Browser
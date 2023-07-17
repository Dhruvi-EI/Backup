
*** Keywords ***

Open the browser
    Open Browser   ${url}   Chrome
    Maximize Browser Window
    sleep   2

Open the browser1   
    Open Browser    ${url1}     Chrome
    Maximize Browser Window
    Sleep   2

Open the browser2   
    Open Browser    ${url2}     Chrome
    Maximize Browser Window
    Sleep   2

Open the browser3
    Open Browser    ${url3}     Chrome
    Maximize Browser Window
    #Sleep   2

Validate Page Title
    ${title}=   Get Title

Validate and click Home
    Click Element   ${validate_home}
    Sleep   5
    Go Back

Click on the radio button
    Click Element   ${click_radio_button}
    Sleep   2

Type the suggestion of a country name to get the options
    Click Element   ${suggestion_textbox}
    Input Text      ${suggestion_textbox}       ind
    Sleep   2
    Click Element   ${select_dropdown}
    Sleep   1

Select dropdown
    Click Element   ${dropdown_example}
    Sleep   2
    Click Element   ${select_option}
    Sleep   1

Click on the checkbox
    Click Element   ${select_checkbox}
    Sleep   2

Validate Switch window example
    Click Element     ${switch_window}
    Sleep   7
    Switch Window   MAIN
    Sleep   3

Validate Switch Tab example
    Click Element   ${switch_tab}
    Sleep   12
    Switch Window   MAIN
    Sleep   5

 Validate Switch to alert example
    Click Element   ${switch_to_alert}
    Input Text  ${switch_to_alert}  dhruvi
    Sleep   2
    Click Element   ${alert_button}
    Sleep   5

Scroll down and validate hide and show button
    Scroll Element Into View    ${scroll_to_element}
    Click Element   ${hide_button}
    Sleep   1
    Click Element   ${show_button}
    Sleep   2

Scroll down and validate mouse hover
    Scroll Element Into View    ${scroll_down}
    Sleep   2
    Mouse Over    ${mouse_hover}
    Sleep   2
    Click Element   ${hover_to_top}
    Sleep   2

Move To Home And Then New Joinee
    Wait Until Element Is Visible   ${ElementVisible}
    Mouse Over  ${MoveToHome}
    Wait Until Element Is Visible   ${MoveToNewJoinee}
    Click Element   ${MoveToNewJoinee}

Fetch Email ID Of The New Joinee
    ${Email}=   Get WebElements    ${FetchEmailId}
    @{EmailIDList}=     Create List
    #Scroll Element Into View    //span[text()='1']

    FOR     ${Element}    IN     @{Email} 
        Log     ${Element}
        Append to List     ${EmailIDList}   ${Element}
    END

    ${PaginationNewJoinee}=  Get WebElements     css:ul[class='pagination pagination-lg']>li
    ${PaginationLength}=   Get Length  ${PaginationNewJoinee}
    Log     ${PaginationLength-1}

    FOR     ${i}    IN RANGE    2   (${PaginationLength}-1)
        Click Element   (${Pagination1})[${i}]            
    END

    FOR     ${Element}    IN     @{Email} 
        Log     ${Element}
        Append to List     ${EmailIDList}   ${Element}
    END
    Log     ${EmailIDList}

Enter The Input And Move To That Page
    Set Selenium Timeout    10 seconds
    Wait Until Element Is Visible   ${MouseHoverApple}
    Mouse Over   ${MouseHoverApple}
    Wait Until Element Is Visible   ${ClickElement}
    Click Element  ${ClickElement} 
    Wait Until Element Is Visible   ${ClickColour}
    Click Element    ${ClickColour}
    Wait Until Element Is Visible   ${BuyButton}
    Scroll Element Into View    ${BuyButton}
    Click Element   ${BuyButton}
    Go Back
    Scroll Element Into View    ${GoHome}
    Click Element   ${GoHome}
    Scroll Element Into View    ${PauseButton}
    Click Button    ${PauseButton}
    Sleep   2
    
Enter The Input1 And Move To That Page1
    Wait Until Element Is Visible   css:body[class='fk-modal-visible']
    Click Element   css:body[class='fk-modal-visible']
    Wait Until Element Is Visible   css:input[class='_3704LK']
    Scroll Element Into View    //h2[text()='Best of Electronics']
    Click Element   css:img[alt='Top Mirrorless Cameras (Shop Now!)']
    Scroll Element Into View    (//img[@alt='Canon EOS M50 Mark II Mirrorless Camera EF-M15-45mm is STM Lens'])
    Click Element   (//img[@alt='Canon EOS M50 Mark II Mirrorless Camera EF-M15-45mm is STM Lens'])
    Scroll Element Into View    css:input[class='_36yFo0']
    Input Text  css:input[class='_36yFo0']  380015
    Click Element   css:span[class='_2P_LDn']
    Click Element   css:button[class='_2KpZ6l _2U9uOA _3v1-ww']

Enter The Destinations And Dates And Search For The Buses
    Set Selenium Timeout    10 seconds
    Wait Until Element Is Visible   ${RedBusLogo}
    Get Title   
    Click Element   css=input[data-message='Please enter a source city']
    Input Text  css=input[data-message='Please enter a source city']    Paldi
    #Wait Until Element Is Visible   //div[text()='Paldi, Ahmedabad']
    #Click Element   //div[text()='Paldi, Ahmedabad']
    Click Element   css=input[data-message='Please enter a destination city']
    Input Text  css=input[data-message='Please enter a destination city']   bharuch
    #Wait Until Element Is Visible    css=div[data-cid='1477']
    #Click Element   css=div[data-cid='1477']
    Click Element   css=input[id='onward_cal']
    #Wait Until Element Is Visible   css=label[class='db text-trans-uc move-up']
    Wait Until Element Is Visible   css=tr[class='rb-monthHeader']
    Click Element   (//td[@class='wd day'])[1]
    Click Element   css=button[class='fl button']
    Sleep   2
    Wait Until Element Is Visible   css=div[class='onward-modify-btn g-button clearfix fl']
    Click Element   css=div[class='onward-modify-btn g-button clearfix fl']
    Click Element   css=input[id='dest']
    Input Text  css=input[id='dest']    Surat
    Click Element   css=button[class=' button ms-btn']
    Sleep   3

Close Browser Session
    Close Browser
*** Variables ***
${Url}      https://rahulshettyacademy.com/AutomationPractice/
${url1}     https://intranet.einfochips.com/employee_intranet/portal/user/newjoinee    
${url2}     https://www.flipkart.com/ 
${url3}     https://www.redbus.in/
${validate_home}    //button[text()='Home']
${click_radio_button}   name=radioButton
${suggestion_textbox}   id=autocomplete
${select_dropdown}     //li/div[text()='India']
${dropdown_example}     id=dropdown-class-example
${select_option}    css=option[value='option3']
${select_checkbox}      name=checkBoxOption1
${switch_window}    id=openwindow
${switch_tab}   id=opentab
${switch_to_alert}      css=input[placeholder='Enter Your Name']
${alert_button}     id=alertbtn
${scroll_to_element}    css=div[class='totalAmount']
${hide_button}      id=hide-textbox
${show_button}      id=show-textbox
${scroll_down}      id=courses-iframe
${mouse_hover}      id=mousehover
${hover_to_top}     css=a[href='#top']
${ElementVisible}   //a[text()='Dhruvi Virani']
${MoveToHome}       //a[text()='Home ']
${MoveToNewJoinee}  //a[text()='New Joinee']
${FetchEmailId}     css=thead[class='cf'] tr th:nth-child(5)
${Pagination1}      //a[@style='padding:0 10px 0 10px;']
${MouseHoverApple}   (//a[@href='/in/iphone/'])[1]
${ClickElement}     (//a[text()='iPhone 14 Pro'])[1]
${ClickColour}    //span[@class='colornav-swatch colornav-swatch-space-black no-inversion']
${BuyButton}    css:a[class='button hero-cta']
${GoHome}   css:a[class='globalnav-link globalnav-link-apple']
${PauseButton}  (//button[@class='play-pause-button'])[2]
${RedBusLogo}   css=a[class='home-redirect redbus-logo']
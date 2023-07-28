*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${username}     rahulshettyacademy
${invalid_password}     12345
${valid_password}     learning
${url}  https://rahulshettyacademy.com/loginpagePractise/

*** Keywords ***
Open the browser
    Create Webdriver    Chrome  executable_path=C:/Users/158410/AppData/Local/Programs/Python/Python311/chromedriver
    Go To   ${url} 
    Maximize Browser Window
    sleep   2

Close Browser Session
    Close Browser



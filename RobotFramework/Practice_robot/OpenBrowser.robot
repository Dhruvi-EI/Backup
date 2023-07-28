*** Settings ***
Library     SeleniumLibrary
Documentation   To validate Login page

*** Test Cases ***
Validate login 
    Open the browser
    #Fill the login form

*** Keywords ***
Open the browser
    Create Webdriver    Chrome  executable_path=C:/Users/158410/AppData/Local/Programs/Python/Python311/chromedriver
    Go To   https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Close Browser
    
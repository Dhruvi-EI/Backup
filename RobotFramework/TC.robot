*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.w3schools.com/quiztest/quiztest.asp?qtest=CSS


*** Test Cases ***
TC_01
   Open Browser    ${URL}  ${Browser}
   sleep   2
   Close Browser


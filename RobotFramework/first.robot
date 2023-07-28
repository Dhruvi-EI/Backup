*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Launching Browser
    Open Browser    https://www.youtube.com/watch?v=UbYxkUq0Hec&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG     Chrome
    Close Browser
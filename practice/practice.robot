*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Test Cases ***
Validate
    open the browser
    Intranet

*** Keywords ***
open the browser
    Open browser    https://intranet.einfochips.com/    Chrome
    Maximize Browser Window
    Sleep   4
Intranet
    Scroll Element Into View    //div[@class='row row-eq-height last-cards mrgn-btm-15']
    Sleep   3
    ${Elements} =  Get WebElements   //div[@class='usr-name']/a[@title='click to view profile']
    @{Birthday_list} =      Create List 

    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List      ${Birthday_list}   ${Element.text}
    END
    
    Sleep   2
    ${Elements1} =  Get WebElements   //div[@class='usr-name']/a[@title='click to view profile']
    FOR  ${Element}  IN      @{Elements1}
        Log    ${Element.text}
        Append To List      ${Birthday_list}   ${Element.text}
    END
    
    Sleep   2
    ${Elements2} =  Get WebElements   //div[@class='usr-name']/a[@title='click to view profile']
    FOR  ${Element}  IN      @{Elements2}
        Log    ${Element.text}
        Append To List      ${Birthday_list}   ${Element.text}
    END
    
    Sleep   2
    ${Elements3} =  Get WebElements   //div[@class='usr-name']/a[@title='click to view profile']
    FOR  ${Element}  IN      @{Elements3}
        Log    ${Element.text}
        Append To List      ${Birthday_list}   ${Element.text}
    END
    
    Sleep   2
    ${Elements4} =  Get WebElements   //div[@class='usr-name']/a[@title='click to view profile']
    FOR  ${Element}  IN      @{Elements4}
        Log    ${Element.text}
        Append To List      ${Birthday_list}   ${Element.text}
    END
    Log     ${Birthday_list}
    Close Browser
    
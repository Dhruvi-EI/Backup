*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Variables ***

*** Test Cases ***
TC_03
    #FOR    ${i}     IN RANGE    1   10
    #    log to console  ${i}
    #END
    #${List_length}     get length   ${List}
    #log to console  ${List_length}
    #${List_data}    get from list   ${List}
    #log to console  ${List_data} 

    @{List1}     create list     hello 1 3.2 abc123 0.000
    FOR    ${i}   IN  @{List1}
        log to console  ${i}
    END

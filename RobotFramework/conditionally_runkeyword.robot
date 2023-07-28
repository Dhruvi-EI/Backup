*** Settings *** #header files
Library     SeleniumLibrary
Library     Collections

*** Variables ***


*** Test Cases ***
TC_04
   # ${Key_var}=     set variable   log to console
   # run keyword     ${Key_var}      thetestingworld

   ${var}=      set variable    YES
   run keyword if      '${var}'=='YES'   log to console  value found
   run keyword if      '${var}'=='NO'   log to console  value not found


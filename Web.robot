*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
*** Test Case ***

mytest
    Open Browser    https://www.ptt.cc/bbs/Insurance/index.html     chrome
    Sleep   5s
    Wait Until Element Is Visible    id:main-container
    ${ele}      Get WebElements     css:div#title
    for i in ${ele}
        log     ${ele}
    
          
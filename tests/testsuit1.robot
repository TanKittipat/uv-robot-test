*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Search Google and Verify Results TC1001
    [Documentation]    Test case to search Google and verify results
    [Tags]    search
    Open Google
    Input Search Term
    Enter Google Search
    Wait Until Page Contains    ${SEARCH_RESULT1}    timeout=10s
    Sleep    5s
    Verify Search Results
    Capture Page Screenshot With Name    TC1001
    Close Browser


Search Google and Verify Results TC1002
    [Documentation]    Test case to search Google and verify results
    [Tags]    search
    Open Google
    Input Search Term 2
    Enter Google Search
    Wait Until Page Contains    ${SEARCH_RESULT1}    timeout=10s
    Sleep    5s
    Verify Search Results 2
    Capture Page Screenshot With Name    TC1002
    Close Browser

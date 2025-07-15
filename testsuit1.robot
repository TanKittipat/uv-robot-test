*** Settings ***
Library    SeleniumLibrary
Library    ChromeHelper.py
Library    DateTime

*** Variables ***
${BROWSER}          headlesschrome
${SEARCH_TERM1}      robot
${SEARCH_TERM2}      java
${SEARCH_RESULT1}    Robot
${SEARCH_RESULT2}    Java
${URL}              https://www.google.com


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


*** Keywords ***
Open Google
    ${chrome_options}=    Get Chrome Options With Binary    /Users/naruaponsuwanwijit/Desktop/all-project/chrome/chrome-mac-arm64/Google Chrome for Testing/Contents/MacOS/Google Chrome for Testing
    Open Browser    ${URL}     ${BROWSER}  options=${chrome_options}
    Set Window Size    1920    1080

Input Search Term
    Input Text    name=q    ${SEARCH_TERM1}

Input Search Term 2
    Input Text    name=q    ${SEARCH_TERM2}    

Enter Google Search
    Press Keys    name=q    ENTER

Verify Search Results 
    Page Should Contain    ${SEARCH_RESULT1}

Verify Search Results 2
    Page Should Contain    ${SEARCH_RESULT2}

Capture Page Screenshot With Name
    [Arguments]    ${test_case_name}
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    ${filename}=     Set Variable    ${test_case_name}_${timestamp}.png
    Log    Capturing screenshot: ${filename}
    Capture Page Screenshot    ${filename}
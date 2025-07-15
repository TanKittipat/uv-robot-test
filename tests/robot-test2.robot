*** Settings ***
Library    SeleniumLibrary
Library    ../libs/ChromeHelper.py
*** Test Cases ***
Test With Chrome Binary
    ${chrome_options}=    Get Chrome Options With Binary    D:/654259023/chrome-win64/chrome.exe
    Open Browser    https://www.google.com    headlesschrome    options=${chrome_options}
    Title Should Be    Google
    Close Browser
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test With Chrome
    ${chrome_options}=    Create Dictionary
    ...    binary_location=D:/654259023/chrome-win64/chrome.exe
    ...    args=--no-sandbox,--disable-dev-shm-usage
    
    ${desired_caps}=    Create Dictionary    chromeOptions=${chrome_options}
    
    Open Browser    https://www.google.com    chrome    desired_capabilities=${desired_caps}
    Close Browser
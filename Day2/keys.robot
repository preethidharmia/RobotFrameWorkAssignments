*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    id=username

Input Login Credentials
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}

Submit Login Form
    Click Button    id=submit

Verify Login Success
    Wait Until Page Contains    ${LOGIN_MESSAGE}    timeout=10s
    Capture page screenshot
    Page Should Contain    ${LOGIN_MESSAGE}

Input Login UInvalid Credentials
    Input Text    id=username    ${INVALID_USER}
    Input Text    id=password    ${PASSWORD}

Verify Login UsernameFailed
    wait until page contains        ${ERROR_MESSAGE}    timeout=10s
    Capture page screenshot
    Page should contain     ${ERROR_MESSAGE}

Input Login PInvalid Credentials
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${INVALID_PASS}

Verify Login PasswordFailed
    wait until page contains        ${ERROR_PMSG}    timeout=10s
    Capture page screenshot
    Page should contain     ${ERROR_PMSG}
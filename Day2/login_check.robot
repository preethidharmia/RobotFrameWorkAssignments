*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=./Screenshots
Library    OperatingSystem
Suite Setup    Create Directory    ./Screenshots
Resource   ../config/keys.robot

*** Variables ***
${URL}             https://practicetestautomation.com/practice-test-login/
${BROWSER}         chrome
${USERNAME}        student
${INVALID_USER}    wrong_username
${PASSWORD}        Password123
${INVALID_PASS}    Invalidpasscode
${LOGIN_MESSAGE}   Logged In Successfully
${ERROR_MESSAGE}   Your username is invalid!
${ERROR_PMSG}      Your password is invalid!

*** Test Cases ***
Verify Successful Login
    [Documentation]    This test verifies successful login
    Open Browser To Login Page
    Input Login Credentials
    Submit Login Form
    Verify Login Success
    Close Browser

Verify Invalid Username
    [Documentation]     This test verifies the negative scenario - username incorrect
    Open Browser To Login Page
    Input Login UInvalid Credentials
    Submit Login Form
    Verify Login UsernameFailed
    Close browser

Verify Invalid Password
    [Documentation]     This test to verify the negative scenario - password incorrect
    Open Browser To Login Page
    Input Login PInvalid Credentials
    Submit Login Form
    Verify Login PasswordFailed
    Close browser
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser and Navigate to Website
    Open Browser    https://automationexercise.com/    chrome
    Close Browser
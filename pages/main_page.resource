*** Settings ***
Documentation    pom for main page 
Library    SeleniumLibrary

*** Variables ***
${inscription}    css=.top-bar-btn


*** Keywords ***
Click Inscription
    Click Element    ${inscription}
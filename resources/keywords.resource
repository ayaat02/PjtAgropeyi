*** Settings ***
Documentation    keywords for project
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://agropeyi.fr/index.php


*** Keywords ***
init browser
    Open Browser    ${URL}    ${BROWSER}
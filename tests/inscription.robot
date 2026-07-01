*** Settings ***
Documentation    parcour inscription
Library    SeleniumLibrary
Resource    ../pages/main_page.resource
Resource    ../resources/keywords.resource
Resource    ../pages/inscription_page.resource
Test Setup    init browser
Test Teardown    Close Browser
Library    Collections
Library    String
Library    FakerLibrary

*** Variables ***
#${rand_str}=    Generate Random String    8    [LOWER][NUMBERS]
#${email}=    Catenate    SEPARATOR    ${rand_str}    @gmail.com
#${password}=    Generate Random String    8    [LETTERS][NUMBERS] 
#${name}=    Catenate    SEPARATOR    ${rand_str}    user
#${prenom}=    Catenate    SEPARATOR    ${rand_str}    secondName



*** Test Cases ***
Parcour inscription
    ${rand_str}=    Generate Random String    8    [LOWER][NUMBERS]
    ${email}=    Catenate    SEPARATOR=    ${rand_str}    @gmail.com
    ${password}=    Generate Random String    8    [LETTERS][NUMBERS]
    ${name}=    FakerLibrary.First Name
    ${prenom}=    FakerLibrary.Last Name
    

    [Tags]    smoke    e2e
    main_page.Click Inscription
    Page Should Contain    Créer un compte
    inscription_page.remplire_formulaire    ${name}    ${prenom}    ${email}    0785859674    tiziouzou    paris    94200    France    ${password}    ${password} 
    #Wait Until Element Is Visible    ${successMsg}    10s
    inscription_page.CheckMsg 
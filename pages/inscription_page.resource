*** Settings ***
Documentation    pom for main page 
Library    SeleniumLibrary

*** Variables ***
${name}    id:nom
${prenom}    id:prenom
${email}    id:email
${tel}    id=telephone
${adresse}    id=adresse
${ville}    id=ville
${c_postal}    id=code_postal
${pays}    id=pays
${mdp}    id=mot_de_passe
${c_mdp}    id=confirmer_mot_de_passe
${btn_inscrire}    css=.btn.btn-fuchsia
${successMsg}    xpath=//div[contains(@class,'alert-success')]

*** Keywords ***
Saisir name
    [Arguments]    ${n}
    Input Text    ${name}    ${n}    

Saisir prenom
    [Arguments]    ${p}
    Input Text    ${prenom}    ${p}    

Saisir email
    [Arguments]    ${e}
    Input Text    ${email}    ${e}    

Saisir telephone
    [Arguments]    ${t}
    Input Text    ${tel}    ${t}    

Saisir adresse
    [Arguments]    ${a}
    Input Text    ${adresse}    ${a}    

Saisir ville
    [Arguments]    ${v}
    Input Text    ${ville}    ${v} 

Saisir code_postale
    [Arguments]    ${cp}
    Input Text    ${c_postal}    ${cp}   

Saisir pays
    [Arguments]    ${py}
    Select From List By Value    ${pays}    ${py}    

Saisir password
    [Arguments]    ${pwd}
    Input Text    ${mdp}    ${pwd}    

Saisir Confirmed_password
    [Arguments]    ${cpwd}
    Input Text    ${c_mdp}    ${cpwd} 

Click inscription
    Wait Until Element Is Visible    ${btn_inscrire}    10s
    Scroll Element Into View    ${btn_inscrire}
    Click Button    ${btn_inscrire} 

CheckMsg
    Element Should Contain    ${successMsg}    Inscription réussie        

remplire_formulaire
    [Arguments]    ${n}    ${p}    ${e}    ${t}    ${a}    ${v}    ${cp}    ${py}    ${pwd}    ${cpwd}   
    Saisir name    ${n}
    Saisir prenom    ${p}
    Saisir email    ${e}
    Saisir telephone    ${t}
    Saisir adresse    ${a}
    Saisir ville    ${v}
    Saisir code_postale    ${cp}
    Saisir pays    ${py}
    Saisir password    ${pwd}    
    Saisir Confirmed_password    ${cpwd}
    Click inscription
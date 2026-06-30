# 🤖 AgroPeyi Automation Project
# etapes pour init le projet
## creer l'environnement et l'activer
```bash
python -m venv .venv 
python -m venv .venv --without-pip
.venv\Scripts\Activate.ps1
```
## Installer robotframwork & seleniumlibrary
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
pip list
```
## Organisation du projet
creer les dossiers : tests & resources & pages

## Ajouter la dependance pour generer le donées aleatoire
```bash
pip install robotframework-faker
library Collection 
library String
```

## Ajouter des tags
```text
Pour cibler les tests specifiquement on ajoute dans la partie test cases les [Tags]    smoke 
```

## Lancer les tests en parallel à l'aide de pabot
```bash
pip install robotframework-pabot
pabot --processes 3 --argumentfile1 ./chrome.txt --argumentfile2 ./firefox.txt --argumentfile3 ./edge.txt tests/login.robot
pabot --argumentfile1 ./chrome.txt --argumentfile2 ./firefox.txt --argumentfile3 ./edge.txt tests/login.robot 
```

## Generation des rapports avec allure
```bash
pip install allure-robotframework
npm install -g allure-commandline
robot --listener allure_robotframework:allure-results tests/
allure serve allure-results
```

## Implementation des Data driven 
```bash
pip install robotframework-datadriver
```
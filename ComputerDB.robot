*** Settings ***
Library           SeleniumLibrary    WITH NAME    SeleniumLibrary

*** Variables ***
${LOGIN}          admin
${PASSWORD}       admin


*** Test Cases ***
SearchComputerTest
    Open Browser    https://computer-database.gatling.io/computers    chrome
    Press Keys    //input[@id='searchbox']    ibm
    Click Button    //input[@id='searchsubmit']
    Element Should Be Visible    //a[ contains(text(),'IBM 1401')]
    Close Browser

*** Keywords ***
Se connecter à la billetterie avec compte drn
    Open Browser    https://museedartsdenantes.billetterie.nantesmetropole.fr/default.php    chrome
    Press Keys    //input[@id='signin_username']    ${LOGIN}
    Press Keys    //input[@id='signin_password']    ${PASSWORD}
    Click Button    //input[@value='Se connecter']

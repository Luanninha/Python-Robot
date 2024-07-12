*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Test Cases ***
Login Válido
    [Documentation]    Este caso de teste verifica o fluxo de login válido
    [Tags]    Login

    # Abrir o navegador e acessar a URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Clicar no botão de login/criação de conta
    Click Element   css=#header .nav .header_user_info > a

    # Inserir email e senha para login
    Input Text      id=email    ${VALID_EMAIL}
    Input Text      id=passwd   ${PASSWORD}

    # Clicar no botão de login
    Click Element   css=#SubmitLogin > span
    
    # Verificar se o login foi bem-sucedido 
    Wait Until Element Is Visible    css=#my-account
  
    # Fechar o navegador
    Close Browser

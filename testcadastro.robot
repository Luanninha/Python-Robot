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

     # Inserir email e clicar no botão para criar conta
    Input Text          id=email_create    ${EMAIL_CREATE}
    Click Element       css=#SubmitCreate > span
    
    # Esperar até que o formulário de criação de conta esteja presente
    Wait Until Element Is Visible    id=id_gender2    timeout=10s
    
    # Selecionar o gênero
    Click Element       id=id_gender2
    
    # Preencher os campos do formulário
    Input Text          id=customer_lastname    ${LAST_NAME}
    Input Text          id=customer_firstname   ${FIRST_NAME}
    Input Text          id=passwd               ${PASSWORD}
    Select From List By Value    id=days        ${DAYS_BIRTH}
    Select From List By Value    xpath=//*[@id="months"]    ${MONTHS_BIRTH}
    Select From List By Value    id=years       ${YEAR_BIRTH}
    
    # Selecionar newsletter
    Click Element       id=newsletter
    
    # Enviar o formulário de criação de conta
    Click Element       css=#submitAccount > span

    # Fechar o navegador
    Close Browser
*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Test Cases ***
Login Válido
    [Documentation]    Este caso de teste verifica o fluxo de carrinho de compras
    [Tags]    Carrinho

    # Abrir o navegador e acessar a URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Clicar no botão de login/criação de conta
    Click Element   css=#header .nav .header_user_info > a

    # Inserir email e senha para login
    Input Text      id=email    ${VALID_EMAIL}
    Input Text      id=passwd   ${PASSWORD}

    # Clicar no botão de login
    Click Element   xpath=//*[@id="SubmitLogin"]/span

    # Clicar no botão women
    Wait Until Element Is Visible    <font style="vertical-align: inherit;">Mulheres</font>    timeout=10s
   
    Double Click Element   <font style="vertical-align: inherit;">Mulheres</font>
    # Clicar no vestido verão
     Wait Until Element Is Visible   css=#center_column > ul > li:nth-child(5) > div > div.left-block > div > a.product_img_link > img   timeout=5s
    Click Element   css=#center_column > ul > li:nth-child(5) > div > div.left-block > div > a.product_img_link > img
    # Clicar para escolher cor vestido
    Click Element   css=#color_14
    # Clicar para adicionar ao carrinho
    Click Element   css=#add_to_cart > button > span > font > font

    # Clicar dresses
    Click Element   css=#block_top_menu > ul > li:nth-child(2) > a
    # Clicar no vestido estampado
    Click Element   css=#center_column > ul > li:nth-child(2) > div > div.left-block > div > a.product_img_link > img
    # Clicar na cor
    Click Element   css=#color_24
    # Adicionar ao carrinho
    Click Element   css=#add_to_cart > button > span > font > font

    # Clicar tshirts
    Click Element   css=#block_top_menu > ul > li:nth-child(3) > a
    # Clicar na camiseta
    Click Element   css=#center_column > ul > li > div > div.left-block > div > a.product_img_link > img
    # Camiseta em estoque mas nao aparece para adicionar ao carrinho (BUG)
    Click Element   css=#availability_value > font > font

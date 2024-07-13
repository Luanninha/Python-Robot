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
    Click Element   css=#SubmitLogin > span

# clicar no botão women
Click Element css=#block_top_menu > ul > li:nth-child(1) > a
# clicar no vestido verão
Click Element css=#center_column > ul > li:nth-child(5) > div > div.left-block > div > a.product_img_link > img
# clicar para escolher cor vestido
Click Element css=#color_14
# clicar para adicionar ao carrinho
Click Element css=#add_to_cart > button > span > font > font

#clicar dresses
Click Element css=#block_top_menu > ul > li:nth-child(2) > a
#clicar no vestido estampado
Click Element css=#center_column > ul > li:nth-child(2) > div > div.left-block > div > a.product_img_link > img
#clicar na cor
Click Element css=#color_24
#adicionar ao carrinho
Click Element css=#add_to_cart > button > span > font > font

# clicar tshirts
Click Element css=#block_top_menu > ul > li:nth-child(3) > a
#clicar na camiseta 
Click Element css=#center_column > ul > li > div > div.left-block > div > a.product_img_link > img
# camiseta em estoque mas nao aparece para adicionar ao carrinho (BUG)
Click Element css=#availability_value > font > font
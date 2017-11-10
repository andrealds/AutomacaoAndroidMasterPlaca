# language: pt

Funcionalidade: Consultar placa de veiculo

 @pequisa_valida
  Cenário: Consultar uma placa valida
    Dado que acesse a tela de pesquisa de placa
    Quando preencho com os dados da placa
    E seleciono pesquisar
    Então verifico o resultado da consulta
require 'calabash-android/calabash_steps'

Dado("que acesse a tela de pesquisa de placa") do
	@letra = "FPE"
	@numero = "2324"
 	@home.fechar_anuncio
 	@home.fechar_outro_anuncio
end

Quando("preencho com os dados da placa") do
  @home.placa_letra(@letra)
  @home.placa_numero(@numero)
end

Quando("seleciono pesquisar") do
  @home.botao_pesquisar
end

Então("verifico o resultado da consulta") do
  @home.texto_placa
  expect(query("* id:'result_placa'", :text).first).to eq "#{@letra}#{@numero}"
  screenshot
  p "Um Screenshot foi salvo na raiz deste projeto para validação"
end
Dado(/^que esteja no site do Google$/) do
  visit "http://www.google.com.br"
end

Quando(/^escrever o site do UOL$/) do
  fill_in('q',:with=>'Site do UOL')
end

Quando(/^clicar no link do site UOL$/) do
  click_link('UOL - O melhor conteúdo')
end

Quando(/^navegar na area de economia$/) do
 #find(:xpath, '//*[@id="menuHorizontal"]/div/div/ul/li[5]/a').click
 page.should have_content('Economia')
 click_link('Economia')
end

Quando(/^comparar o valor do dolar$/) do
  @dolar = find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[2]').text[10,15]
end 

Entao(/^mostrar a mensagem$/) do
  @valor = 3.20
  @dolar[1] = '.'
  #puts @dolar
  #puts @valor

  if @dolar <= @valor
 	 puts @dolar + ' É menor que R$ '+ @valor + ' então: TESTE ENCERRADO COM SUCESSO!!! '
  else
     puts @dolar + ' NÃO É menor que R$ '+ @valor + ' então: TESTE ENCERRADO COM ERRO!!!'	
  end
end
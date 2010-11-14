Dado /^que estou na pagina inicial$/ do
  visit "/"
end

Dado /^clico em "([^"]*)"$/ do |link|
  click_link(link)
end

Dado /^preencho o campo "([^"]*)" com "([^"]*)"$/ do |campo, valor|
  fill_in(campo,:with => valor)
end

Dado /^seleciono o valor "([^"]*)" em "([^"]*)"$/ do |valor, campo|
  select(valor, :from=>campo)
end

Dado /^aperto o botao "([^"]*)"$/ do |botao|
  click_button(botao)
end

Entao /^eu deveria ver "([^"]*)"$/ do |texto|
  page.should have_content(texto)
end


Dado /^que estou na pagina de Clientes$/ do
  visit "/clientes"
end

Entao /^eu deveria ver "([^"]*)" na lista de Clientes$/ do |texto|
  page.should have_content(texto)
end

Dado /^tenho o cliente abaixo:$/ do |table|
  cliente = table
end


#language: pt

Funcionalidade: Clientes
	Para Gerenciar um Cliente
	Como Usuario do Sistema
	Eu quero registrar um Cliente
		
		Cenario: Registrando um cliente
			Dado que estou na pagina de Clientes
			E clico em "Novo Cliente"
			E preencho o campo "cliente[nome]" com "fulano de tal"
			E preencho o campo "cliente[cpf]" com "12345678"
			E preencho o campo "cliente[email]" com "fulano@detal.com"
			E preencho o campo "telefone[numero]" com "(55)5555-5555"
			E preencho o campo "endereco[logradouro]" com "rua 4 numero 56"
			E preencho o campo "endereco[cep]" com "00000-000"
			E seleciono o valor "Brasil" em "endereco[pais_id]"
			E seleciono o valor "Brasilia" em "endereco[cidade_id]"
			E seleciono o valor "Centro" em "endereco[bairro_id]"
			E aperto o botao "Cadastrar"
			Entao eu deveria ver "Criado com sucesso"
		
	#	Cenario: Removendo um cliente
	#		Dado que estou na pagina de Clientes
	#		E tenho o cliente abaixo:
	#		| nome | cpf | email |
	#		| fulano | 000000 | f@f.com | 
	#		E clico em "Excluir"
	#		Entao eu deveria ver "Excluido com sucesso" na lista de Clientes
		
		

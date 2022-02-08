** Settings **
Resource		./resource.robot

Test Setup	Abrir Navegador
#Test Teardown	Fechar Navegador

**** Test Case ****
Caso de teste 01:
	Abrir o site 4devs
	Clicar em gerador de CPF
	Clicar em selecionar "nao"
	Clicar em gerar CPF

Caso de teste 02:
	Abrir o site 4devs
	Clicar em gerador de pessoas
	Clicar em gerar nomes

Caso de teste 03:
	Abrir o site 4devs
	Clicar em gerador de CPF
	Clicar em selecionar "sim"
	Clicar em gerar CPF


#https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
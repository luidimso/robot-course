*** Settings ***
Library		SeleniumLibrary
*** Keywords ***
Abrir Navegador
	Open Browser	about:blank	chrome
	Maximize Browser Window

Abrir o site 4devs
	sleep	5s
	Go To	https://www.4devs.com.br/

Clicar em gerador de CPF
	Wait Until Element Is Visible	//*[@id="top-nav"]/li[6]/a
	Click Element	//*[@id="top-nav"]/li[6]/a

Clicar em gerar CPF
	Wait Until Element Is Visible	//*[@id="bt_gerar_cpf"]
	Click Element	//*[@id="bt_gerar_cpf"]

Clicar em gerador de pessoas
	Wait Until Element Is Visible	//*[@id="top-nav"]/li[23]/a
	Click Element	//*[@id="top-nav"]/li[23]/a

Clicar em gerar nomes
	Wait Until Element Is Visible	//*[@id="bt_gerar_pessoa"]
	Click Element	//*[@id="bt_gerar_pessoa"]

Clicar em selecionar "${Pontuacao}"
	IF	$Pontuacao == "nao"
		Click Element	//*[@id="pontuacao_nao"]
	ELSE
		Click Element	//*[@id="pontuacao_sim"]
	END

Fechar Navegador
	Close Browser
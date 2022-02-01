*** Settings ***
Library		SeleniumLibrary
*** Keywords ***
Abrir Navegador
	Open Browser	about:blank	chrome
	Maximize Browser Window

Acessar o Google
	sleep	5s
	Go To	https://www.google.com.br

Fechar Navegador
	Close Browser
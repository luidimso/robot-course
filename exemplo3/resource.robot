*** Settings ***
Library		SeleniumLibrary
*** Keywords ***
Open Chrome
	Open Browser	about:blank	chrome
	Maximize Browser Window

Open website
	sleep	5s
	Go To	http://automationpractice.com/

Write search text "${Text}"
	Wait Until Element Is Visible	//*[@id="search_query_top"]
	Input Text	//*[@id="search_query_top"]	${Text}

Click search button
	Wait Until Element Is Visible	//*[@id="searchbox"]/button
	Click Element	//*[@id="searchbox"]/button

Check if title is "${Title}"
	Wait Until Element Is Visible	//*[@id="center_column"]/ul/li
	Title Should Be	${Title}

Check if result is "${Result}"
	Element Should Contain	//*[@id="center_column"]/ul/li/div/div[2]/h5/a	${Result}

Close Chrome
	Close Browser
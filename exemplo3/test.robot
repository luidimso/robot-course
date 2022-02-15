** Settings **
Resource		./resource.robot

Test Setup	Open Chrome
#Test Teardown	Close Chrome

**** Test Case ****
Test case 01:
	Open website
	Write search text "blouse"
	Click search button
	Check if title is "Search - My Store"
	Check if result is "Blouse"
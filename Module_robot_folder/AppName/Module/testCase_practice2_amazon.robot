*** Settings ***
Library		SeleniumLibrary
Library		OperatingSystem
Library		Collections
#Library		EnhancedHTTPLibrary
Library		String
#Test TearDown	Log Browser State
Suite TearDown	Close Browser
Force Tags	Test-2
# Author: jimmy.patel

***Test Cases***
Open Amazon
	Open Browser	http://www.amazon.in/	Chrome   www.amazon.in:http://127.0.0.1:/wd/hub	
	Maximize Browser Window
	Wait Until Element Is Visible		css=span[class*='nav-logo-base']

Verify Cart Icon And Cart Item Values
	Element Should Be Visible	css=span[class*='cart-icon']
	${Count}	Get Text	css=span[id*='cart-count']
	Should Be Equal As Strings	${Count}	0

Search Books
	Select From List By Label	css=select[id='searchDropdownBox']		Books
	Input Text		css=input[id*='searchtextbox']		Secret of the Nagas
	Click Element	css=div[class*='search-submit'] input[type='submit']
	#Wait Until Element Is Visible	css=img[class*='access-image'] 

Verify Available Books Count
	${BookCount}=	Get Element Count		css=div[class='a-section aok-relative s-image-fixed-height']
	${BookCountStr}=	Convert To String	${BookCount}
	Should Be Equal		${BookCountStr}		16

***Keywords***
Log Browser State
	Run Keyword If Test Failed	Get Source Page
	${random}=		Evaluate	random.randint(0, sys.maxsize)    random
	Log	screenshot_${random}.png
	Run Keyword If Test Failed	Capture Page Screenshot	screenshot_${random}.png

Get Source Page
	${source}	Get Source
	Log	${source}

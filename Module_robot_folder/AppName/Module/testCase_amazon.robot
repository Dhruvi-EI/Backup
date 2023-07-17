*** Settings ***
Library		SeleniumLibrary
Library		OperatingSystem
Library		Collections
#Library		EnhancedHTTPLibrary
Library		String
Force Tags	Test-3
#Test TearDown	Log Browser State
Suite TearDown	Close Browser
# Author: jimmy.patel

***Test Cases***
Open Amazon
	Open Browser	http://www.amazon.in/   Chrome  www.amazon.in:http://127.0.0.1:/wd/hub
	Maximize Browser Window
	Wait Until Element Is Visible		css=span[class*='nav-logo-base']

Verify Cart Icon And Cart Item Values
	Element Should Be Visible	css=span[class*='cart-icon']
	${Count}	Get Text	css=span[id*='cart-count']
	Should Be Equal As Strings	${Count}	0

Add Book To Cart
    Set Selenium Timeout    10 seconds
	Go To	https://www.amazon.in/Secret-Nagas-Shiva-Trilogy-Book/dp/9356290601/?_encoding=UTF8&pd_rd_w=8ZDcg&content-id=amzn1.sym.b5b6da36-128a-4deb-abfd-563ae12c2d96&pf_rd_p=b5b6da36-128a-4deb-abfd-563ae12c2d96&pf_rd_r=QFQ6AVT95849ZN3KG1N2&pd_rd_wg=cOaPq&pd_rd_r=04387dbd-41c3-4857-b313-9748ced709a2&ref_=pd_gw_ci_mcx_mr_hp_atf_m
	Wait Until Element Is Visible	css=a[id='a-autoid-2-announce']
	#Click Element   css=span[class='a-button-inner'] a[id='a-autoid-2-announce']
    Wait Until Element Is Visible		css=input[id='add-to-cart-button']	
	Click Element	css=input[id='add-to-cart-button']
	#Wait Until Element Is Visible	css=a[id*='btn-native']

Verify Cart Items Count
	${Count}	Get Text	css=span[id*='cart-count']
	Should Be Equal As Strings	${Count}	1

***Keywords***
Log Browser State
	Run Keyword If Test Failed	Get Source Page
	${random}=	Evaluate	random.randint(0, sys.maxint)	random
	Log	screenshot_${random}.png
	Run Keyword If Test Failed	Capture Page Screenshot	screenshot_${random}.png

Get Source Page
	${source}	Get Source
	Log	${source}

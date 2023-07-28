from datetime import datetime
from datetime import date, timedelta
from datetime import date
from selenium import webdriver
from selenium.webdriver.chrome.service import Service as Service
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager
import time
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By


class makemytrip:
    today = date.today()
    d = date.today() + timedelta(1)
    Ddate = d.strftime("%d")
    print(Ddate)
    From="Ahmedabad"
    To="Bangalore"

    def launchApp(self):
        global driver
        driver = webdriver.Chrome()
        driver.implicitly_wait(5)
        driver.maximize_window()

    def mmt(self):
            global driver
            driver = webdriver.Chrome()
            driver.get("https://www.makemytrip.com/")
            driver.maximize_window()
            driver.implicitly_wait(5)
            #driver.find_element(By.XPATH, "//i[@class='wewidgeticon we_close']").click()
            time.sleep(7)
            el = driver.find_element(By.XPATH, "//li[@class='makeFlex hrtlCenter font10 makeRelative lhUser userLoggedOut']")
            action = ActionChains(driver)
            action.move_to_element(el).perform()
            action.click()
            action.perform()
            driver.find_element(By.XPATH,"(//span[@class='chNavText darkGreyText'])[4]").click()
            time.sleep(1)
            driver.find_element(By.XPATH,"(//span[@class='appendBottom5 field-label '])[1]").click()
            driver.find_element(By.XPATH,"//input[@placeholder='From']").send_keys(self.From)
            driver.find_element(By.XPATH,"//li[@class='font14 blackText appendBottom6 autoSuggestValue']").click()
            time.sleep(1)
            driver.find_element(By.XPATH,"(//span[@class='appendBottom5 field-label '])[2]").click()
            driver.find_element(By.XPATH,"//input[@placeholder='To']").send_keys(self.To)
            driver.find_element(By.XPATH,"//div[text()='Goa']").click()
            driver.find_element(By.XPATH,"(//p[text()='"+self.Ddate+"'])[1]").click()
            # driver.find_element(By.XPATH, "(//p[text()='30'])[1]").click()
            driver.find_element(By.XPATH,"(//div[@class='pointer plus-sign-wrapper'])[1]").click()
            time.sleep(1)
            driver.find_element(By.XPATH, "//button[text()='Search']").location_once_scrolled_into_view
            driver.find_element(By.XPATH,"//button[@class='applyBtn']").click()
            driver.find_element(By.XPATH,"(//label[@class='rating-star'])[4]").click()
            time.sleep(1)
            driver.find_element(By.XPATH, "//span[text()='Featured']").location_once_scrolled_into_view
            driver.find_element(By.XPATH,"//button[text()='APPLY']").click()
            time.sleep(2)
            driver.find_element(By.XPATH, "//button[text()='Search']").location_once_scrolled_into_view
            driver.find_element(By.XPATH,"//button[text()='Search']").click()
            time.sleep(1)
            driver.find_element(By.XPATH, "//button[@class='skipBtn']").click()
            driver.implicitly_wait(2)
            driver.find_element(By.XPATH,"(//h2[@class='holidaySliderCardHeader'])[1]").is_displayed()
            print("title: "+driver.title)
            driver.back()
            driver.implicitly_wait(2)
            driver.find_element(By.XPATH, "(//span[@class='chNavText darkGreyText'])[4]").click()
            driver.find_element(By.XPATH,"(//span[@class='hdlSubMenu__item--title '])[1]").click()
            driver.find_element(By.XPATH,"//a[text()='Thailand']").click()
            driver.implicitly_wait(5)
            windows = driver.window_handles
            size = len(windows)
            parent_window = driver.current_window_handle
            for x in range(size):
                    if windows[x] != parent_window:
                            driver.switch_to.window(windows[x])
                            print(driver.title)
                            driver.close()
                            time.sleep(3)
                            break
            # Moving back to parent window
            driver.switch_to.window(parent_window)
            print(driver.title)
            time.sleep(2)


    def mmtsite(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://www.makemytrip.com/")
        driver.maximize_window()
        driver.implicitly_wait(5)
        driver.find_element(By.XPATH,"(//span[@class='lbl_input appendBottom10'])[1]").click()
        driver.find_element(By.XPATH,"//input[@placeholder='From']").send_keys(self.From)
        time.sleep(1)
        driver.find_element(By.XPATH,"(//p[@class='font14 appendBottom5 blackText'])[1]").click()
        To = driver.find_element(By.XPATH, "(//span[@class='lbl_input appendBottom10'])[2]")
        if To.is_displayed():
                actionChains = ActionChains(driver)
                actionChains.double_click(To).perform()
                time.sleep(1)
        driver.find_element(By.XPATH, "//input[@id='toCity']").send_keys(self.To)
        time.sleep(2)
        driver.find_element(By.XPATH, "(//p[@class='font12 greyText appendBottom3'])[1]").click()
        driver.find_element(By.XPATH, "(//p[text()='"+self.Ddate+"'])[1]").click()
        driver.find_element(By.XPATH, "//span[@class='lbl_input appendBottom5']").click()
        driver.find_element(By.XPATH, "//button[@class='primaryBtn btnApply pushRight']").click()
        driver.find_element(By.XPATH, "//a[@class='primaryBtn font24 latoBold widgetSearchBtn ']").click()
        driver.back()
        driver.find_element(By.XPATH,"//p[@class='font10 userPerText appendTop3']").click()
        windows = driver.window_handles
        size = len(windows)
        parent_window = driver.current_window_handle
        for x in range(size):
            if windows[x] != parent_window:
                driver.switch_to.window(windows[x])
                time.sleep(3)
                driver.find_element(By.XPATH, "(//span[@class='font14 smoothenFont'])[5]").click()
                print(driver.title)
                driver.close()
                time.sleep(3)
                break
        # Moving back to parent window
        driver.switch_to.window(parent_window)
        time.sleep(2)
        driver.close()

    def mmt2(self):
        global driver
        driver = webdriver.Chrome()
        driver.implicitly_wait(5)
        driver.maximize_window()
        driver.get("https://www.makemytrip.com/")
        time.sleep(3)
        offers=driver.find_elements(By.XPATH,"//h2[@class='fontFamilyHeading allCardsHeader']")
        actions=ActionChains(driver)
        actions.move_to_element(offers).perform()
        if offers=="Offers":
            print(offers)

    def flights(self):
        global webdriver
        driver = webdriver.Chrome()
        driver.maximize_window()
        driver.implicitly_wait(10)
        driver.get("https://www.makemytrip.com/flight/reviewDetails/?itineraryId=a7d8c32b0b9c69dd8a20bce18087702e2b3ea815&crId=cac86830-417a-4fa6-84b7-8b49bb5a85a3&cur=INR&rKey=RKEY:dd78ac84-13e1-41f2-91f4-63b659076d10:3_0~~~RKEY:dd78ac84-13e1-41f2-91f4-63b659076d10:30_0&ccde=IN&xflt=eyJjIjoiRSIsInAiOiJBLTFfQy0wX0ktMCIsInQiOiIiLCJzIjoiTUFBLUFNRC0yMDIzMDYxNSRBTUQtTUFBLTIwMjMwNjE5In0=")
        driver.find_element(By.XPATH,"(//button[@class='addBtn'])[1]").click()
        time.sleep(2)
        driver.find_element(By.XPATH,"//span[text()='Additional 5 KG']/../following-sibling::div/p[@class='qtyCounter textCenter']/span[@class='qtyActions']").click()
        time.sleep(2)
        driver.find_element(By.XPATH,"//span[@class='bgProperties icon20 overlayCrossIcon']").click()
        time.sleep(1)
        ele=driver.find_element(By.XPATH,"(//div[@class='slider-control-centerright'])[1]")
        for i in range(3):
            time.sleep(3)
            ele.click()
        # driver.find_element(By.XPATH,"(//div[@class='slider-control-centerright'])[1]").click()
        # time.sleep(1)
        # driver.find_element(By.XPATH, "(//div[@class='slider-control-centerright'])[1]").click()
        # time.sleep(3)
        driver.find_element(By.XPATH,"(//b[text()=' ₹ 2,000 '])[1]").click()
        time.sleep(1)
        Faretype="Student"
        driver.get("https://www.makemytrip.com/flight/search?itinerary=MAA-AMD-15/06/2023_AMD-MAA-19/06/2023&tripType=R&paxType=A-1_C-0_I-0&intl=false&cabinClass=E&ccde=IN&lang=eng&pft=AF")
        driver.find_element(By.XPATH,"//span[text()='"+Faretype+"']").click()
        con=driver.find_elements(By.XPATH,"//span[@class='premEconTag']")
        print("Number of flights: ",len(con)) #for students flights

    def yatra(self):
        global webdriver
        driver=webdriver.Chrome()
        driver.get("https://flight.yatra.com/air-search-ui/dom2/trigger?type=O&viewName=normal&flexi=0&noOfSegments=1&origin=DEL&originCountry=IN&destination=BOM&destinationCountry=IN&flight_depart_date=20%2F06%2F2023&ADT=1&CHD=0&INF=0&class=Economy&source=fresco-home&unqvaldesktop=1627778844833")
        driver.maximize_window()
        # driver.implicitly_wait(33)
        time.sleep(15)
        # windows = driver.window_handles
        # size = len(windows)
        # parent_window = driver.current_window_handle
        # for x in range(size):
        #     if windows[x] != parent_window:
        #         driver.switch_to.window(windows[x])
        #         time.sleep(3)
        #         print(driver.title)
        #         driver.close()
        #         time.sleep(3)
        #         break
        # # Moving back to parent window
        # driver.switch_to.window(parent_window)
        # time.sleep(3)
        # driver.find_element(By.XPATH,"(//i[@class='ico-newHeaderLogo'])[1]").click()
        # time.sleep(3)
        # driver.find_element(By.XPATH,"//span[text()='Hotels']").click()
        # ele=driver.find_element(By.XPATH,"//div[@class='yatraSecure']")
        time.sleep(5)
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
        # actions=ActionChains(driver)
        # actions.move_to_element(ele).perform()
        time.sleep(5)



obj=makemytrip()
# obj.launchApp()
# obj.mmt()
# obj.mmtsite()
# obj.mmt2()
#obj.flights()
# obj.yatra()

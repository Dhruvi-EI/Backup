from selenium import webdriver
from selenium.webdriver.chrome.service import Service as Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from Reusable import common
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.alert import Alert
import time

class test_selenium:
    def launch_app(self):
        #driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
        global driver
        #options=Options()
        #options.add_argument("--headless")
        driver = webdriver.Chrome()
        driver.implicitly_wait(10)
        # driver.get("https://www.webucator.com/")
        #driver.get(common.readXmlAsPerNode("appUrl"))
        driver.maximize_window()
        time.sleep(2)
        return self

    def Check_validateBox(self):

        try:
            #driver.get(Common_method.readXmlAsPerNode("https://the-internet.herokuapp.com/checkboxes"))
            driver.get("https://the-internet.herokuapp.com/checkboxes")
            driver.implicitly_wait(10)
            time.sleep(2)
            # validation for 1 check box
            if not driver.find_element(By.XPATH,"(//form[@id='checkboxes']/input)[1]").is_selected():
                print("Checkbox 1 is not selected")
                driver.find_element(By.XPATH, "(//form[@id='checkboxes']/input)[1]").click()
                time.sleep(2)
            else:
                print("Checkbox 1 is selected by default")

        # validation for 2 check box
            if driver.find_element(By.XPATH,"(//form[@id='checkboxes']/input)[2]").is_selected():
                print("Checkbox 2 is selected by default")
                driver.find_element(By.XPATH, "(//form[@id='checkboxes']/input)[2]").click()
            if not driver.find_element(By.XPATH, "(//form[@id='checkboxes']/input)[2]").is_selected():
                print("Checkbox 2 is unchecked pass")
                time.sleep(2)
                time.sleep(2)
            else:
                print("Checkbox 1 is selected by default")
        except:
            print("Something went wrong")

    def close_app(self):
        driver.quit()

    def Sign_in(self):
        driver.get("https://www.webucator.com/account/login/")
        driver.implicitly_wait(10)
        time.sleep(2)
        driver.find_element(By.NAME, "login").click()
        driver.find_element(By.NAME, "login").send_keys(common.resdXMLAsPerNode("email"))
        driver.find_element(By.NAME, "password").click()
        driver.find_element(By.NAME, "password").send_keys(common.resdXMLAsPerNode("passc"))
        time.sleep(3)
        time.sleep(3)
        driver.find_element(By.XPATH, "(//button[text()='Sign In'])").click()
        # if driver.find_element(By.XPATH, "(//div[@class='text-danger']/strong)").get_attribute('value')!="" :
        if driver.find_element(By.XPATH, "(//div[@class='text-danger']/strong)").text==common.resdXMLAsPerNode("passc"):
            print(common.resdXMLAsPerNode("error"))

        time.sleep(3)


    def reset_button(self):
        driver.get("https://www.webucator.com/account/login/")
        driver.implicitly_wait(10)
        time.sleep(2)
        driver.find_element(By.NAME, "reset").click()
        driver.find_element(By.NAME, "reset").send_keys(common.resdXMLAsPerNode("reset"))
        time.sleep(3)
        driver.find_element(By.XPATH, "(//button[text()])").click()
        driver.find_element(By.XPATH, "(//div[@class='text-danger']/strong)")

    def about_us(self):
        driver.get("https://www.webucator.com/")
        driver.implicitly_wait(10)
        coun = driver.find_elements(By.XPATH, "//footer//h4[text()='About Us']/../ul/li/a")
        print("Total Links are", len(coun))
        for i in coun:
            print(i.text)
        time.sleep(2)

    def Drop_down(self):
        driver.get("https://the-internet.herokuapp.com/dropdown")
        driver.implicitly_wait(10)
        select = Select(driver.find_element(By.ID, 'dropdown'))
        select.select_by_index(1)
        time.sleep(2)
        # select by text......
        select.select_by_visible_text('Option 2')
        time.sleep(2)

        # select by value.......
        select.select_by_value('2')
        time.sleep(2)

    def mouseHoverandClick(self):

            driver.get("https://www.docker.com")
            driver.implicitly_wait(10)
            ele=driver.find_element(By.XPATH,"(//a[contains(.,'Developers')])[1]")
            ActionChains(driver).move_to_element(ele).perform()
            time.sleep(3)
            driver.find_element(By.XPATH,"(//a[contains(.,'Community')])[1]").click()
            driver.implicitly_wait(10)

            if "community" in driver.current_url:
                print("success")
            else:
                print("fail")

    def handle_Web_Alert(self):
        driver.get("https://the-internet.herokuapp.com/javascript_alerts")
        driver.implicitly_wait(10)
        time.sleep(2)
        driver.find_element(By.XPATH, "//button[contains(.,'Click for JS Alert')]").click()
        time.sleep(2)
        alert = Alert(driver)
        if alert.text == "I am a JS Alert":
            alert.accept()
            time.sleep(1)
            driver.find_element(By.XPATH, "//p[text()='You successfully clicked an alert']").is_displayed()
            print("Click for Js Alert Pass.")
        else:
            print("Click for Js Alert Fail.")

        # Click for Js Confirmation.........
        driver.find_element(By.XPATH, "//button[contains(.,'Click for JS Confirm')]").click()
        time.sleep(2)
        alert = Alert(driver)
        if alert.text == "I am a JS Confirm":
            alert.dismiss()
            time.sleep(2)
            driver.find_element(By.XPATH, "//p[text()='You clicked: Cancel']").is_displayed()
            print("Click for Js confim pass.")
        else:
            print("Click for Js confim fail.")

        # Click for Js Confirmation.........
        driver.find_element(By.XPATH, "//button[contains(.,'Click for JS Prompt')]").click()
        time.sleep(2)
        alert = Alert(driver)
        if alert.text == "I am a JS prompt":
            alert.send_keys("dhruvi")
            alert.accept()
            time.sleep(2)
            driver.find_element(By.XPATH, "//p[text()='You entered: dhruvi']").is_displayed()
            print("Click for Js Prompt With name pass.")
        else:
            print("Click for Js Prompt With namefail.")


    def docker_href(self):
        driver.get("https://www.docker.com")
        driver.implicitly_wait(10)
        ele = driver.find_element(By.XPATH, "//a[@id='dkr_dd_hp_windows']").get_attribute("href")
        print(ele)
        time.sleep(3)


    def handle_window_selenium(self):
        driver.get("https://docker.com")
        driver.implicitly_wait(10)

        # Click on Twitter Logo ...
        driver.find_element(By.XPATH, "//button[@aria-label='Close']").click()
        driver.find_element(By.XPATH, "//img[@alt='twitter logo']").click()
        time.sleep(5)
        # Get the Count of Window ....
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

    def drop_down(self):
        try:

            driver.get("https://www.pizzahut.co.in/")
            driver.implicitly_wait(5)

            # Type Address in Address Search Box ...
            time.sleep(5)
            try:
                if driver.find_element(By.XPATH, "//button[@data-testid='close-offer-collection']").is_displayed():
                    driver.find_element(By.XPATH, "//button[@data-testid='close-offer-collection']").click()
            except:
                print("Preselect option is not available....")

            if driver.find_element(By.XPATH, "//input[@placeholder='Enter your location for delivery']").is_displayed():
                driver.find_element(By.XPATH, "//input[@placeholder='Enter your location for delivery']").send_keys(
                    "Lulu mall bangalore")
                time.sleep(3)
                if driver.find_element(By.XPATH, "//div[text()='Lulu Mall Bengaluru']").is_displayed():
                    driver.find_element(By.XPATH, "//div[text()='Lulu Mall Bengaluru']").click()

                    if driver.find_element(By.XPATH, "//button[@data-testid='close-offer-collection']").is_displayed():
                        print("User successfully selected the Auto Select drop down option....")
            time.sleep(3)
        except:
            driver.save_screenshot(
                "/Users/mithunroy/PycharmProjects/simplePythonSelenium/FailScreenShot/addressSelection.png")
            print("User is unable to select the Pizza address ....")

    def scroll_to_view_casestudies(self):
        try:
                driver.get("https://kubernetes.io/")
                driver.implicitly_wait(10)
                driver.find_element(By.XPATH,"(//a[text()='Case Studies'])[2]").is_displayed()
                driver.find_element(By.XPATH, "(//a[text()='Case Studies'])[2]").location_once_scrolled_into_view
                time.sleep(3)
                # driver.find_element(By.XPATH,"(//a[text()='Case Studies'])[2]").click()
                # time.sleep(3)

        except:
            print("scroll to element functionality is not working..")

    def right_click(self):
        try:
            driver.get("https://kubernetes.io/")
            driver.implicitly_wait(10)
            logo = driver.find_element(By.XPATH, "(//a[@class='navbar-brand img-fluid'])[1]")
            if logo.is_displayed():
                actionChains = ActionChains(driver)
                actionChains.context_click(logo).perform()
                time.sleep(3)
        except:
            print("error")

    def double_click(self):
        try:
            driver.get("https://kubernetes.io/")

            driver.implicitly_wait(10)
            logo = driver.find_element(By.XPATH, "(//a[@class='navbar-brand img-fluid'])[1]")
            if logo.is_displayed():
                actionChains = ActionChains(driver)
                actionChains.double_click(logo).perform()
                print("double click is working")
                time.sleep(3)
        except:
            print("error")


    def print_links(self):
        list_of_header = common.resdXMLAsPerNode("headermenu")
        value = list_of_header
        for i in value:
            print(i)

    def header(self):
        driver.get("https://kubernetes.io/")
        driver.implicitly_wait(10)
        list_of_header = common.resdXMLAsPerNode("headermenu")
        value = list_of_header.split(",")
        for i in value:
            try:
                if driver.find_element(By.XPATH,"//ul[@class='navbar-nav mt-2 mt-lg-0']//a[text()='" + i + "']").is_displayed():
                    print("Header Got .........>>", i)

            except:
                print("Header Not Found!!")

    def header_docker(self):
        driver.get("https://www.docker.com/")
        driver.implicitly_wait(10)
        list_of_header = common.resdXMLAsPerNode("headermenu")
        value = list_of_header.split(",")
        for i in value:
            try:
                if driver.find_element(By.XPATH,"//ul[@class='navbar-nav mt-2 mt-lg-0']//a[text()='" + i + "']").is_displayed():
                    print("Header Got .........>>", i)

            except:
                print("Header Not Found!!")

    def choose_file(self):
        driver.get("https://the-internet.herokuapp.com/upload")
        driver.implicitly_wait(10)
        driver.find_element(By.XPATH, "//input[@id='file-upload']").send_keys("C:/Users/158410/PycharmProjects/main/fail_screenshot/logo.png")
        time.sleep(5)
        driver.find_element(By.XPATH,"//input[@id='file-submit']").click()
        time.sleep(5)

    def print_hover_english(self):
        list_of_language = common.resdXMLAsPerNode("language")
        value = list_of_language
        for i in value:
                 print(i)

    def hover_english(self):
        try:
            driver.get("https://kubernetes.io/")
            driver.implicitly_wait(10)
            driver.find_element(By.XPATH, "// a[ @ id = 'navbarDropdownMenuLink']").click()
            time.sleep(3)
            ele = driver.find_element(By.XPATH, "//div[@class='dropdown-menu dropdown-menu-right show']").text
            print(ele)
        except:
            print("Not Working!!")

    def get_html_table_records(self, Bookname, whatToRead):
        driver.get("https://testautomationpractice.blogspot.com/")
        driver.implicitly_wait(5)
        value = "null"
        if whatToRead == "Author":
            value = driver.find_element(By.XPATH,
                                        "//table[@name='BookTable']/tbody/tr/td[text()='"+Bookname+"']/../td[2]").text
        if whatToRead == "Subject":
            value = driver.find_element(By.XPATH,
                                        "//table[@name='BookTable']/tbody/tr/td[text()='"+Bookname+"']/../td[3]").text
        if whatToRead == "Price":
            value = driver.find_element(By.XPATH,
                                        "//table[@name='BookTable']/tbody/tr/td[text()='"+Bookname+"']/../td[4]").text
        return (value)

    def english_href(self):
        driver.get("https://kubernetes.io/")
        driver.implicitly_wait(10)
        time.sleep(3)
        for i in range(1, 15):
            xpath = "(//a[@class='nav-link dropdown-toggle']/../div/a)[" + str(i) + "]"
            lang_name = driver.find_element(By.XPATH, xpath).text
            print(lang_name, " --> ", driver.find_element(By.XPATH, xpath).get_attribute("href"))

    def einfochips(self):
        global webdriver
        driver = webdriver.Chrome()
        driver.implicitly_wait(5)
        driver.get("https://www.einfochips.com/")
        driver.maximize_window()
        time.sleep(5)
        ele=driver.find_elements(By.XPATH,"//nav[@id='ubermenu-main-3-primary-menu']/ul/li/a/span").text
        print(ele)

obj = test_selenium()
obj.launch_app()
#print(obj.english_href())
#print(obj.get_html_table_records("Learn JS","Author"))
obj.hover_english()
#obj.print_hover_english()
#obj.choose_file()
#obj.print_links()
#obj.header()
#obj.right_click()
#obj.double_click()
#obj.scroll_to_view_casestudies()
#obj.drop_down()
#obj.docker_href()
#obj.handle_window_selenium()
# obj.handle_Web_Alert()
#obj.Sign_in()
#obj.reset_button()
#print(obj.about_us())
#obj.drop_down()
#obj.mouseHoverandClick()
#print(obj.Check_validateBox())
# obj.close_app()
# obj.einfochips()


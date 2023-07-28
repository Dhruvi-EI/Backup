from selenium import webdriver
from selenium.webdriver.chrome.service import Service as Service
from webdriver_manager.chrome import ChromeDriverManager
import time
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By
from Reusable import common

class learning_selenium:
    def launchapp(self):
        # driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
        global driver
        driver = webdriver.Chrome()
        driver.implicitly_wait(10)
        #driver.get(common.resdXMLAsPerNode("URL"))
        driver.maximize_window()
        time.sleep(2)

        # validate page title..

        # if driver.title == common.resdXMLAsPerNode("title"):
        #     print("Title Matching!!")
        # else:
        #     print("Not Matching!!")
        # return self

    def closeapp(self):
          return self

    def screen_shot(self):
       try:
           driver.get("https://kubernetes.io/")
           driver.implicitly_wait(10)
           if driver.find_element(By.XPATH,"//a[@class='navbar-brand img-fluid'])[1]").is_displayed():
               print("kubernetes logo is present..")
           time.sleep(3)

       except:
           driver.save_screenshot("C:/Users/158410/PycharmProjects/main/fail_screenshot/logo.png")
           print("kubernetes logo is not present..")


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
                driver.find_element(By.XPATH,"(//a[text()='Case Studies'])[2]").location_once_scrolled_into_view
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

    def header1(self):
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
        for i in range(1, 14):
            xpath = "//div[@class='dropdown-menu dropdown-menu-right show']/a)[" + str(i) + "]"
            lang_name = driver.find_element(By.XPATH, xpath).text
            print(lang_name, " --> ", driver.find_element(By.XPATH, xpath).get_attribute("href"))


obj = learning_selenium()
obj.launchapp()
#print(obj.get_html_table_records("Learn Java","Author"))
# obj.hover_english()
#obj.print_hover_english()
obj.header()
obj.header1()
#obj.right_click()
#obj.double_click()
#obj.scroll_to_view_casestudies()
#obj.drop_down()
#obj.docker_href()
#print(obj.english_href())
#obj.screen_shot()
obj.closeapp()
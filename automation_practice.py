from selenium import webdriver
import time
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By


class practice_automation:
    def practice_website(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://www.pizzahut.co.in/")
        driver.implicitly_wait(10)
        driver.maximize_window()
        time.sleep(5)
        #driver.find_element(By.XPATH,"//div[@class='px-10 mb-40 container']/a/div/span//span[text()='View all deals']").is_displayed()
        #driver.find_element(By.XPATH,"//input[@placeholder='Enter your location for delivery']").is_displayed()
        #driver.find_element(By.XPATH, "//input[@placeholder='Enter your location for delivery']").send_keys("Ahmedabad")


        driver.find_element(By.XPATH, "//div[@class='px-10 mb-40 container']/a/div/span//span[text()='View all deals']").location_once_scrolled_into_view
        # driver.find_element(By.XPATH,"//div[@class='px-10 mb-40 container']/a/div/span//span[text()='View all deals']").click()

    def practice_website2(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://www.flipkart.com/")
        driver.implicitly_wait(10)
        driver.maximize_window()
        driver.find_element(By.XPATH,"//button[@class='_2KpZ6l _2doB4z']").click()
        time.sleep(2)
        driver.find_element(By.XPATH, "//form[@class='_2M8cLY header-form-search']").is_displayed()
        time.sleep(2)
        driver.find_element(By.XPATH, "//input[@class='_3704LK']").send_keys("i phone 12 128bg")
        driver.find_element(By.XPATH,"//button[@class='L0Z3Pu']").click()
        time.sleep(2)
        ele = driver.find_element(By.XPATH,"//div[text()='APPLE iPhone 12 Pro (Gold, 128 GB)']")
        actionChains = ActionChains(driver)
        actionChains.move_to_element(ele).perform()
        #driver.find_element(By.XPATH,"//div[text()='APPLE iPhone 12 Pro (Gold, 128 GB)']").location_once_scrolled_into_view
        #driver.find_element(By.XPATH, "//div[text()='APPLE iPhone 12 Pro (Gold, 128 GB)']").is_displayed()
        time.sleep(2)
        driver.find_element(By.XPATH, "//div[text()='APPLE iPhone 12 Pro (Gold, 128 GB)']").click()
        time.sleep(3)
        print("succesfull")

    def test_website_feedback(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://www.amazon.in/")
        driver.implicitly_wait(5)
        driver.maximize_window()
        time.sleep(5)
        ele = driver.find_element(By.XPATH, "//span[@id='ad-feedback-text-right-2']")
        actionChains = ActionChains(driver)
        actionChains.move_to_element(ele).perform()
        time.sleep(4)
        driver.find_element(By.XPATH,"//span[@id='ad-feedback-text-right-2']").click()
        driver.find_element(By.XPATH,"//div[@class='a-checkbox a-checkbox-fancy feedbackFormCheckBox']/label/input").is_selected()
        time.sleep(2)
        driver.find_element(By.XPATH,"//i[@class='a-icon a-icon-close']").click()
        time.sleep(2)
        print("succesfull")

    def test_instagram(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://www.instagram.com/accounts/login/")
        driver.implicitly_wait(5)
        driver.maximize_window()
        time.sleep(2)
        driver.find_element(By.XPATH,"//i[@aria-label='Instagram']").is_displayed()
        time.sleep(2)
        driver.find_element(By.XPATH,"//input[@name='username']").send_keys("_dhruvi16")
        time.sleep(3)
        driver.find_element(By.XPATH,"//input[@aria-label='Password']").send_keys("Dhruvira#16@")
        time.sleep(3)
        driver.find_element(By.XPATH,"//div[text()='Log in']").click()
        time.sleep(2)
        print("succesfull")

    def test_DemoWebsite(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html")
        driver.implicitly_wait(5)
        driver.maximize_window()
        src=driver.find_element(By.XPATH,"//div[@id='box5']")
        dest=driver.find_element(By.XPATH,"//div[@id='box105']")
        actionChains=ActionChains(driver)
        actionChains.drag_and_drop(src,dest).perform()
        time.sleep(5)
        print("succesfull")

    def demoWebsite(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://testautomationpractice.blogspot.com/")
        driver.implicitly_wait(5)
        driver.maximize_window()
        time.sleep(2)
        ele=driver.find_element(By.XPATH,"//button[@ondblclick='myFunction1()']")
        actionChains = ActionChains(driver)
        actionChains.double_click(ele).perform()
        print("successful")
        time.sleep(3)

    def Intranet_practice(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://intranet.einfochips.com/")
        driver.implicitly_wait(5)
        driver.maximize_window()
        time.sleep(2)
        ele=driver.find_element(By.XPATH,"//a[@class='dropdown-toggle nav-link']")
        ActionChains(driver).move_to_element(ele).perform()
        time.sleep(1)
        driver.find_element(By.XPATH,"//a[text()='Holiday List']").click()
        time.sleep(2)
        driver.find_element(By.XPATH,"//a[text()='1']").location_once_scrolled_into_view
        list1 = []
        for i in range(1,7):
            driver.find_element(By.XPATH, f"(//ul[@class='pagination pagination-lg']/li)[{i}]").click()
            time.sleep(0.5)
            for j in range(1, 68,1):
                list1 = []
                a = driver.find_element(By.XPATH,f"(//table[@id='mt']/thead/following-sibling::tbody/tr/td[4])[{j}]")
                list1.append(a.text)
                print(list1)
        print("succesfull")

    def drag_and_drop(self):
        global driver
        driver = webdriver.Chrome()
        driver.get("https://the-internet.herokuapp.com/drag_and_drop")
        driver.maximize_window()
        driver.implicitly_wait(7)
        actionChains = ActionChains(driver)
        a = driver.find_element(By.XPATH, "//div[@id='column-a']")
        b = driver.find_element(By.XPATH, "//div[@id='column-b']")
        actionChains.drag_and_drop(a, b).perform()
        time.sleep(4)


obj = practice_automation()
#obj.practice_website()
#obj.practice_website2()
# obj.test_website_feedback()
#obj.test_DemoWebsite()
#obj.demoWebsite()
#obj.test_instagram()
#obj.Intranet_practice()
obj.drag_and_drop()
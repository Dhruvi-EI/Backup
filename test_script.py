from selenium import webdriver
from selenium.webdriver.chrome.service import Service as Service
from webdriver_manager.chrome import ChromeDriverManager
import time
from selenium.webdriver.common.by import By
from Reusable import common



class learning_selenium:
    def launchapp(self):
        # driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
        global driver
        driver = webdriver.Chrome()
        driver.implicitly_wait(10)
        driver.get(common.resdXMLAsPerNode("URL"))
        driver.maximize_window()
        time.sleep(2)

        # validate page title..

        if driver.title == common.resdXMLAsPerNode("title"):
            print("Title Matching!!")
        else:
            print("Not Matching!!")
        return self


    def testscript(self):
          print(driver.title)
          print(driver.current_url)
          if driver.find_element(By.XPATH, "(//img[@alt='Webucator Logo'])[2]"):
              print("Found Logo")
          else:
              print("Logo Not found")
          return self

    def closeapp(self):
          return self

obj=learning_selenium()
obj.launchapp()
obj.testscript()
obj.closeapp()





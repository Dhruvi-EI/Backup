import sys
sys.path.append('C:/Users/158410/PycharmProjects/pytest_examProject')
from selenium.webdriver.common.by import By
from reusable import Reusable
import time
from LocatorsHtml import ganpat_locators
from selenium.webdriver.common.action_chains import ActionChains


class Ganpat_web:

    def __init__(self, driver):
        self.driver = driver

    def launch_app_with_url(self, url):
        self.driver.get(url)
        self.driver.implicitly_wait(10)

    #logo validation
    def validate_logo(self,logo):
        try:
            logo = self.driver.find_elements(By.XPATH, logo)
            time.sleep(3)
            assert len(logo) > 0
        except:
            print("logo not validated")

    #print header options
    def header(self):
        try:
         #xml file will call..
            list_of_header = Reusable.resdXMLAsPerNode("headermenu")
            value = list_of_header.split(",")
            for i in value:
                if self.driver.find_element(By.XPATH,ganpat_locators.test_header(i)).is_displayed():
                    print("Header options > ", i)

        except:
                print("Not Fecth Header!!")

    #click on campus life
    def click(self):
        try:
            self.driver.find_element(By.XPATH,ganpat_locators.click_campusLife()).is_displayed()
            self.driver.find_element(By.XPATH, ganpat_locators.click_campusLife()).click()
        except:
            print("unsuccessful")

    #gallery validation
    def validate_gallery(self):
        try:
            self.driver.find_element(By.XPATH, ganpat_locators.click_campusLife()).is_displayed()
            self.driver.find_element(By.XPATH, ganpat_locators.click_campusLife()).click()
            self.driver.find_element(By.XPATH,ganpat_locators.gallery())
            print("gallery present")

        except:
            print("unsuccessful")

    #count total number of images and print hrefs
    def print_gallery_src(self):
        try:
            self.driver.find_element(By.XPATH, ganpat_locators.image_count()).click()
            print("Successfully Redirect to CampusLife")
            time.sleep(5)
            ele = self.driver.find_element(By.XPATH, ganpat_locators.image_count())
            Actions = ActionChains(self.driver)
            Actions.move_to_element(ele).perform()
            time.sleep(6)
            if ele.is_displayed():
                print("Found the Gallery in H2")
            else:
                print("Not Found")

            # counting number of images.......

            coun = self.driver.find_elements(By.XPATH, ganpat_locators.print_href())
            print("Total Images are", len(coun))

            # printing src value of all present Images......
            for i in coun:
                print(" ---> ", i.get_attribute("src"))
            time.sleep(4)

            # Clicking on logo and move back to Home Page.......
            self.driver.find_element(By.XPATH, ganpat_locators.documentation_logo()).click()
            print("The Application Move to Home Page From Campus Life")
            time.sleep(3)

        except:
            print("Not get click!!")

        # Validate News Later..........
    def validateNewsLater(self, xpath, xpath2):
            ele = self.driver.find_element(By.XPATH, xpath)

            Actions = ActionChains(self.driver)
            Actions.move_to_element(ele).perform()
            time.sleep(6)
            if ele.is_displayed():
                print("Scrolled to News Later...")
                if self.driver.find_element(By.XPATH, xpath2).is_displayed():
                    print("Enter Your Email Here --->Text Box Found")
                    subscribe, validation = ganpat_locators.subscribeClick()
                    self.driver.find_element(By.XPATH, subscribe).click()
                    print("Clicked On Subscribe")
                    time.sleep(4)
                    ele = self.driver.find_element(By.XPATH,xpath)
                    Actions = ActionChains(self.driver)
                    Actions.move_to_element(ele).perform()
                    time.sleep(4)
                    if self.driver.find_element(By.XPATH,validation).is_displayed():
                        print("Found the Email Not Available Alert")
                    else:
                        print("Not Found Alert")

                else:
                 print("Not Found Email Placeholder....")

            else:
                print("Not Found")

            # Validate InterNational From header Menu..........
    def International(self, xpath):
            try:
                self.driver.find_element(By.XPATH, xpath).click()

                print("Successfully Redirect to CampusLife")
                time.sleep(6)
                course = self.driver.find_element(By.XPATH, ganpat_locators.courseyears()).text
                # printing
                print("Total Duration", course)

                print("Asian Fees is --> ", self.driver.find_element(By.XPATH, ganpat_locators.assianfees()).text)
                print("International Fees is -> ",
                      self.driver.find_element(By.XPATH, ganpat_locators.internationalfees()).text)

                if self.driver.find_element(By.XPATH, ganpat_locators.international_viewdetails()).is_displayed():


                    print("View Details found")
                if self.driver.find_element(By.XPATH, ganpat_locators.international_applybutton()).is_displayed():
                    print("Apply Button found")
                time.sleep(3)

                # pagination working............
                # by default 1 pagination is selected....

                val = self.driver.find_element(By.XPATH, ganpat_locators.pagination()).is_selected()
                # print(val)
                if self.driver.find_element(By.XPATH, ganpat_locators.pagination()).is_displayed():
                    print("By default 1 pagination selected...")
                    print(self.driver.find_element(By.XPATH, ganpat_locators.pagination()).text)
                # print("Left arrow will not work..")

            except:
                    print("Not redirected!!")






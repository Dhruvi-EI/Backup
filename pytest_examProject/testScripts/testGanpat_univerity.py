import sys
import pytest
sys.path.append('C:/Users/158410/PycharmProjects/pytest_examProject')
from pageObject.ganpat_home import Ganpat_web
from LocatorsHtml import ganpat_locators
import time
from reusable import Reusable
from selenium.webdriver.common.by import By
import json

@pytest.mark.usefixtures("crossbrowsertesting")
class TestGanpatWeb:

    def test_ganpat_uni(self,jsonData):
        obj = Ganpat_web(self.driver)
        obj.launch_app_with_url(jsonData['url_ganpat'])
        time.sleep(3)

    def test_validate_logo(self,jsonData):
        obj = Ganpat_web(self.driver)
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.validate_logo(ganpat_locators.test_ganpat_logo())
        time.sleep(3)
        print("logo validated")

    def test_read_headermenu(self,jsonData):
        obj = Ganpat_web(self.driver)
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.header()
        time.sleep(3)

    def test_click(self,jsonData):
        obj = Ganpat_web(self.driver)
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.click()
        time.sleep(3)

    def test_validate_gallery(self,jsonData):
        obj = Ganpat_web(self.driver)
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.validate_gallery()
        time.sleep(3)

    @pytest.mark.smoke
    def test_Gallery_src(self,jsonData):
        obj = Ganpat_web(self.driver)
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.print_gallery_src()
        time.sleep(3)

    def test_newsLater(self, jsonData):
        obj = Ganpat_web(self.driver)

        # here called the json data
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.validateNewsLater(ganpat_locators.validateNewslater(),ganpat_locators.validateEMailText())
        time.sleep(2)

        # Click on International and Validate...

    def test_international(self, jsonData):
        obj = Ganpat_web(self.driver)

        # here called the json data
        obj.launch_app_with_url(jsonData['url_ganpat'])
        obj.International(ganpat_locators.international())
        time.sleep(2)





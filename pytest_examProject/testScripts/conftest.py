import sys
sys.path.append('C:/Users/158410/PycharmProjects/pytest_examProject')
from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.chrome.service import Service as Service
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
import json
import time
import pytest


@pytest.fixture()
def browser(request):
    print("initiating chrome driver")
    driver=webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    request.instance.driver=driver
    driver.maximize_window()

    yield driver

    driver.close()


@pytest.fixture(scope="class")
def browser_cls(request):
    print("initiating chrome driver")
    driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    request.cls.driver = driver
    driver.maximize_window()

    yield driver

    driver.close()

def pytest_addoption(parser):
    parser.addoption("--browser", action="store", help="input browser")

@pytest.fixture()
def params(request):
    params={}
    params['browser'] = request.config.getoption('--browser')
    return params

@pytest.fixture()
def crossbrowsertesting(request,params):
    print("Initiating chrome driver")
    driver=""
    if params['browser'] =='chrome':
        driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    elif params['browser'] =='firefox':
        driver = webdriver.Firefox(service=Service(GeckoDriverManager().install()))

    request.cls.driver=driver
    driver.maximize_window()

    yield driver
    driver.close()

@pytest.fixture()
def jsonData():
    with open('C:/Users/158410/PycharmProjects/pytest_examProject/testData/testData.json') as config_file:
        data=json.load(config_file)
    return data



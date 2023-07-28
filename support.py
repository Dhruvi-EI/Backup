from selenium.webdriver.common.by import By


def get_html_table_records(driver, Bookname, whatToRead):
    driver.get("https://testautomationpractice.blogspot.com/")
    driver.implicitly_wait(10)
    value = "null"
    if whatToRead == "Author":
        value = driver.find_element(By.XPATH, "//table[@name='BookTable']/tbody/tr/td[text()='Learn Java']/../td[2]")
    if whatToRead == "Subject":
        value = driver.find_element(By.XPATH, "//table[@name='BookTable']/tbody/tr/td[text()='Learn Java']/../td[2]")
    if whatToRead == "Price":
        value = driver.find_element(By.XPATH, "//table[@name='BookTable']/tbody/tr/td[text()='Learn Java']/../td[2]")
    return (value)
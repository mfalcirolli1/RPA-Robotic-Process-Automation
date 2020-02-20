from selenium import webdriver

driver = webdriver.Chrome('C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\chromedriver_win32\\chromedriver.exe')

driver.get("https://www.google.com")

driver.find_element_by_name("q").send_keys('Linx Pay')
driver.find_element_by_class_name("RNmpXc").click()


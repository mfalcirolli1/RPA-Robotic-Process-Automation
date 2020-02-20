from selenium import webdriver

driver = webdriver.Chrome('C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\chromedriver_win32\\chromedriver.exe')
driver.get("https://www.linx.com.br/?s=")


driver.find_element_by_name('s').send_keys('Linx Pay')
driver.find_element_by_class_name('c-search-bar__button l-seach-page__button').click()




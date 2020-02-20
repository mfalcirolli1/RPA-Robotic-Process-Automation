from selenium import webdriver

username = 'matheus.falcirolli'
password = '******************'

url = 'https://share.linx.com.br/login.action?logout=true'

driver = webdriver.Chrome('C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\chromedriver_win32\\chromedriver.exe')

driver.get(url)

driver.find_element_by_id('os_username').send_keys(username)
driver.find_element_by_id('os_password').send_keys(password)
driver.find_element_by_id('loginButton').click()

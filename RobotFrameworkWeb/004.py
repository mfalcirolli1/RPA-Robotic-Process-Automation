from selenium import webdriver
from time import sleep

username = str(input('Nome de Usuário: ')).lower().strip()

while True:
    password = input('Senha: ')

    if len(password) <= 4:
        print('Senha fora de padrão, tente novamente.')
    elif len(password) >= 5:
        break

url = 'https://share.linx.com.br/login.action?logout=true'

driver = webdriver.Chrome('C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\chromedriver_win32\\chromedriver.exe')

driver.get(url)

driver.find_element_by_id('os_username').send_keys(username)
sleep(0.5)
driver.find_element_by_id('os_password').send_keys(password)
sleep(0.5)
driver.find_element_by_id('loginButton').click()


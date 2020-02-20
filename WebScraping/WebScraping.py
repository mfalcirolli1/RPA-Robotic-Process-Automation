# pip install requests
# pip install beautifulsoup4

import requests
from bs4 import BeautifulSoup

page = requests.get('https://stackoverflow.com/search?q=RPA')
soup = BeautifulSoup(page.content, 'html.parser')
comment = soup.find_all(class_='question-summary search-result')
print(comment)

import bs4
from bs4 import BeautifulSoup
import requests

url='https://www.flipkart.com/'
response=requests.get(url)
soup=BeautifulSoup(response.content,'html.parser')
# print(soup)
# print(soup.prettify())
title=soup.title
print(title.string)
# rows=soup.find('div',class_='_37K3-p')
# for i in rows:
#     print(i.text)

# desc=soup.find('div',attrs={'class'})
# mobile=desc.find_all('p')
# for i in mobile:
#     print(i[2].text)
# for i in a:
#     print(i.text)
# mobile2=mobile.find('div',class_='_1YokD2 _3Mn1Gg col-5-12 _78xt5Y')



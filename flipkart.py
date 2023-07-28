import bs4
from bs4 import BeautifulSoup
import requests

url="https://www.flipkart.com/search?q=i+phone+14+pro+max&sid=tyy%2C4io&as=on&as-show=on&otracker=AS_QueryStore_OrganicAutoSuggest_2_11_na_na_na&otracker1=AS_QueryStore_OrganicAutoSuggest_2_11_na_na_na&as-pos=2&as-type=HISTORY&suggestionId=i+phone+14+pro+max%7CMobiles&requestId=f0f06da5-b8d6-42c9-8b4e-5a4854d081d3"
response=requests.get(url)
soup=BeautifulSoup(response.content,'html.parser')
# links=soup.find_all('a')
# all_links=set()
# for i in links:
#     if i.get('href')!='#':
#         a=i.get('href')
#         all_links.add(a)
#         print(a)
#
# button=soup.find('button',class_='UikNM _G B- _S _T c G_ P0 wSSLS wnNQG')
# span=soup.find_all('span')
# print(span)
# for i in span:
#     print(i.text)

# heading=soup.find('h2')
# print(heading)

# iclass=soup.find_all('li',class_='a-carousel-card')
# print(iclass)

# span=soup.find_all('span',class_='a-size-medium a-color-base a-text-normal')
# print(span)

# name=soup.find_all('span',class_='a-size-extra-large')
# print(name)

names=soup.find_all('div',class_='_4rR01T')
list1=[]
for i in names:
        list1.append(i.text)
        #print(i.text)

list2=[]
price = soup.find_all('div', class_='_30jeq3 _1_WHN1')
for j in price:
        list2.append(j.text)
        #print(j.text)
result=zip(list1,list2)
print(dict(result))

list3=[]
details=soup.find_all('ul',class_='_1xgFaf')
for k in details:
        list3.append(k.text)
        #print(k.text)
final=zip(list1,list3)
print(dict(final))

footer=soup.find_all('div',class_='_2WErco row')
for f in footer:
        print(f.text)

foot=soup.find_all('div',class_='_2uz0vJ')
for g in foot:
        print(g.text)












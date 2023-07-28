import bs4
from bs4 import BeautifulSoup
import requests

#Make a request to the website
response = requests.get('https://www.docker.com/')

# Create a BeautifulSoup object with the response content
soup = BeautifulSoup(response.content, 'html.parser')

# Find all the anchor tags in the HTML document
anchors = soup.find('div',id_='announcement-bar')
rows=anchors.find_all('a')
# Print the text content of each anchor tag
for i in rows:
    print(i.text)

import requests
from bs4 import BeautifulSoup

url = 'https://automationpanda.com/2021/12/29/want-to-practice-test-automation-try-these-demo-sites/'
response = requests.get(url)
soup = BeautifulSoup(response.content, 'html.parser')
table= soup.find('table')
rows = table.find_all('tr')

for row in rows:
    title = row.find_all('td')
    for i in title:
        print(i.text)

# url = 'https://www.google.com'
# response = requests.get(url)
# soup = BeautifulSoup(response.content, 'html.parser')
# title = soup.title
# print(title)

# import bs4
# html = '''
# <table id="mytable">
#   <tr>
#     <td>Row 1</td>
#     <td>Column 1</td>
#   </tr>
#   <tr>
#     <td>Row 2</td>
#     <td>Column 2</td>
#   </tr>
# </table>
# '''
#
# soup = bs4.BeautifulSoup(html,'html.parser')
# rows = soup.find_all('tr')
# for row in rows:
#   print(row.text)

import bs4
html = '''
 <head>
  <title>
   The Dormouse's story
  </title>
 </head>
 <body>
  <p class="title">
   <b>
    The Dormouse's story
   </b>
  </p>
  <p class="story">
   Once upon a time there were three little sisters; and their names were
   <a class="sister" href="http://example.com/elsie" id="link1">
    Elsie
   </a>
   ,
   <a class="sister" href="http://example.com/lacie" id="link2">
    Lacie
   </a>
   and
   <a class="sister" href="http://example.com/tillie" id="link2">
    Tillie
   </a>
   ; and they lived at the bottom of a well.
  </p>
  <p class="story">
   ...
  </p>
 </body>
 '''
soup = bs4.BeautifulSoup(html,'html.parser')
row=soup.find_all('a')
for i in row:
    print(i.text)

# response = requests.get('https://www.codewithharry.com/')
# soup=BeautifulSoup(response.content,'html.parser')
#print(soup.prettify())
# title=soup.title
# print(title.string)

#Get all the anchor tags of the page
# anchors=soup.find_all('a')
# print(anchors)

#get first element of the tag
# print(soup.find('a'))

#get the class or id of the tag
# print(soup.find('a')['id'])

# links=soup.find_all('a')
# all_links=set()
# for i in links:
#     if i.get('href')!='#':
#         a="https://www.codewithharry.com/"+i.get('href')
#         all_links.add(a)
#         print(a)

# markup="<p><!--This is a comment--></p>"
# soup2=BeautifulSoup(markup)
# print(type(soup2.p.string))
# exit()

# navbarcontent=soup.find_all('li',class_='cursor-pointer hover:border-b-2 hover:border-purple-700 active:border-b-4 dark:text-purple-300')
# for i in navbarcontent:
#     print(i.text)

# a=soup.find('div',class_='container mx-auto lg:my-2')
# print(a.contents)
# print(a.children)
# for b in a.children:
#     print(b)
# for c in a.stripped_strings:
#     print(c)
# print(a.parent.prettify())
# for item in a.parents:
#     print(item.name)

# print(a.next_sibling)
# print(a.previous_sibling)
# elem=soup.select('#__NEXT_DATA__')
# print(elem)
# for x in elem:
#     print(x.prettify())

# source=soup.find_all('script')
# for n in source:
#     links="https://CodeWithHarry.com/"+n.get('src')
#     print(links)






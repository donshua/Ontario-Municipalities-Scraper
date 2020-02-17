from urllib.request import urlopen as uReq
from bs4 import BeautifulSoup as soup
from selenium import webdriver
import selenium as se
import csv

# AMO base url
AMO="https://elections.amo.on.ca"



options = webdriver.ChromeOptions()
options.add_argument('headless')

driver = se.webdriver.Chrome(chrome_options=options)


# list of municipalities web url
my_url = "https://elections.amo.on.ca/web/en/home"

driver.get(my_url)
html = driver.execute_script("return document.documentElement.outerHTML")
sel_soup = soup(html, "html.parser")
containers = sel_soup.find_all(href=True)


urls=[]
for i in range(7, 451):
    urls.append(AMO + containers[i]["href"])

with open('data.csv', 'a', newline='') as f:
    thewriter = csv.writer(f)
    for i in range(len(urls)):
        data = []
        driver.get(urls[i])
        page_html = driver.execute_script("return document.documentElement.outerHTML")
        page_soup = soup(page_html, "html.parser")
        divs = page_soup.find("div", {"class": "contact-body"})
        mayor_raw = page_soup.find("td", {"class": "name-col"})
        name = divs.p.en.contents[1]
        phone = divs.p.contents[len(divs.p.contents)-5][1:15]
        email = divs.p.a.contents[0][1:]
        mayor = mayor_raw.label.contents[0]
        data = []
        data.append(name)
        data.append(phone)
        data.append(email)
        data.append(mayor)
        thewriter.writerow(data)

    
    
print("All Done")

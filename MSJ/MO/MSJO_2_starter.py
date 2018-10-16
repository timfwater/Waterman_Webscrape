from selenium import webdriver
import time
import csv

driver = webdriver.Chrome()

driver.get('https://www.jsonline.com/search/opioid/')

SCROLL_PAUSE_TIME = 1.0

# Get scroll height
last_height = driver.execute_script("return document.body.scrollHeight")

i=1
j = 1
while True:
    # Scroll down to bottom
    i+=1
    print("i=" + str(i))
    print("j="+str(j))
    try:
        close_button = driver.find_element_by_xpath('//a[@class="bx-close bx-close-link bx-close-inside"]')
        close_button.click()
        print('close window')
    except:
        pass
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    # Wait to load page
    time.sleep(SCROLL_PAUSE_TIME)

    # Calculate new scroll height and compare with last scroll height
    new_height = driver.execute_script("return document.body.scrollHeight")
    if new_height == last_height:
        if j % 20 == 0:
            break
        else:
            j += 1
    else:
        j = 1
    last_height = new_height

Articles = driver.find_elements_by_xpath('//ul[@class="clearfix search-results-list"]/li')

dictlist = []

for item in Articles:
    try:

        Title = item.find_element_by_xpath('.//h3[@class="search-result-title search-results-headline"]').text
        print(Title)
        Date = item.find_element_by_xpath('.//span[@class="date-created meta-info-text"]').text
        print(len(Date))
        print(Date)
        Blurb = item.find_element_by_xpath('.//div[@class="back"]/p[@class="text"]').text
        print(len(Blurb))

        print(Blurb)

        dict1 = {}
        dict1['Title'] = Title
        dict1['Date'] = Date
        dict1['Blurb'] = Blurb

        dictlist.append(dict1)
        #output = Review(Title=Title,
        #                Date=Date
        #                Blurb=Blurb)
        #output.save()

    except:
        continue

keys = dictlist[0].keys()
with open('MSJO_2.csv', 'w') as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(dictlist)

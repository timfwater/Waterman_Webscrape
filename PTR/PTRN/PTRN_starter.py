from selenium import webdriver
import time
import csv

driver = webdriver.Chrome()
driver.implicitly_wait(10)
driver.get("https://triblive.com/search/?q=naloxone")


#xpath from "next" button
next_button = driver.find_element_by_xpath('//button[@aria-label="Goto Next Page"]')

pgnumb = driver.find_element_by_xpath('//div[@class="css-19dcgav"]/span').text
print(pgnumb)

count = pgnumb.split()

pgcount = (int(count[0])//10)+1

index = 1

time.sleep(5)

dictlist = []

try:
    close_button = driver.find_element_by_xpath('//a[@class="apd_closebtn"]')
    close_button.click()
    print('close window')
except:
    pass  

while index <= pgcount:

	Articles = driver.find_elements_by_xpath('//ol[@class="css-17qixhd"]/li')

	for item in Articles:
	    try:

	        Title = item.find_element_by_xpath('.//h3').text
	        print(Title)
	        #Date = item.find_element_by_xpath('.//span[@class="css-11o9ew"]').text
	        #print(len(Date))
	        #print(Date)
	        Blurb = item.find_element_by_xpath('.//p[@class="sj-results__result__description css-p9jvyt"]').text
	        print(len(Blurb))

	        #print(Blurb)

	        dict1 = {}
	        dict1['Title'] = Title
	        dict1['Date'] = Blurb.split('\n')[0]
	        dict1['Blurb'] = Blurb.split('\n')[1]

	        print(dict1)

	        dictlist.append(dict1)
	        #output = Review(Title=Title,
	        #                Date=Date
	        #                Blurb=Blurb)
	        #output.save()

	    except:
	        print('except')
	        continue

	time.sleep(2)
	print("Scraping Page number" + str(index))
	try:
		next_button.click()
	except:
		pass
	time.sleep(1)
	index = index + 1

keys = dictlist[0].keys()
with open('PTRN.csv', 'w') as output_file:
    dict_writer = csv.DictWriter(output_file, keys)
    dict_writer.writeheader()
    dict_writer.writerows(dictlist)

    #SCROLL_PAUSE_TIME = 2.0  


#Articles = driver.find_elements_by_xpath('//ol[@class="css-17qixhd"]/li')

# for item in Articles:
#     try:

#         ?
#         Title = item.find_element_by_xpath('.//h3[@class="sj-results__result__title css-ulfu6t"]').text
#         print(Title)
#         Date = item.find_element_by_xpath('.//span[@class="css-11o9ew"]').text
#         print(len(Date))
#         print(Date)
#         Blurb = item.find_element_by_xpath('.//p[@class="sj-results__result__description css-p9jvyt"]').text
#         print(len(Blurb))

#         print(Blurb)

#         dict1 = {}
#         dict1['Title'] = Title
#         dict1['Date'] = Date
#         dict1['Blurb'] = Blurb

#         dictlist.append(dict1)
#         #output = Review(Title=Title,
#         #                Date=Date
#         #                Blurb=Blurb)
#         #output.save()

#     except:
#         continue

# keys = dictlist[0].keys()
# with open('PTRO.csv', 'w') as output_file:
#     dict_writer = csv.DictWriter(output_file, keys)
#     dict_writer.writeheader()
#     dict_writer.writerows(dictlist)
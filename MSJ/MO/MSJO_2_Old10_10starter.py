from selenium import webdriver
import time

driver = webdriver.Chrome()

driver.get('https://www.jsonline.com/search/opioid/')

SCROLL_PAUSE_TIME = 2.0

# Get scroll height
last_height = driver.execute_script("return document.body.scrollHeight")

while True:
    # Scroll down to bottom
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    # Wait to load page
    time.sleep(SCROLL_PAUSE_TIME)

    # Calculate new scroll height and compare with last scroll height
    new_height = driver.execute_script("return document.body.scrollHeight")
    if new_height == last_height:
        break
    last_height = new_height

Articles = driver.find_elements_by_xpath('.//div[@class="front"]')

for item in Articles:

	Title = item.find_element_by_xpath('.//h3[@class="search-result-title search-results-headline"]').text
	Date = item.find_element_by_xpath('.//span[@class="date-created meta-info-text"]').text


	print(Title)
	print(Date)


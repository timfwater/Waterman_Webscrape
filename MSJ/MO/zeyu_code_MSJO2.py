from selenium import webdriver
import time

driver = webdriver.Chrome(r'C:\Users\hello\Desktop\chromedriver.exe')

driver.get('https://www.jsonline.com/search/opioid/')

SCROLL_PAUSE_TIME = 3.0

# Get scroll height
last_height = driver.execute_script("return document.body.scrollHeight")

i=1
while i<10:
    # Scroll down to bottom
    i+=1
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
        break
    last_height = new_height

Articles = driver.find_elements_by_xpath('//ul[@class="clearfix search-results-list"]/li')

for item in Articles:
    try:

        Title = item.find_element_by_xpath('.//h3[@class="search-result-title search-results-headline"]').text
        print(Title)
        Date = item.find_element_by_xpath('.//span[@class="date-created meta-info-text"]').text
        print(Date)
    except:
        continue
import webbrowser
from selenium import webdriver
from time import sleep

# webbrowser.open("http://www.aimbooster.com/")

driver = webdriver.Chrome()
driver.get('https://www.python.org')
sleep(1)

driver.get_screenshot_as_file("screenshot.png")
driver.quit()
print("end...")
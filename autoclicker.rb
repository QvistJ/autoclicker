require "selenium-webdriver"

Selenium::WebDriver::Chrome.driver_path = 'C:\Users\Jonathan Lindqvist\Downloads\chromedriver.exe'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.humanbenchmark.com/tests/reactiontime"

element = driver.find_element(:xpath, '//*[@id="root"]/div/div[4]/div[1]/div/div[1]/div[1]/img')
element.click
#element.send_keys "Hello WebDriver!"
#element.submit

btn_ask_question = driver.find_element(:xpath, '//*[@id="root"]/div/div[4]/div[1]')
p btn_ask_question.attribute(".view-go")

while btn_ask_question.attribute(".view-go") == nil do # this does nopt work at all
 puts "nil!!!"
end

puts "its there!"

#sleep 5

puts driver.title

driver.quit

#940,355
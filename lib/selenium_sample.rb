require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://selenium.dev'
p driver.title  # "Selenium"

options = Selenium::WebDriver::Options.chrome
p options.browser_name  # "chrome"

element = driver.find_element(:class, 'd-1')
p element.text  # "Selenium automates browsers. That's it!"

driver.switch_to.new_window(:tab)
driver.get 'https://www.selenium.dev/documentation/'
p driver.title  # "The Selenium Browser Automation Project | Selenium"

driver.quit

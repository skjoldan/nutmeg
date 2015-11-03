require "rubygems"
require "selenium-webdriver"
require "page-object"
require "minitest"

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver.for :chrome
accept_next_alert = true
driver.manage.timeouts.implicit_wait = 30
driver.manage.timeouts.script_timeout = 30
verification_errors = []

Before do
  @driver = driver
end

at_exit do
  driver.close
end
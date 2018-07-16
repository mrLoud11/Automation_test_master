require 'rubygems'
require 'selenium-webdriver'

ENV['no_proxy'] = "127.0.0.1"

Before do

  @browser = Selenium::WebDriver.for :chrome

end



After do
  @browser.close
end
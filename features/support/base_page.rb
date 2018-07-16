require_relative '../../features/support/config'

class BasePage

  def initialize (driver)
    @browser = driver
  end


def click(locator)
  find(locator).click
end


def type(text, locator)
  element = find(locator)
  element.send_keys text
end

def find(locator, parent_element = @browser)
    parent_element.find_element locator
  end


def verify_page_load?(locator, page)
  page_load = page_load(locator, page)
  if page_load != true
    raise Exception.new ("time out loading #{page}") until page_load
  else
    return true
  end

end




private
def page_load(locator, page, wait_time = (ENV['browser_timeout']).to_i)
  begin
    wait = Selenium::WebDriver::Wait.new(timeout: wait_time)
    wait.until do
        element  = @browser.find_element(locator)
        true if element.displayed?
    end
    end
end

  end
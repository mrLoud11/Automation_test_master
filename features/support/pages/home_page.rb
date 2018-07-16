require_relative '../../../features/support/base_page'

class HomePage < BasePage


  EXISTING_USER_LOGIN ||= {xpath: '/html/body/table[2]/tbody/tr/td[1]/table/tbody/tr/td/small[1]/a[2]'}
  BD_LOGO ||= {xpath: '/html/body/table[1]/tbody/tr[2]/td[1]/img'}




  def initialize(driver)
    super
    verify_page_load?(BD_LOGO, 'trading site page')
  end


  def go_to_login
  click(EXISTING_USER_LOGIN)
  end



  def trade_stocks
    @browser.find_element(TRADE).click
    @browser.find_element(SYMBOL_INPUT).send_keys("MOKA")
    @browser.find_element(QUANTITY).send_keys("25")
    @browser.find_element(PLACE_TRADE).click
    @browser.find_element(PLACE_ORDER).click

  end

  def verify_text
    @browser.find_element(SUCCESS_MESSAGE)
  end

  def trade (symbol, amount)
    @browser.find_element(TRADE).click
    @browser.find_element(SYMBOL_INPUT).send_keys(symbol)
    @browser.find_element(QUANTITY).send_keys(amount)
    @browser.find_element(PLACE_TRADE).click
    @browser.find_element(PLACE_ORDER).click

  end



 end


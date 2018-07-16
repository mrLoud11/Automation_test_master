require_relative '../../../features/support/base_page'

class LoginPage < BasePage

  LOGIN_INPUT ||= {name: 'login'}
  PASSWORD_INPUT ||= {name: 'password'}
  LOGIN_LINK ||= {xpath: '/html/body/form/table[2]/tbody/tr/td[4]/table/tbody/tr[5]/td[2]/input'}




  def initialize(driver)
    super
    verify_page_load?(PASSWORD_INPUT, 'trading site page')
  end


  def login_users (user, password)
    type user, (LOGIN_INPUT)
    type password, (PASSWORD_INPUT)
    click(LOGIN_LINK)
  end



end
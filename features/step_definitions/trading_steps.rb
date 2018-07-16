Given(/^I am on the investment site$/) do
    @browser.navigate.to("https://bdonline.sqe.com/")
end

When(/^I login to the site$/) do
  @home_page = TradingSite.new(@browser)
  @home_page.go_to_login
end

And(/^I make a trade$/) do
    pending
end


Then(/^I should see success message "([^"]*)"$/) do |arg|
    pending
end
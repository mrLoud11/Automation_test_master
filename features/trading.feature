Feature: Looking to get rich quick

  Scenario: Buy stocks to make money
    Given I am on the investment site
    When I login to the site
    And I make a trade
    Then I should see success message "Thank you. Your order has been placed. "






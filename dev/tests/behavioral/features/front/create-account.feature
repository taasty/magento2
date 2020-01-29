@javascript
Feature: Customer accounts functionality

  Scenario: User registers as a customer

    Given I am on "/"

    Then I wait for element with xpath "//div[@class='panel header']//a[contains(text(),'Create an Account')]" to appear
    And I click on the element with xpath "//div[@class='panel header']//a[contains(text(),'Create an Account')]"


    Then I wait for page to load "/index.php/customer/account/create/"

    #Personal information
    And I wait for element with xpath "//input[@id='firstname']" to appear
    And I fill in the following:
      | firstname          | Anne           |
      | lastname           | Liz            |
    And I check "is_subscribed"
    And I fill in the following:
      | email                  | newtest@gmail.com |
      | password               | Anne1234$         |
      | password_confirmation  | Anne1234$         |

    And I wait for element with xpath "//form[@class='form create account form-create-account']//span[contains(text(),'Create an Account')]" to appear
    And I click on the element with xpath "//form[@class='form create account form-create-account']//span[contains(text(),'Create an Account')]"

    #Success
    Then I wait for page to load "/index.php/customer/account/"
    And I wait for element containing unique text "Thank you for registering with Main Website Store." to appear
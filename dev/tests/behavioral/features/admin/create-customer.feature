@javascript
Feature: Create customer

  Scenario: Magento admin creates customer's account

    Given I am on "http://magento.vm/index.php/admin/admin/index/index/key/509d07fe462fb9526fa8419f968a4373fdb9e162fb47fd7845b3de2f8d550be4/"

    Then I wait for element with xpath "//*[@id='html-body']/section" to appear
    And I fill in the following:
      | login[username]           | demo                |
      | login[password]           | demoPwd0            |

    And I click on the element with xpath "//form[@id='login-form']//span[contains(text(),'Sign in')]"

    #Customers
    And I click on the element with xpath "//li[@data-ui-id='menu-magento-customer-customer']/a/span[contains(text(), 'Customers')]"
    And I click on the element with xpath "//li[@data-ui-id='menu-magento-customer-customer-manage']/a/span[contains(text(), 'All Customers')]"

    #Add New Customer
    And I click on the element with xpath "//button[@id='add']/span[contains(text(), 'Add New Customer')]"

    #Fill up customer info
    And I wait for element with xpath "//input[@name='customer[prefix]']" to appear
    And I fill in the following:
      | customer[prefix]           | Mrs                      |
      | customer[firstname]        | Anabella                 |
      | customer[lastname]         | Smith                    |
      | customer[email]            | ab@gmail.com             |
      | customer[taxvat]           | 1234567                  |
    And I select "Female" from "customer[gender]"

    #Save New Customer
    And I click on the element with xpath "//button[@id='save']//span[contains(text(), 'Save Customer')]"

    And I wait for element with xpath "//*[@id='messages']/div/div/div" to appear

    # Final assertion
    And I wait for element containing unique text "You saved the customer" to appear
    And I wait for element with xpath "//table[@class='data-grid data-grid-draggable']//div[contains(text(), 'Mrs Anabella Smith')]" to appear
@javascript
Feature: Customer update

  Scenario: Magento admin modifies customer's account

    Given I am on "http://magento.vm/index.php/admin/admin/index/index/key/509d07fe462fb9526fa8419f968a4373fdb9e162fb47fd7845b3de2f8d550be4/"

    Then I wait for element with xpath "//*[@id='html-body']/section" to appear
    And I fill in the following:
      | login[username]           | demo                |
      | login[password]           | demoPwd0            |

    And I wait for element with xpath "//*[@id='login-form']/fieldset/div[3]/div[1]/button/span" to appear
    And I click on the element with xpath "//*[@id='login-form']/fieldset/div[3]/div[1]/button/span"

    #Customers
    And I wait for element with xpath "//*[@id='menu-magento-customer-customer']/a" to appear
    And I click on the element with xpath "//*[@id='menu-magento-customer-customer']/a"

    And I wait for element with xpath "//*[@id='menu-magento-customer-customer']/div/ul/li[1]/a/span" to appear
    And I click on the element with xpath "//*[@id='menu-magento-customer-customer']/div/ul/li[1]/a/span"

    #Add New Customer
    And I wait for element with xpath "//*[@id='add']/span" to appear
    And I click on the element with xpath "//*[@id='add']/span"

    #Create order
    And I wait for element with xpath "//*[@name='customer[prefix]']" to appear
    And I fill in the following:
      | customer[prefix]           | 123456789                |
      | customer[firstname]        | Anabella                 |
      | customer[lastname]         | Smith                    |
      | customer[email]            | ab@gmail.com             |
      | customer[taxvat]           | 1234567                  |

    And I select "Female" from "customer[gender]"

    #Save New Customer
    And I wait for element with xpath "//*[@id='save']/span/span" to appear
    And I click on the element with xpath "//*[@id='save']/span/span"

    And I wait for element with xpath "//*[@id='messages']/div/div/div" to appear
  
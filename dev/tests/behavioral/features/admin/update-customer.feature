@javascript
Feature: Update customer feature

  Scenario: Update customer (admin side)

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

    #Edit Customers
    And I wait for element with xpath "//*[@id='container']/div/div[4]/table/tbody/tr[2]/td[17]/a" to appear
    And I click on the element with xpath "//*[@id='container']/div/div[4]/table/tbody/tr[2]/td[17]/a"

    #Create order
    And I wait for element with xpath "//*[@id='order']/span" to appear
    And I click on the element with xpath "//*[@id='order']/span"

    #Add products
    And I wait for element with xpath "//*[@id='order-items']/div[1]/div/button/span" to appear
    And I click on the element with xpath "//*[@id='order-items']/div[1]/div/button/span"

    And I wait for element with xpath "//*[@id='id_2044']" to appear
    And I click on the element with xpath "//*[@id='id_2044']"

    And I wait for element with xpath "//*[@id='order-shipping-method-summary']/a/span" to appear
    And I click on the element with xpath "//*[@id='order-shipping-method-summary']/a/span"

    #Submit button
    And I wait for element with xpath "//div[@class='order-totals-actions']//button[@class='action-default scalable save primary']" to appear
    And I click on the element with xpath "//div[@class='order-totals-actions']//button[@class='action-default scalable save primary']"
 
    And I wait for element with xpath "//*[@id='order-shipping_method']/div[2]/strong" to appear

@javascript
Feature: Shipment functionality

  Scenario: Magento admin updates customer's billing information

    Given I am on "http://magento.vm/index.php/admin/admin/index/index/key/509d07fe462fb9526fa8419f968a4373fdb9e162fb47fd7845b3de2f8d550be4/"

    Then I wait for element with xpath "//*[@id='html-body']/section" to appear
    And I fill in the following:
      | login[username]           | demo                |
      | login[password]           | demoPwd0            |

    And I click on the element with xpath "//form[@id='login-form']//span[contains(text(),'Sign in')]"

    #Sales > Shipments
    And I click on the element with xpath "//li[@data-ui-id='menu-magento-sales-sales']//span[contains(text(),'Sales')]"
    And I click on the element with xpath "//li[@data-ui-id='menu-magento-sales-sales-shipment']//span[contains(text(),'Shipments')]"

    #Shipments
    And I wait for element with xpath "//table[@class='data-grid data-grid-draggable']//tr[td/div/text()[contains(.,'000000001')]]//a[contains(text(), 'View')]" to appear
    And I click on the element with xpath "//table[@class='data-grid data-grid-draggable']//tr[td/div/text()[contains(.,'000000001')]]//a[contains(text(), 'View')]"
    And I click on the element with xpath "//div[span/text()[contains(.,'Billing Address')]]//a[contains(text(),'Edit')]"

    #Change address
    And I wait for element with xpath "//*[@id='container']/fieldset/legend/span" to appear
    And I fill in the following:
      | prefix                    | Mrs                      |
      | company                   | The ADT Corporation      |
      | street[0]                 | 1501 Yamato Rd           |
    And I select "Florida" from "region_id"
    And I fill in the following:
      | postcode                  | 33431                    |
      | telephone                 | (561) 402-0338           |
      | fax                       | (561) 404-0372           |

    And I click on the element with xpath "//div[@class='page-actions-buttons']//span[contains(text(),'Save Order Address')]"

    #Assertion
    And I wait for element with xpath "//div[@class='messages']//div[contains(text(),'You updated the order address.')]" to appear

    #Invoices
    And I click on the element with xpath "//ul[@role='tablist']//span[contains(text(),'Invoices')]"

    And I wait for element with xpath "//*[@id='sales_order_view_tabs_order_invoices_content']/div/div[3]/table/tbody/tr/td[9]/a" to appear
    And I click on the element with xpath "//*[@id='sales_order_view_tabs_order_invoices_content']/div/div[3]/table/tbody/tr/td[9]/a"

    And I wait for element with xpath "//textarea[@name='comment[comment]']" to appear
    And I fill in the following:
      | comment[comment]  | Customer requested billing info change. Result: Updated. |
    And I check "comment[is_customer_notified]"

    And I click on the element with xpath "//button[@id='submit_comment_button']/span"

    #Assertion
    And I wait for element with xpath "//div[@class='note-list-comment'][contains(text(),'Customer requested billing info change. Result: Updated.')]" to appear

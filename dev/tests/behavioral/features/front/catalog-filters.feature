@javascript
Feature: Catalog category filters

  Scenario: User filters products

    Given I am on "/index.php/women.html"

    And I wait for element with xpath "//*[@id='maincontent']/div[4]/div[2]/div/div/ul[1]/li[2]/a" to appear
    And I click on the element with xpath "//*[@id='maincontent']/div[4]/div[2]/div/div/ul[1]/li[2]/a"

    And I wait for page to load "/index.php/women/tops-women/jackets-women.html"
    And I wait for element with xpath "//div[@class='filter-options-title'][contains(text(), 'Style')]" to appear
    And I click on the element with xpath "//div[@class='filter-options-title'][contains(text(), 'Style')]"
    And I wait for element with xpath "//div[@class='filter-options-content']//a[contains(text(), 'Soft Shell')]" to appear
    And I click on the element with xpath "//div[@class='filter-options-content']//a[contains(text(), 'Soft Shell')]"
    Then I wait for page to load "/index.php/women/tops-women/jackets-women.html?style_general=125"

    #Material
    And I wait for element with xpath "//div[@class='filter-options-title'][contains(text(), 'Material')]" to appear
    And I click on the element with xpath "//div[@class='filter-options-title'][contains(text(), 'Material')]"
    And I wait for element with xpath "//div[@class='filter-options-content']//a[contains(text(), 'Fleece')]" to appear
    And I click on the element with xpath "//div[@class='filter-options-content']//a[contains(text(), 'Fleece')]"

    #Price
    And I wait for element with xpath "//div[@class='filter-options-title'][contains(text(), 'Price')]" to appear
    And I click on the element with xpath "//div[@class='filter-options-title'][contains(text(), 'Price')]"
    And I wait for element with xpath "//div[@class='filter-options-content']//a[contains(span/text(), '$50.00')]" to appear
    And I click on the element with xpath "//div[@class='filter-options-content']//a[contains(span/text(), '$50.00')]"

    And I wait for element with xpath "//*[@id='maincontent']/div[3]/div[1]/div[2]/div[1]/strong[2]" to appear
    And I click on the element with xpath "//*[@id='maincontent']/div[3]/div[1]/div[2]/div[1]/strong[2]"


Feature: SauceDemo Add to Cart
  Scenario: Add to cart
    Given I am on SauceDemo
    When click 2nd product
    And click the cart
    And click on the checkout
    And Enter your Information
    Then Click on Finish

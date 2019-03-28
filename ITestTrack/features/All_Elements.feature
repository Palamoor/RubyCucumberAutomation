Feature: Automate all elements

  Scenario: Check all elements
    Given I go to automation page
    When I enter firstname
    And I enter lastname
    And I select Gender as male
    And I select as Bike
    And I select Audi
    Then I click submit
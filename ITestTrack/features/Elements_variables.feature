Feature: Automate all elements using variables

  Scenario: Automate Elements
    Given I am in the Automation Page
    When I enter the First Name as Mike
    And I enter the Last Name as Jeff
    And I select the Gender as Male
    And I select Bike
    And I select car
    And I select a car as Audi
    Then I click Submit

  Scenario: Automate the given Elements1
    Given I am in the Automation Page
    When I enter the First Name as Kara
    And I enter the Last Name as John
    And I select the Gender as Female
    And I select Bike
    And I select car
    And I select a car as Mercedes
    Then I click Submit


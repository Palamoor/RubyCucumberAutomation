Feature: Automate all Elements with Scenario Outline

  Scenario Outline: Automate Elements

    Given I am in Automate Elements page
    When I enter the FirstName as <fname> and LastName as <lname>
    And I select gender as <gender>
    And I select the Bike
    And I select the car
    And I select car as <carmodel>
    Then I click the Submit

    Examples:
      |fname|lname  |gender|carmodel|
      |Jeff |chris  |female|Audi   |
      |Ava  |Horston|male|Mercedes |
      |Maghi|Portus |female|Volvo  |
  @smoke
  Scenario: Automate Elements

    Given I am in Automate Elements page
    When I enter the FirstName
    And Enter LastName
    And I select gender as male
    And I select the Bike
    And I select the car
    And I select car Audi
    Then I click the Submit


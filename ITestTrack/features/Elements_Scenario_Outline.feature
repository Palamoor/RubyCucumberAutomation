Feature: Automate all Elements with Scenario Outline
@smoke
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


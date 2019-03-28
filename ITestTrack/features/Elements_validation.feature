Feature: Validate Elements Page

  Scenario Outline: Automate Elements page with Validation
    Given I am on Elements page
    When Enter FName as <fname> and LName as <lname>
    And Select gender as <gender>
    And Select the Bike
    And Select the car
    And Select car as <carmodel>
    And Click the Submit
    Then Check the result <fname> <lname> <gender>
    Examples:
      |fname|lname  |gender|carmodel|
      |Jen |sew  |female|Audi   |
      |Kara |Beem|male|Mercedes |
      |Olivia|Parker|female|Volvo  |


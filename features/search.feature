# language: en
Feature: As a User i would like to perform search
  @sea
  Scenario: User able to search by existing unit conversion
    Given I land on home screen
    Then I press on Search icon
    When I type "Temperature" to search field
    And I press on Search icon on soft keyboard
    Then I verify "Temperature" as current unit conversion
    And Left Unit picker value should be "Celsius"
    And Right Unit picker value should be "Fahrenheit"

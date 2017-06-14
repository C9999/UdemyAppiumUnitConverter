# language: en
Feature: User able to create new custom conversion
  @power
  Scenario: User able to create new custom conversion
    Given I land on home screen
    When I press on Menu icon
    And I press My Conversions
    Then I press on Create Your Fist Conversion button
    And I type "Power" as new conversion name
    Then I press on NEW UNIT button on new converions screen
    And I type "Horse power" as unit value
    Then I type "HP" as unit symbol
    And I type "1" as new unit value
    Then I press on checkmark icon on new unit screen
    Then I press on NEW UNIT button on new converions screen
    And I type "Mule power" as unit value
    Then I type "MP" as unit symbol
    And I type "0.5" as new unit value
    Then I press on checkmark icon on new unit screen
    Then I press on OK button on new conversion screen
    And I verify conversion with name "Power" on My Converions screen

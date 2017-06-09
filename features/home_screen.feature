# language: en
Feature: Tests gor Home screen funcionality

  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"
    Then Left Unit picker value should be "Inch"

    Scenario: Show All button should be enabled at launch
      Given I land on home screen
      Then Show All button should be enabled
      When I press on Clear button
      Then Show All button should be disabled

    @units_conversion
    Scenario Outline: Verify default conserion
      Given I land on home screen
      Then I type "<target>" to target text field
      When I should see result as "<result>"
    Examples:
    | target | result |
    | 1      | 30.48  |
    | 2      | 60.96  |
    | 10     | 304.80 |

  @fav
  Scenario: User to add current conversions to Favorite list
      Given I land on home screen
      When I press on Add to favorites icon
      And I press on Menu icon
      Then I press on Favorite Conversions button
      And I verify "Length" added to Favorite Conversions screen

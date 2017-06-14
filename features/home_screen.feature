# language: en
Feature: Tests for Home screen funcionality

  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"
    Then Left Unit picker value should be "Inch"

    @habilitado
    Scenario: Show All button should be disabled at launch
      Given I land on home screen
      Then Show All button should be disabled
      When I type "1" in application keyboard
      Then Show All button should be enabled
      #When I press on Clear button


    @conversao
    Scenario Outline: Verify default converion
      Given I land on home screen
      Then I type "<target>" in application keyboard
      When I should see result as "<result>"
    Examples:
    | target | result |
    | 1      | 30.48  |
    | 2      | 60.96  |
    | 10     | 304.8  |

  @favoritos
  Scenario: User to add current conversions to Favorite list
      Given I land on home screen
      When I press on Add to favorites icon
      And I press on Menu icon
      Then I press on Favorite Conversions button
      And I verify "Length" added to Favorite Conversions screen

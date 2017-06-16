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
      When I type "<target>" in application keyboard
      Then I should see result as "<result>"
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
      Then I verify "Favorite conversions" as current screen
      And I verify "Length" added to Favorite Conversions screen

    @inch
    Scenario Outline: User able to select different values from unit pickers
      Given I land on home screen
      Then I select "<value>" from left unit pocker
      When I type "<target>" in application keyboard
      Then I should see result as "<result>"
    Examples:
    | value | target | result |
    | Inch  | 1      | 2.54   |
    | Yard  | 1      | 91.44  |

    @gallon
    Scenario: User able to convert different unit
      Given I land on home screen
      When I press on Menu icon
      Then I select "Volume" unit
      Then I select "Gallon U.K." from right unit picker
      When I type "1" in application keyboard
      Then I should see result as "0.8327"

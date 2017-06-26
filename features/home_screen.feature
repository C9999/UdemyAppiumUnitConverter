  # language: en
@home_screen @regression
Feature: Tests for Home screen funcionality

    Background:
      Given I land on home screen

    @foot_cens
    Scenario: Default values on Home screen is Foot and Centimeter
      Then Left Unit picker value should be "Foot"
      And Right Unit picker value should be "Centimeter"
      Then Left Unit picker value should be "Inch"

    @habilitado
    Scenario: Show All button should be disabled at launch
      Then Show All button should be disabled
      When I type "1" in application keyboard
      Then Show All button should be enabled
      #When I press on Clear button

    @conversao
    Scenario Outline: Verify default converion
      When I type "<target>" in application keyboard
      Then I should see result as "<result>"
    Examples:
    | target | result |
    | 1      | 30.48  |
    | 2      | 60.96  |
    | 10     | 304.8  |

    @favoritos
    Scenario: User to add current conversions to Favorite list
      When I press on Add to favorites icon
      And I press on Menu icon
      Then I press on Favorite Conversions button
      Then I verify "Favorite conversions" as current screen
      And I verify "Length" added to Favorite Conversions screen

    @inch
    Scenario Outline: User able to select different values from unit pickers
      Then I select "<value>" from left unit pocker
      When I type "<target>" in application keyboard
      Then I should see result as "<result>"
    Examples:
    | value | target | result |
    | Inch  | 1      | 2.54   |
    | Yard  | 1      | 91.44  |

    @gallon
    Scenario: User able to convert different unit
      When I press on Menu icon
      Then I select "Volume" unit
      Then I select "Gallon U.K." from right unit picker
      When I type "1" in application keyboard
      Then I should see result as "0.8327"

    @speed
    Scenario: User able to convert Speed values
      When I press on Menu icon
      Then I select "Speed" unit
      When I type "1" in application keyboard
      Then I should see result as "1.6093"

    @reverse
    Scenario: User able to reverse picker values button
      Then I press on reverse picker values button
      Then Left Unit picker value should be "Centimeter"
      And Right Unit picker value should be "Foot"

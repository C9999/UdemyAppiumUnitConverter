# language: en
@gestures @regression
Feature: User able to use gestures
  @gesture_swipe_lr
  Scenario: User able to swipe to open side menu
    Given I land on home screen
    When I swipe from left to right
    Then I verify "Unit Converter" as current screen

  @gesture_swipe_rl
  Scenario: User able to swipe to open Calculator
    Given I land on home screen
    When I swipe from right to left
    Then I verify "Calculator" as current screen

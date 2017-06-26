# language: en
@main_menu @regression
Feature: As a user i would like to convert my units.
  @menu
  Scenario: Whem i tap on menu icon, i should see lef t side menu
    Given I land on home screen
    When I press on Menu icon
    Then I verify "Unit Converter" as current screen

  @con
  Scenario: I Should be able to open meu conversion screen
    Given I land on home screen
    When I press on Menu icon
    And I press My Conversions
    Then I land on My Conversions screen

  @history_x
  Scenario: I should be able to see conversion history and cleanup results
    Given I land on home screen
    When I press on Menu icon
    And I press on History
    Then I verify "History" as current screen
    And I should see "No history right now" text
    Then I press on Menu icon
    Then I select "Length" unit
    When I type "1" in application keyboard
    When I press on Menu icon
    And I press on History
    Then I verify "History" as current screen
    And I verify "Length" as 1st result in history list
    Then I press X to remove 1st result in history list
    And I should see "No history right now" text

  @set
  Scenario: User able to open Settings menu
    Given I land on home screen
    Then I press on More options button
    And I press on Settings button
    Then I verify "Settings" as current screen

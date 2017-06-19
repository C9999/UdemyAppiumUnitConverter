# language: en
@main_menu
Feature: As a user i would like to convert my units.
  @menu
  Scenario: Whem i tap on menu icon, i should see lef t side menu
    Given I land on home screen
    When I press on Menu icon
    Then I Should see left Menu

  @con
  Scenario: I Should be able to open meu conversion screen
    Given I land on home screen
    When I press on Menu icon
    And I press My Conversions
    Then I land on My Conversions screen

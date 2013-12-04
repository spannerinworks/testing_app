Feature: Notes Stuff
  Scenario: Visiting the notes index
    Given I am on the homepage
    When I visit "/notes"
    Then I should see "New Note"

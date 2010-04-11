Feature: Guest view entries
  In order to reduce cost of learning new things
  As a guest
  I want to read entries

  Scenario: Show list of entries
    Given there are entries:
      | title | content |
      | My first post | This is my first post |
      | My last post | Sorry, shutting down blog |
    Given I am on the home page
    Then I should see "My first post"
    And I should see "My last post"
    When I follow "My first post"
    Then I should see "This is my first post"
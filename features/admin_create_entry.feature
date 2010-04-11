Feature: Admin - Create an entry
  In order to have content on the site for people to look at
  As an author
  I want to be able to post content

  Scenario: Post an entry
    Given I am on the home page
    When I follow "Admin"
    And I follow "New entry"
    And I fill in the following:
      | Title | My fancy new post |
      | Content | Some content blah blah blah |
    And I press "Create"
    Given I am on the home page
    Then I should see "My fancy new post"
    When I follow "My fancy new post"
    Then I should see "Some content blah blah blah"
    
    
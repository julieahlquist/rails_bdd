Feature: Visitor can comment article
  As a visitor
  In order to state my opinion
  I would like to be able to comment articles

Background:
    Given I visit the site
    And I click "Comment article"

Scenario: Successfully commented on an article
    When I fill in "Comment" with "This is rubbish"
    And I click "Leave comment"
    Then I should be on "Learning Rails 5" page
    And I should see "Comment was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"
    And I should see "This is rubbish"
    
  Scenario: Visitor doesn't enter a comment for the article [Sad Path]
    When I fill in "Comment" with " "
    And I click "Leave comment"
    Then I should see "You need to write something"
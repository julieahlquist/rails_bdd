Feature: Visitor can comment article
  As a visitor
  In order to state my opinion
  I would like to be able to comment articles

Background:
    Given I visit the site
    And the following articles exists
    | title                | content                          |
    | A breaking news item | Some really breaking action      |
    | Learn Rails 5        | Build awesome rails applications |
    
Scenario: Successfully commented on an article
    When I click "Show"
    Then I should be on "Learning Rails 5"
    And I should see "Excited about learning a new framework"
    And I fill in "Commenter" with "John Doe"
    And I fill in "Comment" with "This is fake news"
    When I click "Leave comment"
    Then I should see "John Doe"
    And I should see "This is fake news"

#   Scenario: Visitor doesn't enter a comment for the article [Sad Path]
#     When I fill in "Commenter" with "John Doe"
#     And I click "Leave comment"
#     Then I should see "You have to comment something"
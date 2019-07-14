Feature: Edit article
  As a publisher
  In order to update and correct articles
  I would like to be able to edit articles

Background:
    Given I visit the site
    And the following user exists
    |  email               | password |
    |  johndoe@email.com   | abcde123 |
    When I visit the site
    And I am logged in as 'johndoe@email.com'

Scenario: Successfully edits an article
    When I click 'Edit'
    Then I should see "Excited about learning a new framework"
    And I fill in 'Title' with 'Updated title'
    And I fill in 'Content' with 'Updated content'
    And I click 'Update Article' button
    Then I should see 'Updated title'
    And I should see 'Updated content'
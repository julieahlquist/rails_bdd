Feature: User can log out
  As a visitor,
  In order to temporarily leave the forum
  I would like to be able to log out

Background:
    Given I visit the site
    And the following user exists
    | email             | password  |
    | johndoe@email.com | abcde123  |
    And I am logged in as 'johndoe@email.com'

Scenario: User can successfully log out
    When I click 'Log out'
    Then I should be on landing page

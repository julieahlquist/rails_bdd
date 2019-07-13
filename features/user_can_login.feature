Feature: List articles on the landing page
  As a visitor,
  In order to access the forum
  I would like to be able to login

  Scenario: User can successfully login
    Given I visit "Sign in" page
    Then I should see "Log in"
    And I should see "Email"
    And I should see "Password"
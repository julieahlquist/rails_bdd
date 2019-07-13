Feature: List articles on the landing page
  As a visitor,
  In order to access the forum
  I would like to be able to login

  Scenario: User can successfully login
    Given I visit the site
    Then I should see "Login"
    And I should see "Please login first"
    And I should see "Log in"
    And I should see "E-mail"
    And I should see "Password"
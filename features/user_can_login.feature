Feature: List articles on the landing page
  As a visitor,
  In order to access the forum
  I would like to be able to login

Background:
    Given I visit the site
    And I click 'Log In'

Scenario: User can successfully login
    Then I should see "Log in"
    And I should see "Email"
    And I should see "Password"
    When I fill in 'Email' with 'johndoe@email.com'
    And I fill in 'Password' with 'abcde123'
    And I click 'Log in'
    Then I should be on 'Landing' page
Feature: user can sign up
  As a visitor,
  In order to take part of the forum
  I would like to be able to sign up

Background:
    Given I visit the sign_in page
    And I click 'Sign up'

Scenario: User can successfully sign up
    Then I should be on sign_up page
    And I fill in 'Email' with 'julie@email.com'
    And I fill in 'Password' with '123abcde'
    And I click 'Sign up' button
    Then I should be on landing page
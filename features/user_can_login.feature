Feature: User can sign up
  As a visitor,
  In order to take part of the forum
  I would like to be able to sign up

Background:
    Given I visit the site
    And I click 'Sign Up'

Scenario: User can successfully sign up
    Then I should see "Sign up"

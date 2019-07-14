Feature: User can log in
Feature: User can log in
  As a user
  In order to take part of the forum
  I would like to be able to sign up

Background:
    Given the following user exists
    | email             | password  |
    | johndoe@email.com | abcde123  |
    And I visit the sign_in page

Scenario: User can successfully login
    When I fill in 'Email' with 'johndoe@email.com'
    And I fill in 'Password' with 'abcde123'
    And I click 'Log in' button
    And I should be on landing page

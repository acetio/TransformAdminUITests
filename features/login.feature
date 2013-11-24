Feature: Running a test
  As a user 
  I want to be able to login to my application

Scenario: Login Test
  Given I am on the Login Screen
  And I can see the login form
  And I enter the username 'username'
  And I enter the password 'password'
  And I click the login button
  Then I should see the Projects Screen
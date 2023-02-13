Feature: Create an Account

As a student, I want to be able to create an account on the used textbook exchange service so that I can buy, sell, and trade my used textbooks.

Background:
Given I am on the homepage of the used textbook exchange service
When I click the "Sign Up" button
And I enter my first name, last name, email address, and password

Scenario: Successful Account Creation (Normal Flow)
And I click the "Create Account" button
Then I should be taken to my account dashboard
And I should receive a confirmation email at the email address I provided

Scenario: Email Address Already in Use (Error Flow)
And the email I entered is associated with an existing account
Then I should see an error message indicating that the email address is already in use

Scenario: Invalid Email Address (Error Flow)
And the email I entered is invalid
And I click the "Create Account" button
Then I should see an error message indicating that the email address is invalid

Scenario: Password Requirements Not Met (Error Flow)
And the password I entered does not meet the requirements
And I click the "Create Account" button
Then I should see an error message indicating that the password does not meet the requirements






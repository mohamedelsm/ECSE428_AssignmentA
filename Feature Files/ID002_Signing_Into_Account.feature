Feature: Sign In to an Account
As a student, I want to be able to sign in to my account on the used textbook exchange

Background:
Given I am on the homepage of the used textbook exchange service
When I click the "Sign In" button

Scenario: Successful Sign In (Normal Flow)
And I enter my email address and password
And I click the "Sign In" button
Then I should be taken to the homepage

Scenario: Forgotten Password (Alternate Flow)
And I click the "Forgot Password" link
And I enter my email address
And I click the "Submit" button
Then I should receive an email with how to reset my password

Scenario: Incorrect Password (Error Flow)
And I enter my email address and an incorrect password
And I click the "Sign In" button
Then I should see an error message indicating that the password is incorrect

Scenario: Email Address Not Found (Error Flow)
And I enter an email address that is not associated with an account
And I click the "Sign In" button
Then I should see an error message indicating that the email address is not found and a prompt to sign up



Feature: Sign In to an Account
As a student, I want to be able to sign in to my account on the used textbook exchange

Background:
Given I am on the homepage of the used textbook exchange service
When I attempt to sign in

Scenario: Successful Sign In (Normal Flow)
And I enter my email address and password
Then I should be taken to the homepage

Scenario: Incorrect Password (Error Flow)
And I enter my email address and an incorrect password
Then I should see an error message indicating that the password is incorrect

Scenario: Email Address Not Found (Error Flow)
And I enter an email address that is not associated with an account
Then I should see an error message indicating that the email address is not found and a prompt to sign up



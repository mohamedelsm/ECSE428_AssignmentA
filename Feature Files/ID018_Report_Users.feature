Feature: Allow users to report other users
As a student, I want to be able to report other users if their behaviour is inapproproate

Background:
Given the user is logged in to the system

Scenario: Successfully Report a User (Normal Flow)
When I attempt to report a user
And I enter a valid reason
Then I should see a confirmation message that my report has been successfully submitted

Scenario: Report a banned user (Alternate Flow)
When I attempt to report a user
And the user is already banned
Then I should see a notification that the user is already banned

Scenario: Report a user with a reason that is too long (Error Flow)
When I attempt to report the user
And I fill out the report form
And the message is too long
Then I should see an error message indicating that message is too long


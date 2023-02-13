Feature: Allow users to report other users
As a student, I want to be able to report other users if their behaviour is inapproproate

Background:
Given the user is logged in to the system

Scenario: Successfully Report a User (Normal Flow)
When I navigate to the profile of the user I want to report
And I click the "Report User" button
And I fill out the report form
And I click the "Submit Report" button
Then I should see a confirmation message that my report has been successfully submitted

Scenario: Report a banned user (Alternate Flow)
When I navigate to the profile of the user I want to report
And I click the "Report User" button
And the user is already banned
Then I should see a notification that the user is already banned

Scenario: Report a user with a reason that is too long (Error Flow)
When I navigate to the profile of the user I want to report
And I click the "Report User" button
And I fill out the report form
And the message is too long
Then I should see an error message indicating that message is too long


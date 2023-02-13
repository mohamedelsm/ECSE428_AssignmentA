Feature: Update Profile Information
As a user, I want to be able to update my account information

Background:
Given I am signed in to my account on the used textbook exchange service
When I attempt to update my information

Scenario: Successfully Update Profile Information (Normal Flow)
And I enter valid fields
Then I should see a success message indicating that my profile information has been updated
And my updates should be displayed on my profile

Scenario: Attempt to Update Profile with Invalid Information (Error Flow)
And I enter invalid information for any of the fields
Then I should see error messages for the invalid fields
And my profile information should not be updated

Scenario: Attempt to Update Profile with Already Taken Username (Error Flow)
And I enter a username that is already taken by another user
Then I should see an error message indicating that the username is already taken
And my profile information should not be updated
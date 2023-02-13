Feature: Update Profile Information
As a user of the used textbook exchange service, I want to be able to update my account information

Background:
Given I am signed in to my account on the used textbook exchange service

Scenario: Successfully Update Profile Information (Normal Flow)
Given I navigate to the "Edit Profile" page
When I update my information
And I click the "Save Changes" button
Then I should see a success message indicating that my profile information has been updated
And my updats should be displayed on my profile

Scenario: Attempt to Update Profile with Invalid Information (Error Flow)
Given I navigate to the "Edit Profile" page
When I enter invalid information for any of the fields
And I click the "Save Changes" button
Then I should see error messages for the invalid fields
And my profile information should not be updated

Scenario: Attempt to Update Profile with Already Taken Username (Error Flow)
Given I navigate to the "Edit Profile" page
When I enter a username that is already taken by another user
And I click the "Save Changes" button
Then I should see an error message indicating that the username is already taken
And my profile information should not be updated
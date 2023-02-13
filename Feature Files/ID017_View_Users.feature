Feature: Admin User Management
As an admin, I want to be able to view a list of all users.

Background:
Given the user is logged in as an admin
And there is atleast one user registered in the system

Scenario: View list of all users (Normal Flow)
When the admin requests to view all users
Then they should see a list of all registered users

Scenario: Ban a user (Alternate Flow)
When the admin selects a user from the list
And attempts to ban the user
Then the selected user should be banned and their account should be disabled for a week

Scenario: View user details (Alternate Flow)
When the admin selects a user from the list
And clicks on a user's username
Then they should be taken to the user's profile page
And they should be able to view the user's details, including their name, email address and their listings.

Feature: View All User Listings
As a student seller, I want to be able to view all of my listings in one place.

Background:
Given the user is signed in

Scenario: View all listings (Normal Flow)
Given the user has created at least one textbook listing
When the user navigates to the "My Listings" page
Then they should see a list of all their textbook listings

Scenario: Filter Listings (Alternate Flow)
When the user navigates to the "My Listings" page
And they select the filter options (e.g. name, author, price, condition)
Then they should only see the textbook listings that match the selected filters

Scenario: No Listings (Alternate Flow)
Given the user has not created any textbook listings
When the user navigates to the "My Listings" page
Then they should see a message indicating that they have no listings

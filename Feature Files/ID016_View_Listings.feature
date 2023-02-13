Feature: View All User Listings
As a student seller, I want to be able to view all of my listings in one place.

Background:
Given the user is signed in

Scenario: View all listings (Normal Flow)
And the user has created at least one textbook listing
Then they should see a list of all their textbook listings on their listings page

Scenario: Filter Listings (Alternate Flow)
And the user has created atleast one textbook listing
And they select a filter option (e.g. name, author, price, condition)
Then they should only see the textbook listings that match the selected filters on their listing page

Scenario: No Listings (Alternate Flow)
And the user has not created any textbook listings
Then they should see a message indicating that they have no listings when they visit their listing page

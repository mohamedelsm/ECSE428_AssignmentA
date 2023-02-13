Feature: Search Textbook Listings
As a student, I want to be able to search for textbook listings by name, author, price, and condition.

Background:
Given I am signed in to my account on the used textbook exchange service

Scenario: Search by Name (Normal Flow)
When I enter the name of a textbook into the search bar
And I press the "Search" button
Then the list of textbook listings should be filtered to show only the listings that match the entered name

Scenario: Filter by Author
When I enter an author name into the author filter
Then the list of textbook listings should be filtered to show only the listings by that author

Scenario: Filter by Price
When I select a price range in the price filter
Then the list of textbook listings should be filtered to show only the listings that are within the selected price range

Scenario: Filter by Condition
When I select a condition from the condition filter
Then the list of textbook listings should be filtered to show only the listings that match the selected condition

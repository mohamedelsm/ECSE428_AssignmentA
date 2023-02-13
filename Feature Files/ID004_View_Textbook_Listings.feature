Feature: View Textbook Listings
As a student, I want to be able to view the available textbook listings on the used textbook exchange service.

Background:
Given I am signed in to my account on the used textbook exchange service

Scenario: View All Textbook Listings (Normal Flow)
When I visit the homepage
Then I should see a list of all available textbook listings
And I should be able to see the title, author, condition and price of each listing

Scenario: View Textbook Listing Details (Alternate Flow)
When I click on a textbook listing
Then I should be taken to a page that displays the details of the selected textbook listing
And I should be able to see the title, author, condition and price of the textbook
And I should be able to see sellers general information

Scenario: Sort Textbook Listings (Alternate Flow)
When I select a sort option from the dropdown menu (e.g. "Price: Low to High", "Price: High to Low", "Alphabetical order")
Then the listings should be sorted according to the selected option


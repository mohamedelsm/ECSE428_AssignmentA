Feature: View Purchase/Trade Requests for a Listing
As a student seller, I want to be able to view purchase and trade requests for my textbook listings.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing that has received purchase and/or trade requests

Scenario: View Received Purchase Requests (Normal Flow)
When I navigate to my list of received requests for my textbook listing
Then I should see a list of received purchase requests
And each request should indicate the requested price
And I should have the option to Accept or Decline each request

Scenario: View Received Trade Requests (Normal Flow)
When I navigate to my list of received requests for my textbook listings
Then I should see a list of received trade requests
And each request should indicate the listing of the item to trade
And I should have the option to Accept or Decline each request

Scenario: Filter Requests by Type (Alternate Flow)
When I navigate to my list of received requests for my textbook listings
And I select either "Purchase Requests" or "Trade Requests" from a filter menu
Then I should only see requests of the selected type
And the list should be updated to only show the selected type of requests

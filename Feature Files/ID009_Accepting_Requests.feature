Feature: Accept Purchase/Trade Requests for a Listing
As a student seller, I want to be able to accept purchase or trade requests for my textbook listings.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing that has received purchase and/or trade requests
And I am viewing the list of received purchase and trade requests

Scenario: Accept Purchase Request (Normal Flow)
When I attempt to accept a purchase request
Then the request should be marked as accepted
And a confirmation message should be displayed indicating that the request was accepted
And the requester should be notified that their request was accepted

Scenario: Accept Trade Request (Alternate Flow)
When I attempt to accept a trade request
Then the request should be marked as accepted
And a confirmation message should be displayed indicating that the request was accepted
And the requester should be notified that their request was accepted

Scenario: Attempt to accept a request that has already been declined
When I attempt to accept a request that has already been declined
Then I should not have the option to accept the request

Scenario: Decline request from a Banned User (Alternate Flow)
When I attempt to accept a request
And the requester has been banned
Then I should not be able to accept the request
And a message should be displayed indicating that the request was from a banned user

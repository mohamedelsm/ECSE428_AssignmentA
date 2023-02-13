Feature: Decline Purchase/Trade Requests for a Listing
As a student seller, I want to be able to decline purchase and trade requests for my textbook listings.

Background:
Given I am signed in to my account
And I have received purchase and trade requests for my listing
When I navigate to my list of received requests for my textbook listing

Scenario: Decline a Purchase Request (Normal Flow)
And I select a purchase request from the list
And I choose the option to decline the request
Then I should receive a confirmation that the request has been declined
And the declined request should no longer be visible in my list of received requests
And the requester should be notified that their request was declined

Scenario: Decline a Trade Request (Normal Flow)
And I select a trade request from the list
And I choose the option to decline the request
Then I should receive a confirmation that the request has been declined
And the declined request should no longer be visible in my list of received requests
And the requester should be notified that their request was declined

Scenario: Attempt to Decline a Request that has already been accepted (Alternate Flow)
And I select a request that I have already accepted
Then I should not have the option to decline the request

Feature: Request to Trade for a Listing
As a student buyer, I want to be able to request to trade for a textbook listing.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing I would like to trade
And I am viewing a list of textbook listings
When I request a trade for a listing

Scenario: Request to Trade (Normal Flow)
Then a request to trade my textbook listing for the selected textbook listing should be sent to the seller
And a confirmation message should be displayed indicating that the request was successful

Scenario: Banned user (Alternate Flow)
And my account is temporarily banned
Then an error message should be displayed indicating that I am unable to request to trade until a certain date

Scenario: Already Requested (Alternate flow)
And I have already requested a trade for this listing
Then an error message should be displayed indicating that I have already requested to trade for the selected listing

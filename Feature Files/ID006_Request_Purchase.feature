Feature: Request to Purchase a Listing
As a student buyer, I want to be able to request to purchase a textbook listing.

Background:
Given I am signed in to my account on the used textbook exchange service
And I am viewing a list of textbook listings

Scenario: Request to Purchase (Normal Flow)
When I select a textbook listing I would like to purchase
And I click the "Request to Purchase" button
Then a request to purchase the selected textbook listing should be sent to the seller
And a confirmation message should be displayed indicating that the request was sent successfully

Scenario: User is banned (Alternate flow)
When I select a textbook listing I would like to purchase
And I click the "Request to Purchase" button
And my account is temporarily banned
Then an error message should be displayed indicating that I am unable to request to purchase until a certain date

Scenario: Already Requested (Alternate flow)
When I select a textbook listing I have already requested to purchase
And I click the "Request to Purchase" button
Then an error message should be displayed indicating that I have already requested to purchase the selected textbook

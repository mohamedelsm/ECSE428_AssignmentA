Feature: Request to Purchase a Listing
As a student buyer, I want to be able to request to purchase a textbook listing.

Background:
Given I am signed in to my account on the used textbook exchange service
And I am viewing a list of textbook listings
When I attempt to purchase a listing

Scenario: Request to Purchase (Normal Flow)
Then a request to purchase the selected textbook listing should be sent to the seller
And a confirmation message should be displayed indicating that the request was sent successfully

Scenario: User is banned (Alternate flow)
And my account is temporarily banned
Then an error message should be displayed indicating that I am unable to request to purchase until a certain date

Scenario: Already Requested (Alternate flow)
And I have already requested to purchase this listing
Then an error message should be displayed indicating that I have already requested to purchase the selected textbook

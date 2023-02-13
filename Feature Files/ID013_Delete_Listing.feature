Feature: Delete an Existing Listing
As a student seller, I want to be able to delete my existing textbook listings.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing that I want to delete

Scenario: Delete a Textbook Listing (Normal Flow)
When I attempt to delete the listing
Then the listing should be deleted

Scenario: Cancel Delete of a Textbook Listing (Alternate Flow)
When I attempt to delete the listing
And cancel the attempt
Then the listing should not be deleted from the service

Scenario: Attempt to Delete an Accepted Listing (Error Flow)
And the listing has been accepted for purchase/trade
When I attempt to delete the listing
Then I should see a message indicating that the listing cannot be deleted as it has already been accepted

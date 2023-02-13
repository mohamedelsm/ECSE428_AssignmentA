Feature: Delete an Existing Listing
As a student seller, I want to be able to delete my existing textbook listings.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing that I want to delete

Scenario: Delete a Textbook Listing (Normal Flow)
When I navigate to the page for editing my textbook listing
And I select the option to delete the listing
And I click on "Delete"
Then the listing should be deleted

Scenario: Cancel Delete of a Textbook Listing (Alternate Flow)
When I navigate to the page for editing my textbook listing
And I select the option to delete the listing
And I click on "Cancel"
Then the listing should not be deleted from the service

Scenario: Attempt to Delete an Accepted Listing (Error Flow)
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing that has been accepted for purchase/trade
When I try to navigate to the page for editing my textbook listing
And I select the option to delete the listing
Then I should see a message indicating that the listing cannot be deleted as it has been accepted

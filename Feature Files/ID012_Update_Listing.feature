Feature: Update an Existing Listing
As a student seller, I want to be able to update my existing textbook listings on the used textbook exchange service.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have a textbook listing that I want to update

Scenario: Update Textbook Listing Information (Normal Flow)
When I make changes to the listing information, such as the title, author, price, or condition
And I select the option to save my changes
Then the changes should be saved and reflected on the listing

Scenario: Cancel Update to Textbook Listing (Alternate Flow
When I make attempt to make changes to the listing information
And I select the option to cancel my changes
Then the changes should not be saved
And the listing should remain unchanged

Scenario: Missing Required Information (Error Flow)
When I make attempt to make changes to the listing information
And I remove a required field
And I attempt to save
Then I should see an error message indicating that required information is missing

Scenario: Asking Price Out of Range (Error Flow)
When I make attempt to make changes to the listing information
And I enter a price that is invalid
And I attempt to save
Then I should see an error message indicating that the price is invalid
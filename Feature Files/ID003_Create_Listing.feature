Feature: Create a Textbook Listing
As a student seller, I want to be able to create a listing for a used textbook that I would like to sell or trade

Background:
Given I am signed in to my account on the used textbook exchange service

Scenario: Successful Textbook Listing Creation (Normal Flow)
When I click the "Create Listing" button
And I enter the title, author, price and condition of the textbook
And I click the "Create" button
Then I should be taken to the created listing page
And I should see a confirmation that my listing has been created
And other users should be able to see my listing

Scenario: Banned User (Alternate Flow)
Given I am banned from posting listings
When I click the "Create Listing" button
Then I should see a message indicating that I am banned from posting listings
And I should not be able to create a new textbook listing

Scenario: Missing Required Information (Error Flow)
When I click the "Create Listing" button
And I do not enter the a title, author, or condition of the textbook
And I click the "Create" button
Then I should see an error message indicating that the required information is missing

Scenario: Asking Price Out of Range (Error Flow)
When I click the "Create Listing" button
And I enter a price that is invalid
And I click the "Create" button
Then I should see an error message indicating that the price is invalid


Feature: Direct deposit setup and update for seller
As a student seller, I want to be able to set up and update my direct deposit information so that I can receive payment for my textbook listings.

Background:
Given the user is logged in to the system
When the user attempts to enter their banking information

Scenario: Successful setup of direct deposit information (Normal Flow)
Then the seller's direct deposit information is saved successfully
And the user should receive a confirmation message for the successful set up

Scenario: Invalid bank information during direct deposit setup (Error Flow)
And the information is invalid
Then the user should receive an error message indicating the invalid information

Scenario: Update of existing direct deposit information (Alternate Flow)
And the seller updates their existing direct deposit information
Then the seller's direct deposit information is updated
And the user should receive a confirmation message for the successful update
And the old information is deleted
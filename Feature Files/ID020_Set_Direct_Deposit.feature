Feature: Direct deposit setup and update for seller
As a seller on a textbook exchange platform, I want to be able to set up and update my direct deposit information so that I can receive payment for my textbook listings.

Background:
Given the user is logged in to the system

Scenario: Successful setup of direct deposit information
When the seller navigates to the "Payment Settings" page
And the seller enters their bank account information
And clicks "Save"
Then the seller's direct deposit information is saved successfully
And the user should receive a confirmation message for the successful set up

Scenario: Invalid bank information during direct deposit setup
When the seller navigates to the "Payment Settings" page
And the seller enters invalid bank information
And clicks "Save"
Then the user should receive an error message indicating the invalid information

Scenario: Update of existing direct deposit information
When the seller navigates to the "Payment Settings" page
And the seller updates their existing direct deposit information
And clicks "Save"
Then the seller's direct deposit information is updated
And the user should receive a confirmation message for the successful update
Feature: Payment system for textbook exchange service

As a student buyer, I would like to be able to pay with my credit cardthrough the textbook exchange serve

Background:
Given the user is logged in to their account
And the user has requested to purchase a textbook listing

Scenario: User enters a valid credit card information (Normal Flow)
When the user enters the credit card information
And the user attempts to pay
Then the payment should be processed successfully
And the user should receive a confirmation message for the successful payment

Scenario: User enters an invalid credit card information (Error Flow)
When the user enters an invalid credit card information
And the user attempts to pay
Then the payment should not be processed
And the user should receive an error message indicating the invalid credit card fields

Scenario: User's credit card limit is insufficient (Error Flow)
When the user enters the credit card information
And the credit card has insufficient credit limit
Then the payment should not be processed
And the user should receive an error message indicating the insufficient credit card limit

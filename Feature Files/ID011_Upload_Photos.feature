Feature: Upload Pictures to a Textbook Listing
As a student seller, I want to be able to upload pictures of my textbooks to my textbook listings on the used textbook exchange service.

Background:
Given I am signed in to my account on the used textbook exchange service
And I have created a textbook listing
And I select the option to upload pictures

Scenario: Upload Pictures to a Textbook Listing (Normal Flow)
And I choose the pictures I want to upload
Then I should receive a confirmation that the photos were uploaded successfully
And the pictures should be visible in the textbook listing

Scenario: Attempt to Upload an Invalid File Type (Error Flow)
And I choose an invalid file
Then I should receive an error message indicating that only picture file types are allowed

Scenario: Upload Too Many Pictures (Error Flow)
And I choose more pictures than the maximum allowed
Then I should receive an error message indicating the maximum number of pictures allowed
And no pictures should be uploaded to the listing
And I should be prompted to upload pictures again
Feature: Messageing Other Users
As a student, I would like to be able to send messages to other users to inquire about their listings.

Background:
Given I am signed in to my account on the used textbook exchange service

Scenario: Successfully Send Message to Other User (Normal Flow)
Given I navigate to the "Messages" page
And I enter a recipient username
And I enter a subject and message
And I click the "Send" button
Then I should see a success message indicating that my message has been sent
And the recipient should receive the message in their inbox

Scenario: View a message from another user (Alternate Flow)
When the user navigates to the "Messages" section of the website
Then the user should see a list of messages from other users
And the user should be able to click on a message to view it

Scenario: Attempt to Send Message to Non-Existent User (Error Flow)
Given I navigate to the "Messages" page
When I enter a recipient Username
And the recipient could not be found
Then I should see an error message indicating that the recipient could not be found

Scenario: Sending a Message That is Too Long (Error Flow)
Given I navigate to the "Messages" page
And I enter a valid recipient username
But the message is too long
Then I should see an error message indicating that the message was too long



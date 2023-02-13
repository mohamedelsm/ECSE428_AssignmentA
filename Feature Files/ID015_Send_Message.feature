Feature: Messageing Other Users
As a student, I would like to be able to send messages to other users to inquire about their listings.

Background:
Given I am signed in to my account on the used textbook exchange service

Scenario: Successfully Send Message to Other User (Normal Flow)
When I attempt to send a message to a valid user
Then I should see a success message indicating that my message has been sent
And the recipient should receive the message in their inbox

Scenario: View a message from another user (Alternate Flow)
When I receive messages from other user
Then I should see a list of messages from other users on my page
And I should be able to click on a message to view it

Scenario: Attempt to Send Message to Non-Existent User (Error Flow)
When I attempt to send a message to a non-existent user
Then I should see an error message indicating that the recipient could not be found

Scenario: Sending a Message That is Too Long (Error Flow)
When I attempt to send a message to a valid user
And the message I attempt to send is too long
Then I should see an error message indicating that the message was too long



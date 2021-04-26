Feature: AddFeature
  Test alert features


Scenario: Test alert message feature of the app
Given I test the initial state of the app
And I click the plus button
And I click the alert button
Then I see if the message is "Welcome to ExecuteAutomation 1"
And I click the close button
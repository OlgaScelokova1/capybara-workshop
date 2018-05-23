Feature: Demo Feature

    Scenario: Enter SignUp info
          Given I am on Appimation home page
          When I open SignUp page
          And I enter "automation@gmail.com", "Parole123", "Automation" in SignUp form
          Then I close SignUp view

    Scenario: Can't login with invalid data
          Given I am on Appimation home page
          When I open login page
          And I enter invalid "email_invalid@gmail.com" and "password_invalid" in Login form
          And I try to login
          Then error message is visible

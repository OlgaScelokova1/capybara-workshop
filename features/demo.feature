Feature: Demo Feature

    Scenario: Enter SignUp info
          Given I am on Appimation home page
          When I open SignUp page
          And I see that SignUp page is visible
          And I enter all required information
          And I close SignUp view
          Then SignUp view is not visible

    Scenario: Can't login with invalid data
          Given I am on Appimation home page
          When I open login page
          And login page is visible
          And I enter invalid "email_invalid" and "password_invalid"
          And I try to login
          Then login page is visible

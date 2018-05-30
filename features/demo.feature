Feature: Demo Feature

    Scenario: Enter SignUp info
          Given I am on Appimation home page
          When I open SignUp page
          And I fill in SignUp form with all required information
          Then I close SignUp view

    Scenario: Can't login with invalid data
          Given I am on Appimation home page
          When I open login page
          And I enter invalid login data and try to login
          Then error message is visible

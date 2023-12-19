@regression
Feature: orangehrm login page
  As a user, I would like to login successfully

  @author_vijay @smoke @sanity
  Scenario: Verify User Should Login SuccessFully
    Given     I am on home page
    When      Enter username
    Then      Enter password
    And       Click on Login Button
    And       Verify "WelCome" Message


  Scenario: Verify That The Logo Display On HomePage
    Given     I am on home page
    When      Login To The application
    Then      Verify Logo is Displayed


  Scenario: Verify User Should LogOut SuccessFully
    Given     I am on home page
    When      Login To The application
    Then      Click on User Profile logo
    And       Mouse hover on "Logout" and click
    And       Verify the text "Login Panel" is displayed


  Scenario Outline: Verify Error Message With InvalidCredentials
    Given             I am on Homepage
    When              Enter username "<username>"
    Then              Enter password "<password>"
    And               Click on Login Button
    And               Verify Error message "<errorMessage>"
    Examples: Test Data
      | username          | password | errorMessage        |
      |                   |          | Required            |
      | test123@gmail.com |          | Required            |
      |                   | test123  | Required            |
      | test123@gmail.com | test123  | Invalid credentials |
@FID10-289
Feature: Login to Fidexio

  US: as a user should be able to login with valid credentials

  Background:
    Given user is on the fidexio login  page

  @FID10-275
  Scenario: Pos manager is on login page
  AC1: user can login with valid credentials (posmanager)
    Given user is on the fidexio login  page
    When user(pos) enters "posmanager34@info.com" and "posmanager" as credentials
    And user clicks to login button
    Then user(pos) is on the dashboard

  @FID10-277
  Scenario: Sales manager is on login page
  AC1: user can login with valid credentials (salesmanager)
    Given user is on the fidexio login  page
    When user(sales) enters "salesmanager56@info.com" and "salesmanager" as credentials
    And user clicks to login button
    Then user(sales) is on the dashboard

  @FID10-279
  Scenario:
  AC2: user should see the "Wrong/Invalid password" message after providing invalids credentials
    Given user is on the fidexio login  page
    When user enters "bala@info.com" as invalid username and "abcde" as invalid password
    And user clicks to login button
    Then user should see the "Wrong login/password" message on the login page after providing invalid credentials


  @FID10-281
  Scenario Outline:
  "Please fill out this field" message should be displayed if the username or password field is empty
    Given user is on the fidexio login  page
    When user enters only an "<email>" or "<password>"
    Then  user should see warning message to fill empty fields when trying to log in
    Examples:
      | email                   | password   |
      | salesmanager15@info.com |            |
      |                         | posmanager |
      |                         |            |
  @FID10-283
  Scenario:
  AC4:User land on the ‘reset password’ page after clicking on the "Reset password" link
    Given user is on the fidexio login  page
    When user clicks on "Reset password" link to reset password.
    Then user should be on the reset password page.
  @FID10-285
  Scenario:
  AC5:User should see the password in bullet signs by default
    Given user is on the fidexio login  page
    When user enters "salesmanager" as password
    Then user should see the password in bullet signs by default

  @FID10-286
  Scenario:
  AC6: Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
    Given user is on the fidexio login  page
    When  user enters "posmanager50@info.com" and "posmanager" as credentials to check the enter key
    And user should press the Enter key on the keyboard
    Then user should be logged in to the system



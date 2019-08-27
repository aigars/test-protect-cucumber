Feature: Protect

Scenario: Login
  Given the login screen
  When I enter username and password
  Then the login should be successfull
  
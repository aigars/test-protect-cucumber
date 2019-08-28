Feature: Protect

Scenario: Login
  Given app is started and at the login screen
  When I enter username and password
  Then the login should be successfull
  
  
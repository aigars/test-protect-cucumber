Feature: Protect

  @full_reset
  Scenario: Login
    Given app is started and at the login screen
    When I enter username and password
    Then the login should be successfull

  #Scenario: Add controller

  Scenario: Add camera/s
    Given app is started and at the camera screen
    When I add new camera
    Then the camera should be successfully added

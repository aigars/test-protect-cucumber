Feature: Protect

  @ios @android @full_reset
  Scenario: Login
    Given I am at the login screen
    When I enter username and password
    Then the login should be successfull

  Scenario: Add controller
    Given I am at the controllers screen
    When I add new controller
    Then The controller should be successfully added

  @ios
  Scenario: Add cameras
    Given I am at the cameras screen
    When I add new cameras
    Then the cameras should be successfully added

  Scenario: Remove cameras
    Given I am at the cameras screen
    And I have added cameras
    When I remove cameras
    Then the cameras should be successfully removed

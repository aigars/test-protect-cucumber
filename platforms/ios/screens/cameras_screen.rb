class CamerasScreen
  WHATS_NEW_MESSAGE = { name: "What's new?" }
  OK_BTN = { name: "OK" }
  ADD_CAMERAS_BTN = { name: "Add Cameras" }


  def get_whats_new_message
    $driver.find_elements(WHATS_NEW_MESSAGE)[0]
  end

  def get_add_cameras_btn
    $driver.find_elements(ADD_CAMERAS_BTN)[0]
  end

  def get_camera(name)
    $driver.find_elements(:xpath, '//XCUIElementTypeStaticText[@name="' + name + '"]/../../../..')[0]
  end
  
  def get_cameras
    $driver.find_elements(:xpath, '//XCUIElementTypeImage[@name="camera-gradient"]/../../..')
  end

  def click_whats_new_ok_btn
    $driver.find_element(OK_BTN).click
  end

  def click_add_cameras_btn
    get_add_cameras_btn.click
  end

  def invoke_add_cameras_btn
    Appium::TouchAction.new($driver).press(x:100, y:100).wait(1000).move_to(x:100, y:400).wait(1000).release.perform
  end

  def click_camera(name)
    get_camera(name).click
  end
end

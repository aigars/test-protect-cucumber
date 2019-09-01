class CamerasScreen
  WHATS_NEW_MESSAGE = { uiautomator: 'UiSelector().text("What’s new")' }
  OK_BTN = { uiautomator: 'UiSelector().text("OK")' }
  ADD_CAMERAS_BTN = { uiautomator: 'UiSelector().text("Add Cameras")' }

  def get_whats_new_message
    $driver.find_elements(WHATS_NEW_MESSAGE)[0]
  end

  def get_add_cameras_btn
    $driver.find_elements(ADD_CAMERAS_BTN)[0]
  end

  def click_whats_new_ok_btn
    $driver.find_element(OK_BTN).click
  end
end

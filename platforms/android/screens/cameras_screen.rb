class CamerasScreen
  WHATS_NEW_MESSAGE = {uiautomator: 'UiSelector().text("What’s new")'}
  OK_BTN = {uiautomator: 'UiSelector().text("OK")'}
  ADD_CAMERAS_BTN = {uiautomator: 'UiSelector().text("Add Cameras")'}

  def get_whats_new_message
    begin
      $driver.find_element(WHATS_NEW_MESSAGE)
    rescue
      nil
    end
  end

  def get_add_cameras_btn
    begin
      $driver.find_element(ADD_CAMERAS_BTN)
    rescue
      nil
    end
  end

  def click_whats_new_ok_btn
    $driver.find_element(OK_BTN).click
  end
end

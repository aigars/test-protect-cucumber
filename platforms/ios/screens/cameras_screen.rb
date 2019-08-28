class CamerasScreen
  WHATS_NEW_MESSAGE = { name: "What's new?" }
  OK_BTN = { name: "OK" }
  ADD_CAMERAS_BTN = { name: "Add Cameras" }

  def get_whats_new_message
    begin
      $driver.find_element(WHATS_NEW_MESSAGE)
    rescue
      nil
    end
  end

  def get_add_cameras_btn
    $driver.find_element(ADD_CAMERAS_BTN)
  end

  def click_whats_new_ok_btn
    get_whats_new_message # just to make sure that we have the right message
    $driver.find_element(OK_BTN).click
  end
end

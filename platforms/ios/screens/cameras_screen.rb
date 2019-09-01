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
    $driver.find_elements(:xpath, '//*[@name="' + name + '"]/../..')[0]
  end

  def click_whats_new_ok_btn
    $driver.find_element(OK_BTN).click
  end

  def click_add_cameras_btn
    get_add_cameras_btn.click
  end

  def select_camera(name)
  end

  def rename_camera(name)
  end

  def click_camera(name)
    get_camera(name).click
  end
end

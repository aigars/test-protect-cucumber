class AddCamerasScreen
  CHECKMARK_BTN = { name: "checkmark cross unselected" }
  NAME_YOUR_CAMERA = { name: "Name your camera so it can be easily identified." }
  NEXT_BTN = { name: "Next" }
  SETUP_CAMERAS_BTN = { name: "Set up cameras" }

  def get_camera(mac)
    $driver.find_elements(:xpath, '//XCUIElementTypeStaticText[@name="' + mac + '"]/..')[0]
  end

  def select_camera(mac)
    checkmark_btn = get_camera(mac).find_element(CHECKMARK_BTN)
    checkmark_btn.click if !checkmark_btn.attribute("value")
  end

  def deselect_cameras
    $driver.find_elements(CHECKMARK_BTN).each do |checkmark_btn|
      checkmark_btn.click if checkmark_btn.attribute("value")
    end
  end

  def click_setup_cameras_btn
    $driver.find_element(SETUP_CAMERAS_BTN).click
  end
  
  def rename_camera(name)
  end

  def click_next_btn
    $driver.find_element(NEXT_BTN).click
  end
end

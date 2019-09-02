class Cameras
  def initialize
    @cameras_screen = CamerasScreen.new
    @add_cameras_screen = AddCamerasScreen.new
  end

  def at_the_cameras_screen
    # TODO: create helper function from this
    while $driver.find_elements(:xpath, "//XCUIElementTypeWindow").size < 4
      # wait for update notification to appear
      puts $driver.find_elements(:xpath, "//XCUIElementTypeWindow").size
      sleep 1
    end
    while $driver.find_elements(:xpath, "//XCUIElementTypeWindow").size > 3
      # wait for update notification to disappear
      puts $driver.find_elements(:xpath, "//XCUIElementTypeWindow").size
      sleep 1
    end
    if @cameras_screen.get_whats_new_message
      @cameras_screen.click_whats_new_ok_btn
    end
    @cameras_screen.get_add_cameras_btn
  end

  def add_new_cameras(cameras)
    cameras.each do |camera|
      if @cameras_screen.get_cameras.count > 0
        @cameras_screen.invoke_add_cameras_btn
        @cameras_screen.click_add_cameras_btn
      else
        sleep 1 #TODO: investigate
        @cameras_screen.click_add_cameras_btn
      end
      @add_cameras_screen.deselect_cameras
      @add_cameras_screen.select_camera(camera["mac"])
      @add_cameras_screen.click_setup_cameras_btn
      @add_cameras_screen.click_next_btn
    end
  end

  def cameras_should_be_successfully_added(cameras)
    cameras.each do |camera|
      #@cameras_screen.get_camera(camera["name"])
    end
  end
end

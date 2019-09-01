class Cameras
  def initialize
    @cameras_screen = CamerasScreen.new
  end

  def at_the_cameras_screen
    @cameras_screen.click_whats_new_ok_btn if @cameras_screen.get_whats_new_message
    @cameras_screen.get_add_cameras_btn
  end

  def open_camera(name)
    @cameras_screen.get_camera(name).click
  end
end

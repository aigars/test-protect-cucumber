class Login
  def initialize
    @login_screen = LoginScreen.new
    @cameras_screen = CamerasScreen.new
  end

  def at_the_login_screen
    @login_screen.click_privacy_notice_continue_btn if @login_screen.get_privacy_notice
    @login_screen.get_login_screen
  end

  def enter_username_and_password(username, password)
    @login_screen.enter_username(username)
    @login_screen.enter_password(password)
    @login_screen.click_signin_btn
  end

  def login_should_be_successfull
    @cameras_screen.click_whats_new_ok_btn if @cameras_screen.get_whats_new_message
    @cameras_screen.get_add_cameras_btn
  end
end

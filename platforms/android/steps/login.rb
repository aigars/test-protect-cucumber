class Login
  include RSpec::Matchers

  def at_the_login_screen
    @login_screen = LoginScreen.new
    @login_screen.click_privacy_notice_continue_btn #if @login_screen.get_privacy_notice
    expect(@login_screen.get_login_screen.displayed?).to be true
  end

  def enter_username_and_password
    @login_screen.enter_username($test_setup['username'])
    @login_screen.enter_password($test_setup['password'])
    @login_screen.click_signin_btn
  end

  def login_should_be_successfull
    @cameras_screen = CamerasScreen.new
    @cameras_screen.click_whats_new_ok_btn if @cameras_screen.get_whats_new_message
    expect(@cameras_screen.get_add_cameras_btn.enabled?).to be true
  end
end

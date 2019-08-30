module Login
  def login
    def at_the_login_screen
      @login_screen = LoginScreen.new
      @login_screen.get_login_screen_text
    end

    def enter_username_and_password
      @login_screen.enter_username("protect.rix1@gmail.com")
      @login_screen.enter_password("kfnsyKhr")
      @login_screen.click_signin_btn
    end

    def login_should_be_successfull
      @cameras_screen = CamerasScreen.new
      @cameras_screen.click_whats_new_ok_btn if @cameras_screen.get_whats_new_message
      @cameras_screen.get_add_cameras_btn
    end
  end
end

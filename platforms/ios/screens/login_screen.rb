class LoginScreen
  LOGIN_SCREEN_TEXT = {name: 'Sign in with your Ubiquiti SSO account'}
  USERNAME_FIELD = {name: 'Username'}
  PASSWORD_FIELD = {name: 'Password'}
  SIGNIN_BTN = {name: 'Sign in'}

  def get_login_screen
    $driver.find_elements(LOGIN_SCREEN_TEXT)[0]
  end

  def enter_username(username)
    $driver.find_element(USERNAME_FIELD).send_keys(username)
  end

  def enter_password(password)
    $driver.find_element(PASSWORD_FIELD).send_keys(password)
  end

  def click_signin_btn
    $driver.find_element(SIGNIN_BTN).click
  end
end

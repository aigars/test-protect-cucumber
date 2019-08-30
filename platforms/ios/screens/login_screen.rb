class LoginScreen
  NOTIFICATIONS_ALERT = {name: '“UniFi Protect” Would Like to Send You Notifications'}
  ALLOW_NOTIFICATIONS_BTN = {name: 'Allow'}
  LOGIN_SCREEN_TEXT = {name: 'Sign in with your Ubiquiti SSO account'}
  USERNAME_FIELD = {name: 'Username'}
  PASSWORD_FIELD = {name: 'Password'}
  SIGNIN_BTN = {name: 'Sign in'}

  def get_notifications_alert
    begin
      $driver.find_element(NOTIFICATIONS_ALERT)
    rescue
      nil
    end
  end

  def get_login_screen
    begin
      $driver.find_element(LOGIN_SCREEN_TEXT)
    rescue
      nil
    end
  end

  def click_allow_notifications_btn
    get_notifications_alert.find_element(ALLOW_NOTIFICATIONS_BTN).click
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

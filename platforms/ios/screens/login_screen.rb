class LoginScreen
  NOTIFICATIONS_ALERT = {name: '“UniFi Protect” Would Like to Send You Notifications'}
  ALLOW_NOTIFICATIONS_BTN = {name: 'Allow'}
  LOGIN_SCREEN_TEXT = {name: 'Sign in with your Ubiquiti SSO account'}
  USERNAME_FIELD = {name: 'Username'}
  PASSWORD_FIELD = {name: 'Password'}
  SIGNIN_BTN = {name: 'Sign in'}

  def get_notifications_alert
    $driver.find_elements(NOTIFICATIONS_ALERT)[0]
  end

  def get_login_screen
    $driver.find_elements(LOGIN_SCREEN_TEXT)[0]
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

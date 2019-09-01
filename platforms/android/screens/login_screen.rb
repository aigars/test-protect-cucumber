class LoginScreen
  PRIVACY_NOTICE = { uiautomator: 'UiSelector().text("Designed to protect your privacy")' }
  PRIVACY_NOTICE_CONTINUE_BTN = { uiautomator: 'UiSelector().text("Continue")' }
  LOGIN_SCREEN_TEXT = { uiautomator: 'UiSelector().text("Sign in with your Ubiquiti SSO account")' }
  USERNAME_FIELD = { uiautomator: 'UiSelector().text("Email or Username")' }
  PASSWORD_FIELD = { uiautomator: 'UiSelector().text("Password")' }
  SIGNIN_BTN = { uiautomator: 'UiSelector().text("Sign In")' }

  def get_privacy_notice
    $driver.find_elements(PRIVACY_NOTICE)[0]
  end

  def get_login_screen
    $driver.find_elements(LOGIN_SCREEN_TEXT)[0]
  end

  def click_privacy_notice_continue_btn
    $driver.find_element(PRIVACY_NOTICE_CONTINUE_BTN).click
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

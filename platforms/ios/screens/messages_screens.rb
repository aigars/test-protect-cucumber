class MessagesScreens
  WHATS_NEW_MESSAGE = { name: "What's new?" }
  OK_BTN = { name: "OK" }

  def get_whats_new_message
    $driver.find_elements(WHATS_NEW_MESSAGE)[0]
  end

  def click_ok_btn
    $driver.find_element(OK_BTN).click
  end
end

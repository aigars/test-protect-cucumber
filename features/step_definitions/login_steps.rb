Given("I am at the login screen") do
  expect(@login.at_the_login_screen).not_to be nil
end

When("I enter username and password") do
  @login.enter_username_and_password($setup["username"], $setup["password"])
end

Then("the login should be successfull") do
  expect(@login.login_should_be_successfull).not_to be nil
end

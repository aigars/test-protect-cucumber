Given("app is started and at the login screen") do
  @steps.login.at_the_login_screen
end

When("I enter username and password") do
  @steps.login.enter_username_and_password
end

Then("the login should be successfull") do
  @steps.login.login_should_be_successfull
end

Given("app is started and at the login screen") do
  @login = Login.new
  @login.at_the_login_screen
end

When("I enter username and password") do
  @login.enter_username_and_password
end

Then("the login should be successfull") do
  @login.login_should_be_successfull
end

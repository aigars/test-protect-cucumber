Given("I am at the cameras screen") do
  expect(@cameras.at_the_cameras_screen).not_to be nil
end

When("I add new cameras") do
  @cameras.add_new_cameras($setup["cameras"])
end

Then("the cameras should be successfully added") do
  expect(@cameras.cameras_should_be_successfully_added($setup["cameras"])).not_to be nil
end

Given("I have added cameras") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I remove cameras") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the cameras should be successfully removed") do
  pending # Write code here that turns the phrase above into concrete actions
end

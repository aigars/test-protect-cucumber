require "appium_lib"
require "rspec/expectations"
require "toml"

caps = TOML.load_file(ENV["DEVICE_CONFIG"])
platform = caps["caps"]["platformName"]

# load necessary platform
case platform
when "iOS"
  Dir["./platforms/ios/**/*.rb"].each { |file| require file }
when "Android"
  Dir["./platforms/android/**/*.rb"].each { |file| require file }
end

$setup = TOML.load_file(ENV["SETUP_CONFIG"])

Before("@full_reset") do
  caps["caps"]["noReset"] = false
  caps["caps"]["fullReset"] = true
end

Before do
  $driver = Appium::Driver.new(caps, true)
  $driver.start_driver
  $driver.manage.timeouts.implicit_wait = 15 # how long driver will wait for elements

  # initialize step classes
  @login = Login.new
  @cameras = Cameras.new
end

After("@full_reset") do
  caps["caps"]["noReset"] = true
  caps["caps"]["fullReset"] = false
end

After do
  $driver.driver_quit
end

require 'appium_lib'
require 'rspec'

caps = YAML.load_file(ENV["DEVICE_CONFIG"])
accounts = YAML.load_file("config/accounts.yml")
setups = YAML.load_file("config/setups.yml")
puts caps
puts accounts
puts setups

$driver = Appium::Driver.new(caps, true)

Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end

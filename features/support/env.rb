require 'appium_lib'
require 'rspec'

accounts = YAML.load_file("features/config/accounts.yml")

case ENV['DEVICE_NAME']
  when 'iphone_sim'
  caps = Appium.load_appium_txt file: File.expand_path("../../config/devices/iphone_sim/appium.txt", __FILE__), verbose: true
  when 'pixel_emu'
  caps = Appium.load_appium_txt file: File.expand_path("../../config/devices/pixel_emu/appium.txt", __FILE__), verbose: true
end

$driver = Appium::Driver.new(caps, true)

Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end

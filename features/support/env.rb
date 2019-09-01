require 'appium_lib'
require 'rspec/expectations'

caps = YAML.load_file(ENV['DEVICE_CONFIG'])
platform = caps[:caps][:platformName]

# load necesary step definition modules
case platform
when 'iOS'
  Dir["./platforms/ios/**/*.rb"].each {|file| require file}
when "Android"
  Dir["./platforms/android/**/*.rb"].each {|file| require file}
end

$test_setup = YAML.load_file(ENV['TEST_SETUP'])

Before('@full_reset') do
  caps[:caps][:fullReset] = true
end

Before do
  $driver = Appium::Driver.new(caps, true)
  $driver.start_driver
  $driver.manage.timeouts.implicit_wait = 15 # how long driver will wait for elements
end

After('@full_reset') do
  caps[:caps][:fullReset] = false
end

After do
  $driver.driver_quit
end

require 'require_all'
require 'appium_lib'
require 'rspec'
require_relative '../../platforms/ios/steps/steps_ios.rb'
require_relative '../../platforms/android/steps/steps_android.rb'

caps = YAML.load_file(ENV["DEVICE_CONFIG"])
platform = caps[:caps][:platformName]
accounts = YAML.load_file("config/accounts.yml")
setups = YAML.load_file("config/setups.yml")

$driver = Appium::Driver.new(caps, true)

Before do
  $driver.start_driver
  # wait for elements 10s
  $driver.manage.timeouts.implicit_wait = 10

  # load necesary step definition modules
  case platform
  when "iOS"
    @steps = StepsIOS.new
  when "Android"
    @steps = StepsAndroid.new
  end
  
  @accounts = accounts
end

After do
  $driver.driver_quit
end

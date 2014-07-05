require 'rubygems'
require "selenium/webdriver"


require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile["focusmanager.testmode"] = true
  Capybara::Selenium::Driver.new(app, browser: :firefox, profile: profile)
end

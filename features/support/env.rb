require 'rubygems'
require 'selenium/webdriver'

require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

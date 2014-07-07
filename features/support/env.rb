require 'capybara'
require 'capybara/cucumber'

require 'selenium/webdriver'

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://10.59.149.253:4444/wd/hub",
    :desired_capabilities => :firefox)
end

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.run_server = false
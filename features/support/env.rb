require 'capybara'
require 'capybara/cucumber'

require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://192.168.1.105:4444/wd/hub",
    :desired_capabilities => :chrome)
end

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.run_server = false
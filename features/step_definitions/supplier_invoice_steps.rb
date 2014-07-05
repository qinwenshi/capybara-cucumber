Given(/^I am directed to my launch pad$/) do
	visit 'https://wdciw01.wdf.sap.corp:7099/sap/bc/ui5_ui5/ui2/ushell/shells/abap/FioriLaunchpad.html?sap-client=200&sap-language=EN#'
  $stdin.gets()
  fill_in 'USERNAME_FIELD-inner', with: 'findemo'
	fill_in 'PASSWORD_FIELD-inner', with: 'findemo'
	click_on('LOGIN_LINK')
end

When(/^I cancel the input box if any$/) do
	wait = Selenium::WebDriver::Wait.new(:timeout => 30)
	  wait.until {
    begin
      page.driver.browser.switch_to.alert
      true
    rescue Selenium::WebDriver::Error::NoAlertPresentError
      false
    end
  }
  page.driver.browser.switch_to.alert.dismiss
end


When(/^I goto the Track supplier invoices$/) do
	first("a[href$='#VendorAccountingDocument-track']").click
end

Then(/^I can see a "(.*?)" invoice named "(.*?)" with Origional Amount (\d+) EUR$/) do |arg1, arg2, arg3|
  	until page.evaluate_script('$.active') == 0 do
  		expect(page).to have_content(arg1)  
  		expect(page).to have_content(arg2)  


  	end
end
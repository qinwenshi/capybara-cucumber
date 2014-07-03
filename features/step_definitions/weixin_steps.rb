Given /^I have logged on to the platform$/ do
	visit("https://mp.weixin.qq.com/")
	fill_in('account', :with => '---')
	fill_in('password', :with => '----')
	click_on('login_button')
end

When /^I go to material management$/ do
	find('#menu_manage .menu_title').click
	find('#menu_material a').click
end

Then /^I should be able to create material$/ do
	find('#appmsgList1').find('.create_access').click
	find('#appmsgList1').find('.create_access').first('a').click
	$stdin.gets	
end
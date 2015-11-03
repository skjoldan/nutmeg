require_relative "../../page_objects/page_objects.rb"

Given(/^"([^"]*)" is open$/) do |arg1|
  @driver.get arg1
end

When(/^I enter email adress "([^"]*)" and click "([^"]*)"$/) do |arg1, arg2|
  sign_in = SignIn.new(@driver)
  sign_in.email = arg1
  sign_in.button
end

Then(/^I am shown at lets get started page$/) do
   String bodyText = @driver.find_element(:tag_name, "body").text
  assert_match(/Let's get started/, bodyText)
end

When(/^I click on Account type "([^"]*)"$/) do |arg1|
  @driver.find_element(:xpath, "//*[contains(text(), 'General')]").click
end

When(/^I click on goal type "([^"]*)"$/) do |arg1|
  get_started = LetsGetStarted.new(@driver)
  get_started.pickJustInvest
end

When(/^I give the fund the name "([^"]*)"$/) do |arg1|
  get_started = LetsGetStarted.new(@driver)
  get_started.Name_field = arg1
end

When(/^I click the button "([^"]*)"$/) do |arg1|
  get_started = LetsGetStarted.new(@driver)
  get_started.next_button
end

Then(/^I am shown let build new fund page$/) do
  String bodyText = @driver.find_element(:tag_name, "body").text
  assert_match(/Let's build your new fund/, bodyText)
end


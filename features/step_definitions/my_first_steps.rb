require "selenium-webdriver"

Given /^I am on the Login Screen$/ do
  @selenium.get "http://transformadmin.dev/"
end

Given(/^I can see the username box$/) do
  username = @selenium.find_element(:id,'id_username')
  assert(username != nil,"Unable to find username box")
end

Given(/^I can see the password box$/) do
  password = @selenium.find_element(:id,'id_password')
  assert(password != nil,"Unable to find password box")
end

Given(/^I can see the login button$/) do
  password = @selenium.find_element(:css,'button')
  assert(password != nil,"Unable to find login button")
end
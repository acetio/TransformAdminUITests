require "selenium-webdriver"

Given /^I am on the Login Screen$/ do
  @selenium.get "#{@base_url}"
end

Given(/^I can see the login form$/) do
  username = @selenium.find_element(:id,'id_username')
  assert(username != nil,"Unable to find username box")

  password = @selenium.find_element(:id,'id_password')
  assert(password != nil,"Unable to find password box")

  password = @selenium.find_element(:css,'button')
  assert(password != nil,"Unable to find login button")
end

Given(/^I enter the username 'username'$/) do
  username = @selenium.find_element(:id,'id_username')
  username.clear
  username.send_keys("username")
end

Given(/^I enter the password 'password'$/) do
  password = @selenium.find_element(:id,'id_password')
  password.clear
  password.send_keys("password")
end

Given(/^I click the login button$/) do
  button = @selenium.find_element(:css,'button')
  button.click
end

Then(/^I should see the Projects Screen$/) do
  projects = @selenium.find_element(:xpath,"//h1[contains(.,'Project Admin')]")
  assert(projects != nil,"Unable to find Project Admin text")
end
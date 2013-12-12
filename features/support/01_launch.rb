require "selenium-webdriver"

pid = nil

Before do |scenario|
  @base_url = ENV['BASE_URL']
  @selenium = Selenium::WebDriver.for :firefox
  @wait = Selenium::WebDriver::Wait.new :timeout => 30
  @accept_next_alert = true
  @selenium.manage.timeouts.implicit_wait = 30
end

After do |scenario|
  @selenium.quit
end

at_exit do
  
end

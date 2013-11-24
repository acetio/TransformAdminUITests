require "selenium-webdriver"

pid = nil

Before do |scenario|
  pid = Process.fork
  if pid.nil? then
    # In child
    exec "java -jar /Applications/Selenium/selenium-server-standalone-2.37.0.jar"
  else
    # In parent
    Process.detach(pid)
  end
  sleep(10)
  @selenium = Selenium::WebDriver.for :firefox
  @wait = Selenium::WebDriver::Wait.new :timeout => 30
  @accept_next_alert = true
  @selenium.manage.timeouts.implicit_wait = 30
end

After do |scenario|
  @selenium.quit
  Process.kill 9, pid
end

at_exit do
  Process.kill 9, pid
end

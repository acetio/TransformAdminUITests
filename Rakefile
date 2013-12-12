desc "Run all automate selenium tests"
task :test do
	puts "Running Selenium Tests"
	pid = Process.fork
		if pid.nil? then
			# In child
			exec "java -jar /Applications/Selenium/selenium-server-standalone-2.37.0.jar"
		else
		# In parent
		Process.detach(pid)
	end
	sleep(10)
	sh 'BASE_URL="http://admin.transform.demo.gs" cucumber'
	Process.kill 9, pid
end
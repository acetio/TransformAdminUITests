TransformAdminUITests
=====================

Selenium test suite for transform admin HTML

[Installing](#Installation)  
[Running Tests](#Run)

###<a name="Installation"></a>Installation###  

1) Get Cucumber ruby gem  
``sudo gem install cucumber``  

2) Get Selenium ruby gem version 2.35 (we need to install this specific version as the current uses a different rubyzip to cucumber)  
``sudo gem install selenium-webdriver -v 2.35.1``  

3) Install Firefox  

4) Download Selenium RC and   
``http://selenium.googlecode.com/files/selenium-server-standalone-2.37.0.jar``  
And copy it to  
``/Applications/Selenium/``


###<a name="Run"></a>Run Tests###  
In the folder where you can find this readme file run   
``BASE_URL="http://transformadmin.dev/" cucumber``  
Where BASE_URL points to the site you would like to test



require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 5
end

Capybara.register_driver :selenium do |app|
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['dom.webdriver.enabled'] = false
    profile['useAutomationExtension'] = false
    
    options = Selenium::WebDriver::Firefox::Options.new
    options.profile = profile
    
    driver = Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
    
    driver.browser.manage.window.maximize
    
    driver
end
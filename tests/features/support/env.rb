require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rest-client'

  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
  end
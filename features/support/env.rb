require 'capybara/cucumber'
require 'capybara/rspec'
require 'webdrivers'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

    World(Helper)
    World(Pages)


    Capybara.default_driver = :selenium
    Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
        
 end

    Capybara.configure do |config|
    Capybara.app_host = 'http://automationpractice.com'
    Capybara.current_session.driver.browser.manage.window.resize_to(1250, 780)
    config.default_max_wait_time = 5
    

 end

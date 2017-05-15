require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_max_wait_time = 10

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium

World(Capybara)

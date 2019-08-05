require 'yaml'
require 'pry'
require 'capybara/cucumber'
require 'ffaker'
require 'colorize'



EL = YAML.load_file('data/elements.yml')


if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, switches: ['--incognito', '--disable-infobars'])
  end
else 
  Capybara.default_driver = :chrome_headless
  Capybara.register_driver :chrome_headless do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, switches: ['--incognito', '--headless', 'disable-gpu', 'window-size=1280x720', '--no-sandbox'])
  end
  end

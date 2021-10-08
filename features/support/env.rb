require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

BROWSER     = ENV['BROWSER']
ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

CAPS = Selenium::WebDriver::Remote::Capabilities.chrome(
  'chromeOptions' => {
    'args' => ['--window-size=1366,768',
               '--no-sandbox',
               '--incognito',
               '--no-cache']
  }
)

CAPS_HEADLESS = Selenium::WebDriver::Remote::Capabilities.chrome(
  'chromeOptions' => {
    'args' => ['--headless',
               '--no-sandbox',
               '--disable-gpu',
               '--disable-dev-shm-usage',
               '--window-size=800,600']
  }
)

def register_chrome(app)
  Capybara::Selenium::Driver.new(app,
                                 browser: :chrome,
                                 desired_capabilities: CAPS)
end

def register_chromeheadless(app)
  Capybara::Selenium::Driver.new(app,
                                 browser: :chrome,
                                 desired_capabilities: CAPS_HEADLESS)
end

Capybara.register_driver :selenium do |app|
  send("register_#{BROWSER}", app)
end

Capybara.configure do |config|
  Capybara.default_driver = :selenium
end

Capybara.default_max_wait_time = 10

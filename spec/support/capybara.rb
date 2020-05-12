require "capybara/rspec"
# require "webdrivers/geckodriver"
require "webdrivers/chromedriver"

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless, options: { args: ["disable-gpu", "no-sandbox", "disable-dev-shm-usage"] }
  end
end

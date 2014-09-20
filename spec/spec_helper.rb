ENV['SERVER'] = 'true'

if ENV['IN_BROWSER'] && RUBY_PLATFORM != 'opal'
  require 'capybara/rspec'
  require 'chromedriver2/helper'
  require 'capybara/poltergeist'

  require 'volt'
  require 'volt/server'

  app_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
  Capybara.app = Server.new(app_path).app

  Capybara.default_driver = :poltergeist
end


# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
if RUBY_PLATFORM != 'opal'
  RSpec.configure do |config|
    config.run_all_when_everything_filtered = true
    config.filter_run :focus

    config.order = 'random'
  end
end


require './app/init'
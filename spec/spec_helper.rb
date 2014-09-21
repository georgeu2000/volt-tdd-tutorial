if ENV['IN_BROWSER'] && RUBY_PLATFORM != 'opal'
  require 'capybara/rspec'
  require 'chromedriver2/helper'
  require 'capybara/poltergeist'

  require 'bundler/setup'
  require 'volt/server'

  require './app/init'

  Capybara.app = Server.new.app

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



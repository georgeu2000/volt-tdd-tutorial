source 'https://rubygems.org'

# gem 'volt', git:'https://github.com/georgeu2000/volt', branch:'wrong-mime-type'
gem 'volt', '0.7.19'


# The following gem's are optional for themeing

# Twitter bootstrap
gem 'volt-bootstrap'

# Simple theme for bootstrap, remove to theme yourself.
gem 'volt-bootstrap-jumbotron-theme'


# Server for MRI
platform :mri do
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end

gem 'volt-sockjs', require: false, platforms: :mri

group :development do
  gem 'capybara', '~> 2.2.0'
  gem 'rspec', '3.0.0.beta1'
  gem 'chromedriver2-helper', '~> 0.0.8'
  gem 'poltergeist', '~> 1.5.0'
  gem 'listen', '~> 2.7.0'
  gem 'launchy'
  gem 'guard', '2.0.1'
  gem 'guard-rspec', '~> 1.2.0'
end
source 'http://rubygems.org'

gem 'rails', '3.2.13'
# gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'



# Rails 3.2 - Asset Pipeline
gem 'json', '1.6.1'
gem 'haml', '3.1.4'
gem 'therubyracer', '0.9.8'

# gems in alphabetic order
gem 'exception_notification_rails3', '1.2.0', :require => 'exception_notifier'
gem 'formtastic', '1.2.4'
gem 'inherited_resources', '1.3.0'
# gem 'rake', '0.9.2'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'capistrano', '2.8.0'
  gem 'capybara', '1.1.1'
  gem 'factory_girl_rails', '1.7.0' # which depends on fg ~>2.6.0, which will use 2.6.5
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'haml-rails'
  gem 'quiet_assets'
  gem 'rspec-rails', '2.8.1'
  gem 'spork', "0.9.0.rc9"
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'yard'
end

group :production do
  gem 'pg', '0.11.0'
end

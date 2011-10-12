source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Rails 3.1 - Asset Pipeline
gem 'json', '1.6.1'
gem 'haml', '3.1.3'
gem 'sass-rails', '3.1.4'
gem 'coffee-script', '2.2.0'
gem 'uglifier', '1.0.3'
gem 'therubyracer', '0.9.8'

# gems in alphabetic order
gem 'exception_notification_rails3', '1.2.0', :require => 'exception_notifier'
gem 'formtastic', '1.2.4'
gem 'jquery-rails', '1.0.13'
gem 'inherited_resources', '1.3.0'
gem 'rake', '0.9.2'


# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'yard'
  gem 'rspec-rails', '2.6.1'
  gem 'capybara', '1.1.1'
  gem 'spork', "0.9.0.rc9"
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'factory_girl_rails'
  gem 'capistrano', '2.8.0'
end

group :production do
  gem 'pg', '0.11.0'
end

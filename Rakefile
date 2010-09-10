# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

ProjectZero::Application.load_tasks

if defined?(YARD)
  YARD::Rake::YardocTask.new do |t|
    t.files   = ['lib/**/*.rb', 'app/**/*.rb' ]
  end
end

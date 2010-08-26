set :application, "project_zero"

role :app, "192.168.17.32"
role :web, "192.168.17.32"
role :db,  "192.168.17.32", :primary => true
set :rails_env, 'production'

set :deploy_via, :remote_cache
set :git_enable_submodules, 1
set :scm, :git
set :default_run_options, { :pty => true }
set :repository, "git@cat.panter.ch:project_zero.git"
set :ssh_options, {:forward_agent => true}
set :deploy_to, "/home/rails/app"
set :user, "rails"
set :use_sudo, false

task :update_config_links, :roles => [:app] do
  run "ln -sf #{shared_path}/config/* #{release_path}/config/"
end
after "deploy:update_code", :update_config_links

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

## Rails project to kickstart development

Comes with:

 * Rails 3
 * jQuery
 * Haml
 * inherited_resources
 * exception_notifier
 * Rspec, Factory Girl, Capybara and Spork

## How to hit the ground running a pure rails app

<pre>
# define a rails application name and a folder name where you want to 
# checkout your project
RAILS_NAME=ProjectOne
FS_NAME=projectone

# checkout project zero into a new folder
git clone git@github.com:panter/project_zero.git $FS_NAME

cd $FS_NAME
script/init_rails $RAILS_NAME
</pre>

## How to initialize a refinery app

<pre>
# define a rails application name and a folder name where you want to
# checkout your project
RAILS_NAME=ProjectOne
FS_NAME=projectone

# checkout project zero into a new folder
git clone git@github.com:panter/project_zero.git $FS_NAME

cd $FS_NAME
script/init_refinery $RAILS_NAME
</pre>

## See the branches

There are branches of this project with other configurations.


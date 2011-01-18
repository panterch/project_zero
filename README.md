## Rails project to kickstart development

Comes capified and tested with:

 * Rails 3
 * Haml
 * Blueprint CSS
 * sqlite3
 * jquery
 * Shoulda
 * Factory Girl
 * Auth Logic
 * yardoc

## How to hit the ground running

PROJECT=<handle>
git clone git://github.com/panter/project_zero.git $PROJECT
cd $PROJECT
git remote rm origin    
git remote add origin gitosis@git.panter.ch:$PROJECT
git push origin master
bundle install
ln -s database.yml.sqlite3 config/database.yml


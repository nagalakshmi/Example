set :application, "testapp"
set :deploy_to, "/var/www/#{application}"

#set :scm, :subversion
set :scm, :git
set :application, "TestAPP"

set :repository, "git@github.com:nagalakshmi/testapp.git"

set :branch, "master"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "testapp.com"                          # Your HTTP server, Apache/etc
role :app, "testapp.com"                          # This may be the same as your `Web` server

#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts
#testmodifictaions
 If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
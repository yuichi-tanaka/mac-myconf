set :deploy_env, "staging"
set :user, "deploy_petp_s"

role :web, "10.5.6.214" # manage

set :repository,  "http://172.17.127.150/svn/repos/petpic/trunk/40_manager"
set :deploy_to, "/var/www/#{application}"

set :use_sudo_setup, true


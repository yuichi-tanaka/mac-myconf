set :deploy_env, "staging_dev"
set :user, "deploy_petp_s"

set :scm, :git
set :repository, "git@gitlab.sys.nbu.ca.local:petpic_web.git"
set :branch, 'develop'


role :web, "10.5.6.214" # manage
role :web, "10.5.6.215" # batch
role :web, "10.5.6.216" # ap01
role :web, "10.5.6.217" # ap02

set :deploy_to, "/var/www/#{application}_dev/branches"

set :use_sudo_setup, true


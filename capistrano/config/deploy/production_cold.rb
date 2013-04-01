set :deploy_env, "production"
set :user, "deploy_petp_p"

set :scm, :git
set :repository, "git@gitlab.sys.nbu.ca.local:petpic_web.git"
set :branch, 'master'

# コールドスタンバイの3台を対象 
role :web, "10.5.5.131" # ap04
role :web, "10.5.5.132" # ap05
#role :web, "10.5.5.133" # ap06
role :web, "10.5.5.116" # mq01
role :web, "10.5.5.117" # mq02

set :deploy_to, "/var/www/#{application}"

set :use_sudo_setup, true


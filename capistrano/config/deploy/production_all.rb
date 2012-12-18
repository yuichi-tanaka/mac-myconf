set :deploy_env, "production"
set :user, "deploy_petp_p"

set :scm, :git
set :repository, "git@gitlab.sys.nbu.ca.local:petpic_web.git"
set :branch, 'master'

# 全台を対象
role :web, "10.5.5.110" # manage
role :web, "10.5.5.111" # batch
role :web, "10.5.5.112" # ap01
role :web, "10.5.5.113" # ap02
role :web, "10.5.5.130" # ap03
role :web, "10.5.5.131" # ap04
role :web, "10.5.5.132" # ap05
#role :web, "10.5.5.133" # ap06
role :web, "10.5.5.116" # mq01
role :web, "10.5.5.117" # mq02

set :deploy_to, "/var/www/#{application}"

set :use_sudo_setup, true


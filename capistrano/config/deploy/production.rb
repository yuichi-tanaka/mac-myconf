set :deploy_env, "production"
set :user, "deploy_petp_p"

# 通常時の構成
role :web, "10.5.5.110" # manage
role :web, "10.5.5.111" # batch
role :web, "10.5.5.112" # ap01
role :web, "10.5.5.113" # ap02
role :web, "10.5.5.130" # ap03
role :web, "10.5.5.116" # mq01
role :web, "10.5.5.117" # mq02

# 最新のTagをデプロイ
set :repository_root,  "http://172.17.127.150/svn/repos/petpic/tags/server"
set :tag, %x[ svn list #{repository_root} | sort -V | tail -n 1 ].gsub(/(\r\n|\r|\n|\/)/, "").strip
set :repository, "#{repository_root}/#{tag}"

#set :repository,  "http://172.17.127.150/svn/repos/petpic/trunk/src/server"

set :deploy_to, "/var/www/#{application}"

set :use_sudo_setup, true


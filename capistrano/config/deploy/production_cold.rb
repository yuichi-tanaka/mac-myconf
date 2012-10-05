set :deploy_env, "production"
set :user, "deploy_petp_p"

# コールドスタンバイの3台を対象 
role :web, "10.5.5.131" # ap04
role :web, "10.5.5.132" # ap05
role :web, "10.5.5.133" # ap06

# 最新のTagをデプロイ
set :repository_root,  "http://172.17.127.150/svn/repos/petpic/tags/server"
set :tag, %x[ svn list #{repository_root} | sort -V | tail -n 1 ].gsub(/(\r\n|\r|\n|\/)/, "").strip
set :repository, "#{repository_root}/#{tag}"

#set :repository,  "http://172.17.127.150/svn/repos/petpic/trunk/src/server"

set :deploy_to, "/var/www/#{application}"

set :use_sudo_setup, true


set :application, "petpic"

set :deploy_via, :copy
set :copy_exclude, [".svn", "DS_Store"]
set :copy_strategy, :export
set :checkout, "export"

set :scm, :subversion
set :use_sudo, false

set :keep_releases, 10
set :use_sudo_setup, true

set :default_stage, "dev"

# "sudo: sorry, you must have a tty to run sudo" を防ぐ
default_run_options[:pty] = true

# index.phpへのパスを定義
set :init_files, %W(
  #{File.join('web', 'docroot', 'social', 'index.php')}
  #{File.join('web', 'docroot', 'web', 'index.php')}
  #{File.join('web', 'docroot', 'index.php')}
  #{File.join('manager', 'docroot', 'index.php')}
  #{File.join('batch', 'docroot', 'index.php')}
)

task :xxx do
  run "uname -a"
end

namespace :deploy do
  task :start do end
  task :restart do end
  task :stop  do end
  task :cold do end
  task :migrate do end
  task :migrations do end

  # http reload
  task :reload do
    sudo "/etc/init.d/httpd reload"
  end

  # svc(daemontools) restart
  desc "daemontools process restart for MQ server"
  task :service_reload do
    run "if [ -d /service ] ; then sudo /usr/local/bin/svc -t /service/*; fi"
  end

  desc "daemontools service deploy for MQ server"
  task :service_deploy do
    run "if [ -d /service ] ; then sudo /bin/cp -Rf #{current_release}/web/service/#{deploy_env}/* /service/; fi"
    run "if [ -d /service ] ; then sudo chmod +x /service/**/run /service/**/**/run; fi"
  end

  # TODO /var/log/petpic, /serviceも追加する
  #/var/www以下に作成できるように管理者権限でつくったあとに権限をゆるめる
  task :setup do
    dirs = [deploy_to, releases_path]
    dirs += shared_children.map { |d| File.join(shared_path, d) }
    
    commands = [
      "mkdir -p #{dirs.join(' ')}", 
      "chmod a+w #{deploy_to}", 
      "chmod a+w #{dirs.delete_if{|d| d == deploy_to }.join(' ')}"
    ]

    commands.each do |cmd|
      if use_sudo_setup
        sudo cmd
      else
        run cmd
      end
    end
  end
  
  desc "index.phpのENVIROMENTを編集する"
  task :setenv do
    init_files.each do |file|
      init_file_path = File.join(current_release, file)
      run "if [ -f #{init_file_path} ] ; then sed -i -e s\"/define('ENVIRONMENT', '.*')/define('ENVIRONMENT', '#{deploy_env}')/\" #{init_file_path}; fi"
      run "if [ -f #{init_file_path} ] ; then grep \"define('ENVIRONMENT'\" #{init_file_path}; fi"
    end
  end

  #logsディレクトリの所有者変更
  #task :chown_logs_dir do 
  #  logs_dir = File.join(current_release, "application", "logs")
  #  sudo "chown apache:apache #{logs_dir}"
  #  sudo "chmod a+w #{logs_dir}"
  #end

  desc <<-DESC
    内部タスク書き換え: symlink入れ替え時にディレクトリ削除をしていたので、ln -snfで強制上書きをするように変更
    DESC
  task :symlink, :except => { :no_release => true } do
    on_rollback do
      if previous_release
        run "ln -snf #{previous_release} #{current_path}; true"
      else
        logger.important "no previous release to rollback to, rollback of symlink skipped"
      end
    end
    
    run "ln -snf #{latest_release} #{current_path}"
  end

  namespace :rollback do
    desc <<-DESC
      内部タスク書き換え: symlink入れ替え時にディレクトリ削除をしていたので、ln -snfで強制上書きをするように変更
      DESC
    task :revision, :except => { :no_release => true } do
      if previous_release
        run "ln -snf #{previous_release} #{current_path}"
      else
        abort "could not rollback the code because there is no prior release"
      end
    end
  end
end

# hooks
# deploy後に環境毎の設定に書き換え
after "deploy:finalize_update", "deploy:setenv"

# 時々手動で実行するってのもアレなので毎回実行
after "deploy:finalize_update", "deploy:cleanup"

# /serviceに対して上書きでデプロイ
after "deploy:finalize_update", "deploy:service_deploy"
after "deploy:finalize_update", "deploy:service_reload"

# logsディレクトリの所有者をapache実行ユーザに
#after "deploy:finalize_update", "deploy:chown_logs_dir"

# deploy後に、httpd reloadを行う
after "deploy:update", "deploy:reload"

# rollback後に、httpd reloadを行う
after "deploy:rollback", "deploy:reload"


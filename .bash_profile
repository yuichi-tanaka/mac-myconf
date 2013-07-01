export PATH=/opt/local/bin:/opt/local/sbin/:$HOME/bin:$PATH
export MANPATH=/opt/local/man:$MANPATH

alias vim='/opt/local/bin/vim'
alias vi='/opt/local/bin/vim'

#三鷹
alias ap1='ssh tanaka_yuichi@10.32.206.27'
alias ap2='ssh tanaka_yuichi@10.32.206.43'
alias ap3='ssh tanaka_yuichi@10.32.206.13'
alias stat1='ssh tanaka_yuichi@10.32.207.10'
alias stat2='ssh tanaka_yuichi@10.32.206.236'
alias adm='ssh tanaka_yuichi@10.32.207.123'
alias bat1='ssh tanaka_yuichi@10.32.206.246'
alias bat2='ssh tanaka_yuichi@10.32.206.57'
alias bat3='ssh tanaka_yuichi@10.32.206.250'
alias bat4='ssh tanaka_yuichi@10.32.207.120'
alias cron1='ssh tanaka_yuichi@10.32.207.121'
alias dbbk='ssh tanaka_yuichi@10.32.206.165'
alias mha='ssh tanaka_yuichi@10.32.206.219'
alias dbm1='ssh tanaka_yuichi@10.32.207.11'
alias dbm2='ssh tanaka_yuichi@10.32.207.36'
alias dbs1='ssh tanaka_yuichi@10.32.206.41'
alias dbs2='ssh tanaka_yuichi@10.32.207.159'
alias dbs3='ssh tanaka_yuichi@10.32.206.209'
alias mem1='ssh tanaka_yuichi@10.32.206.144'
alias mem2='ssh tanaka_yuichi@10.32.206.54'
alias mq1='ssh tanaka_yuichi@10.32.206.140'
alias mq2='ssh tanaka_yuichi@10.32.206.191'
alias red1='ssh tanaka_yuichi@10.32.207.16'
alias red2='ssh tanaka_yuichi@10.32.207.158'
alias sorry='ssh petpic@10.32.198.143'
alias fluentd1='ssh tanaka_yuichi@10.32.207.30'
alias mitaka_ci='ssh tanaka_yuichi@10.34.85.85'
alias mitaka_ap1='ssh tanaka_yuichi@10.34.72.229'
alias mitaka_ap2='ssh tanaka_yuichi@10.34.72.39'
alias mitaka_ap3='ssh tanaka_yuichi@10.34.72.115'
alias mitaka_stat1='ssh tanaka_yuichi@10.34.72.79'
alias mitaka_stat2='ssh tanaka_yuichi@10.34.72.146'
alias mitaka_dbm1='ssh tanaka_yuichi@10.34.73.32'
alias mitaka_dbm2='ssh tanaka_yuichi@10.34.72.28'
alias mitaka_mha='ssh tanaka_yuichi@10.34.72.160'
alias mitaka_dbs1='ssh tanaka_yuichi@10.34.72.45'
alias mitaka_dbs2='ssh tanaka_yuichi@10.34.73.88'
alias mitaka_dbs3='ssh tanaka_yuichi@10.34.72.97'
alias mitaka_dbbk='ssh tanaka_yuichi@10.34.72.34'
alias mitaka_red1='ssh tanaka_yuichi@10.34.72.106'
alias mitaka_red2='ssh tanaka_yuichi@10.34.72.82'
alias mitaka_red3='ssh tanaka_yuichi@10.34.73.127'
alias mitaka_mem1='ssh tanaka_yuichi@10.34.72.195'
alias mitaka_mem2='ssh tanaka_yuichi@10.34.72.84'
alias mitaka_admin='ssh tanaka_yuichi@10.34.72.217'
alias mitaka_bat1='ssh tanaka_yuichi@10.34.72.176'
alias mitaka_bat2='ssh tanaka_yuichi@10.34.72.114'
alias mitaka_mq1='ssh tanaka_yuichi@10.34.72.32'
alias mitaka_mq2='ssh tanaka_yuichi@10.34.72.135'

alias mitaka_jmeter1='ssh tanaka_yuichi@10.34.72.182'
alias mitaka_jmeter2='ssh tanaka_yuichi@10.34.73.56'
alias mitaka_jmeter3='ssh tanaka_yuichi@10.34.72.52'
alias mitaka_fulentd1='ssh tanaka_yuichi@10.34.73.63'
alias mitaka_riak1='ssh tanaka_yuichi@10.34.72.60'
alias mitaka_riak2='ssh tanaka_yuichi@10.34.73.135'
alias mitaka_graph1='ssh tanaka_yuichi@10.34.73.33'

alias dev_mitaka_ap1='ssh tanaka_yuichi@10.34.72.148'
alias dev_mitaka_bat1='ssh tanaka_yuichi@10.34.73.113'
alias dev_mitaka_dbm1='ssh tanaka_yuichi@10.34.72.129'
alias dev_mitaka_dbs1='ssh tanaka_yuichi@10.34.72.198'
alias dev_mitaka_mem1='ssh tanaka_yuichi@10.34.72.250'
alias dev_mitaka_mq1='ssh tanaka_yuichi@10.34.72.189'
alias dev_mitaka_red1='ssh tanaka_yuichi@10.34.72.33'
alias dev_mitaka_stat1='ssh tanaka_yuichi@10.34.73.110'

#tmux起動
#tmux


#piggアイランド用nvm起動
source ~/.nvm/nvm.sh
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$NODE_PATH:$npm_dir
nvm use v0.8.19 > /dev/null


alias prv_dev='ssh tanaka_yuichi@10.200.48.208'

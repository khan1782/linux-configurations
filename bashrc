# kevin bash stuff

#easy access to bash profile
alias profile='subl ~/.bashrc'

#shorthand commands for applications
alias chrome='google-chrome-stable'
alias chrome!='google-chrome-stable & exit'

#apt commands
alias apt-get='sudo apt-get'
alias install='sudo apt-get install'
alias searchfor='sudo apt-cache search'

#shorthand commands
alias c='cd'
alias ..='cd ..'
alias ...='cd ../../../' 
alias ....='cd ../../../../'\
alias x='clear && ls'
alias c='clear'
alias l='ls'
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

#git commands
alias clone='git clone'
alias gs='git status'
alias gcb='git checkout -b'
alias ga='git add --all'
alias gc='git commit'
alias gac='git add --all && git commit -m'
alias gpo='git push origin'

#sinatra app commands
alias be='bundle exec'
alias dbdrop='bundle exec rake db:drop'
alias dbcreate='bundle exec rake db:create'
alias dbmigrate='bundle exec rake db:migrate'
alias dbseed='bundle exec rake db:seed'
alias dbreset='bundle exec rake db:drop && bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed'
alias console='clear && bundle exec rails console'
alias bes='bundle exec shotgun'
alias generatemigration='bundle exec rake generate:migration'
alias generatemodel='bundle exec rake generate:model'

#dir commands
alias temp='cd /home/kevin/temp/ && x'
alias restartpostgres='sudo /etc/init.d/postgresql restart' 
alias nodeserver='ssh root@174.138.62.21'
 
alias xclip="xclip -selection c"


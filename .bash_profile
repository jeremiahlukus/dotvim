
#  ALIAS
#
alias page="cd ~/jeremiahlukus.github.io"
alias ls="ls -GFh"
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias pg='ping google.com'
alias weather="curl -s wttr.in/Atlanta"
alias vim="/usr/local/Cellar/vim/8.0.0502/bin/vim"
#Heroku
alias hp="git push heroku master"
alias ho="heroku open"
alias hrake="heroku run rake db:migrate"

# CD 
alias boot="cd ~/webBootColt"
alias railss="cd ~/railsApps"
alias book="cd ~/railsApps/bookstore"
alias time="cd ~/railsApps/timeLog"

#rails app
alias migrate="rake db:migrate"
alias b='bin/rspec'
alias be='bundle exec'
alias bi="bundle install"
alias rs='bundle install && rails server -p 3000'


# Zeus 
alias zspec='zeus rspec spec/'
alias zstart='zeus start'
alias zs='zeus server'
alias zc='zeus console'

#github 
alias gundo="git reset --hard HEAD"
alias gco='git checkout'
alias gp='git push'
alias ga='git add .'
alias gc='git commit -m'

acp (){
    git add -A && git commit -m "$1" && git push
}


set completion-ignore-case On
set show-all-if-ambiguous On # this allows you to automatically show completion without double tab-ing configure my multi-line prompt

PS1='\[\033[0;36m\]\h \w\[\033[0;32m\]$()\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi



# Terminal Colors
export CLICOLOR=1
export TERM="xterm-256color"
alias pg='ping google.com'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



source ~/.profile

export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
#if command -v tmux>/dev/null; then
 # [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
#fi
#  ALIAS
#
set bell-style none

alias mac="open https://www.youtube.com/playlist?list=PL23ZvcdS3XPLNdRYB_QyomQsShx59tpc-"
alias loc="open http://localhost:3000"
alias page="cd ~/jeremiahlukus.github.io"
alias ls="ls -GFh"
alias ..="cd .."
alias ...="cd .. ; cd .."
alias pg="ping google.com"
alias weather="curl -s wttr.in/Atlanta"
alias vim="/usr/local/Cellar/vim/8.0.0666_1/bin/vim"
alias pop="rake sample:populate"
alias swp="find ./ -type f -name "\.*sw[klmnop]" -delete"
#Heroku
alias hp="git push heroku master"
alias ho="heroku open"
alias hrake="heroku run rake db:migrate"

# CD 
alias boot="cd ~/railsapps/webBootColt"
alias railss="cd ~/railsApps"
alias book="cd ~/railsApps/bookstore"
alias time="cd ~/railsApps/time-Log"
alias tutor="cd ~/railsapps/tutrz"
alias learnr="cd ~/railsapps/basicrails/reddit"
alias learn="cd ~/railsapps/basicrails"
#tutrz
alias hredo="heroku pg:reset && heroku pg:push tutrz_development HEROKU_POSTGRESQL_AMBER_URL --app tutrz"


#rails app
alias b="bin/rspec"
alias be="bundle exec"
alias bi="bundle install"
alias rs="bundle install && rails server -p 3000"
alias dbredo="rake db:drop && rake db:create && rake db:migrate && rake db:setup"
alias dbd="rake db:drop"
alias dbc="rake db:create"
alias dbm="rake db:migrate"
alias bedbm="bundle exec rake db:migrate"
# Zeus 
alias zspec="zeus rspec spec/"
alias zt="zeus test"
alias zstart="zeus start"
alias zs="zeus server"
alias zc="zeus console"

#github 
alias gundo="git reset --hard HEAD"
alias gco="git checkout"
alias gp="git push"
alias ga="git add ."
alias gc="git commit -m"
alias gs="git status"
alias gopen="git-browse-remote"

acp (){
    git add -A && git commit -m "$1" && git push
}


set completion-ignore-case On
set show-all-if-ambiguous On # this allows you to automatically show completion without double tab-ing configure my multi-line prompt

PS1="\[\033[0;36m\]\h \w\[\033[0;32m\]$()\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] "

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi



# Terminal Colors
export CLICOLOR=1
export TERM="xterm-256color"
alias pg="ping google.com"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Path to the bash it configuration
export BASH_IT="/Users/jeremiahparrack/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME="bobby"

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE="bash-it"

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING="git@git.domain.com"

# Don"t check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT="irssi"

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

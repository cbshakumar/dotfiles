export ZSH=/Users/shakumar/.oh-my-zsh
ZSH_THEME="gozilla"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#source ~/shellscripts/git-autocomplete.bash
#source ~/shellscripts/git-colorcode.sh

export PATH=$PATH:/usr/local/Cellar/macvim/7.4-73_1/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export ANDROID_HOME=/usr/local/opt/android-sdk
alias gs="git status"
alias bers="bundle exec rspec -c"
alias vim="mvim -v"
alias ctags=/usr/local/Cellar/ctags/5.8/bin/ctags
#launchctl limit maxfiles 4096
ulimit -n 4096

source $(brew --prefix nvm)/nvm.sh
nvm use 0.12.7

function refresh_ctags(){
  if [ -d ".git" ]; then
    echo "Attempting to write refresh ctags for the current directory."
    ctags --tag-relative=yes -R -f ./.git/tags .
    echo "Finished refreshing ctags for the current directory."
  else
    echo "Error: Could not refresh ctags."
    echo ".git directory does not exist. We need this in order to put tags in a safe spot."
  fi
}

function find(){
  grep -rnw . -e $1
}

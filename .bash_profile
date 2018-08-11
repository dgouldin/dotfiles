export ARCHFLAGS="-arch x86_64"
export GOPATH=/usr/local/gocode
export GOBIN=$GOPATH/bin
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/ruby/1.9.3-p194/bin:~/github/git-hooks:/usr/X11/bin:~/bin:$GOPATH/bin:$PATH:./node_modules/.bin

alias pycrm="find . -name '*.pyc' -delete"
alias dgouldin_tunnel='ssh -NR20020:127.0.0.1:8000 gould.in'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop'
alias t='./manage.py test --with-progressive --traverse-namespace -s'

export EDITOR=/usr/local/bin/vim

vol () { osascript -e "set volume output volume $*"; }

# node.js stuff
NODE_PATH=/usr/local/lib/node_modules
NODE_PATH=/usr/local/node:/usr/local/node/lib/node_modules

HISTCONTROL=ignorespace

alias happy_place='python -c "import this"'
PYTHONDONTWRITEBYTECODE=True

export EDITOR=/usr/local/bin/vim

tmux() {
  # stolen from: https://gist.github.com/lann/6771001
  SOCK_SYMLINK=~/.ssh/ssh_auth_sock
  [ -r $SSH_AUTH_SOCK ] && ln -sf $SSH_AUTH_SOCK $SOCK_SYMLINK

  if [[ -z "$@" ]]; then
    # attach to existing session, or create one, based on current directory
    env SSH_AUTH_SOCK=$SOCK_SYMLINK tmux new -A -s "$(basename $(pwd))"
  else
    env SSH_AUTH_SOCK=$SOCK_SYMLINK tmux $@
  fi
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# git aliases
alias gs="git status"
alias gp="git pull --ff-only"
alias gpm="git checkout master; git pull --ff-only"
alias gco="git checkout"
alias ga="git add -p"
alias gc="git commit"
alias gf="git fetch origin"
alias git_find="git log --all --"

alias fr="forego run"
alias dc="docker-compose"

export AWS_PROFILE=mfa

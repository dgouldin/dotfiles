export ARCHFLAGS="-arch x86_64"

PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/ruby/1.9.3-p194/bin:~/github/git-hooks:/usr/X11/bin:$PATH

alias pycrm='find . -name '*.pyc' -delete'
alias dgouldin_tunnel='ssh -NR20020:127.0.0.1:8000 gould.in'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop'
alias t='./manage.py test --with-progressive --traverse-namespace -s'

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

#virtualenvwrapper
export WORKON_HOME=~/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

vol () { osascript -e "set volume output volume $*"; }

# node.js stuff
source /Users/dgouldin/.nvm/nvm.sh
NODE_PATH=/usr/local/lib/node_modules
NODE_PATH=/usr/local/node:/usr/local/node/lib/node_modules

HISTCONTROL=ignorespace

alias happy_place='python -c "import this"'

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

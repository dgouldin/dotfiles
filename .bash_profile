export ARCHFLAGS="-arch x86_64"

PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/ruby/1.9.3-p194/bin:~/github/git-hooks:/usr/X11/bin:$PATH
NODE_PATH=/usr/local/lib/node_modules
NODE_PATH=/usr/local/node:/usr/local/node/lib/node_modules

alias slt='open -a "Sublime Text 2"'
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
source /usr/local/share/python/virtualenvwrapper.sh

vol () { osascript -e "set volume output volume $*"; }

source /Users/dgouldin/.nvm/nvm.sh

HISTCONTROL=ignorespace

alias happy_place='python -c "import this"'

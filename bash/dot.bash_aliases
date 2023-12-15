# ln -s /path/to/this/file ~/.bash_aliases

## base
alias lvi="vi ~/.bash_aliases && source ~/.bash_aliases"
alias lup="source ~/.bash_aliases"
alias e="exit"
alias ng="cd /etc/nginx/"
alias ngconf="cd /etc/nginx/conf.d"
alias dk="docker"
alias g="git"
alias gco="git checkout"
alias grv="git remote -v"
alias gbr="git branch"
alias ports="sudo netstat -lnput"
alias path="echo export PATH=$PATH"
alias root="sudo su" 

# nodejs
alias m2="pm2"
alias mlog="cd /root/.pm2/logs"

function db(){
  [ -f .env ] && psql $(grep '^DATABASE_URL=' .env | cut -d'=' -f2 | cut -d'?' -f1) || echo "no .env file"
}

[ -f ~/.local_aliases ] && source ~/.local_aliases
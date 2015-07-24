# alias file. Included by .bash_aliases

# Include private ones
if [ -f ~/.bash_aliases_private ]; then
   . ~/.bash_aliases_private
fi

alias ll='ls -la'
alias gg='grep -r -i -o '
alias cds='pushd .'
alias cdd='popd'
alias getip='wget -qO- http://ipecho.net/plain ; echo'
alias psgrep='ps aux | grep'
alias lightson='python /home/siretu/work/lifx-daemon/lights_on.py'
alias lightsoff='python /home/siretu/work/lifx-daemon/lights_off.py'
alias gs='git status'
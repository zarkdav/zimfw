# -*- shell-script -*-x 
# vim: set syntax=zsh:
# $Id: alias.rc 44 2005-08-09 14:50:41Z asyd $

# I prefer interactive mode
alias mkdir='mkdir -p -v'
alias mv='timeout 8 mv -iv'
alias rm='timeout 3 rm -Iv --one-file-system'
alias cp="cp -i"
alias ll="ls -l"
alias la="ls -a"
alias lh="ls -lh"
alias lsd='ls -ld *(-/DN)'
alias df="df -h"
alias less="vimpager"
alias ip="ip -c"

[[ -x $(whence -p vim) ]] && alias vi="vim"

# do a du -hs on each dir on current path
alias lsdir="for dir in *;do;if [ -d \$dir ];then;du -hsL \$dir 2>/dev/null;fi;done"

# IPv6 Stuff
alias netstat6="netstat -A inet6"

alias -s log="tail -f"

alias -s pem="openssl x509 -text -noout -in"
alias -s req="openssl req -text -in"

# ssh key management
if [[ "$USER" != "root" ]]; then
	ssh_key_manage
fi

return 0

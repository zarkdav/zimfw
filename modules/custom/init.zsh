#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

if [[ -x $(whence -p vimpager) ]]
then
    export PAGER=vimpager
    alias less=$PAGER
fi

if [[ -x $(whence -p vim) ]]
then
    export VISUAL=vim
    alias vi="vim"
fi

alias mkdir='mkdir -p -v'
alias mv='timeout 8 mv -iv'
alias rm='timeout 3 rm -Iv --one-file-system'
alias cp="cp -i"
alias ll="ls -l"
alias la="ls -a"
alias lh="ls -lh"
alias lsd='ls -ld *(-/DN)'
alias df="df -h"
alias ip="ip -c"


alias lsdir="for dir in *;do;if [ -d \$dir ];then;du -hsL \$dir 2>/dev/null;fi;done"

alias -s log="tail -f"

alias -s pem="openssl x509 -text -noout -in"
alias -s req="openssl req -text -in"

ssh_key_manage

zim_login=${ZDOTDIR:-${HOME}}/.zim/modules/custom/login
if [[ -o login && -d ${zim_login} ]]
then
    for f in ${zim_login}/*.zsh
    do
        source $f
    done
fi

# -*- shell-script -*-x 
# vim: set syntax=zsh:
# $Id: alias.rc 44 2005-08-09 14:50:41Z asyd $

# ssh key management
if [[ "$USER" != "root" ]]; then
	ssh_key_manage
fi

return 0

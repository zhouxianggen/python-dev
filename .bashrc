# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias python='/usr/local/bin/python3.8'
alias pip='/usr/local/bin/python3.8 -m pip'
alias sup='/usr/local/bin/supervisorctl -c /conf/supervisord.conf'

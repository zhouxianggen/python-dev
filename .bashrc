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
alias python='python3.7'
alias p3='python3'
alias pip3='python3.7 -m pip'
alias pip='pip3.7'
alias sup='supervisorctl -c /conf/supervisord.conf'

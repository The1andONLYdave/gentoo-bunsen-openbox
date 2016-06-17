# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
 
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -r; $PROMPT_COMMAND"
#export PROMPT_COMMAND="history -a; history -r"
#PS1='\u \w READY? \$ '
 
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;36m\]READY?\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
 
#return value visualisation
PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) \[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;36m\]READY?\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]"


alias cl="cd && clear"
alias .profile=". ~/.bashrc && exec bash"
alias editprofile="nano ~/.bashrc"

alias x="exit"

alias vg="vagrant global-status"
alias vu="vagrant up"
alias vh="vagrant halt"
alias vs="vagrant ssh"
alias vr="vagrant reload"

alias gc="git clone"
alias ga="git add"
alias gb="git branch"
alias gcout="git checkout"
alias gc="git clone"
alias gp="git push"
alias gpull="git pull"
alias gs="git status"
alias gp="eval 'ssh-agent'  && ssh-add ../.ssh/id_rsa_github && git push"

echo "Custom Shortcuts: cl, .profile, editprofile, x, vg,vu,vh,vs,vr,
gc,ga,gb,gcout,gc,gp,gpull,gs"


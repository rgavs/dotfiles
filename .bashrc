## BASHRC
#######################
case "$TERM" in
  #urxvt)
    #export TERM=rxvt-256color
    #;;
  st)
    #export TERM=st-256color
    PROMPT_COMMAND='echo -ne "\033[02;${PWD/#$HOME/"~"}\007"'
    #;;
  #xterm)
    #export TERM=xterm-color
    #;;
esac

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

eval 'keychain --eval --agents ssh id_rsa'
clear

#source ~/.bash-powerline.sh
export PATH=$PATH:/home/ryan/.gem/ruby/2.4.0/bin

PS1='\W \[\033[02;31m\]\]> \033[0m'

# EXPORTS
export EDITOR='nvim'
export VISUAL='nvim'
export LESSHISTFILE=-
#export TERM='rxvt-256color'

# ALIASES
# CORE
alias grep='grep --color=auto'
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -Al'
alias mkdir='mkdir -p'

# Aliases w/root
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias suspend='sudo /sbin/systemctl hybrid-sleep'

# APPS
alias adb='~/Android/Sdk/platform-tools/adb'
alias apm='/opt/atom/resources/app/apm/bin/apm'
alias atom='/opt/atom/atom'
alias exercism='/opt/exercism'
alias fastboot='~/Android/Sdk/platform-tools/fastboot'
alias nvimdiff='nvim -d'
alias st='/opt/xst/st'
alias studio='~/android-studio/bin/studio.sh'


## BASHRC
#######################
case "$TERM" in
  urxvt)
    export TERM=rxvt-unicode
    ;;
esac

eval 'keychain --eval --agents ssh id_rsa'
clear

export PATH=$PATH:/home/ryan/.gem/ruby/2.4.0/bin/

PS1='\W \[\033[02;31m\]\]> \033[0m'

# EXPORTS
export EDITOR='nvim'
export VISUAL='nvim'
export LESSHIST=-
export TERM='rxvt-256color'
export VDPAU_DRIVER='va_gl'
export VDPAU_QUIRKS='AvoidVa'

# ALIASES
# CORE
alias grep='grep --color=auto'
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -Al'
alias mkdir='mkdir -p'
#alias nvimdiff='nvim -d'

# Aliases w/root
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias suspend='sudo /sbin/systemctl hybrid-sleep'

# APPS
alias adb='~/Android/Sdk/platform-tools/adb'
alias apm='/opt/atom/resources/app/apm/bin/apm'
alias atom='/opt/atom/atom'
alias atom-beta='/opt/atom-beta/atom'
alias fastboot='~/Android/Sdk/platform-tools/fastboot'
#alias nvim='/usr/local/bin/nvim'
alias nvimdiff='nvim -d'
#alias nless='nvim -u /usr/local/share/nvim/runtime/macros/less.vim'
alias studio='~/android-studio/bin/studio.sh'

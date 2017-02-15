case "$TERM" in
  urxvt)
    export TERM=rxvt-unicode
    ;;
esac

if [ $VARS_SET  ]
then
  return
fi

# Set default environment vars
export EDITOR='nvim'
export VISUAL='nvim'
export LESS='-i -R'
export LESSHISTFILE=-
export PATH="$PATH:/home/ryan/.gem/ruby/2.3.0/bin"
export TERM='rxvt-unicode-256color'
export VDPAU_DRIVER='va_gl'
export VDPAU_QUIRKS='AvoidVa'

# ALIASES
# CORE
alias grep='grep --color=auto'
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -l'
alias mkdir='mkdir -p'

# Aliases w/root
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias suspend='sudo /sbin/systemctl hybrid-sleep'

# APPS
alias adb='~/Android/Sdk/platform-tools/adb'
alias apm='/opt/atom/resources/app/apm/bin/apm'
alias atom='/opt/atom/atom'
alias atom-beta='/opt/atom/atom-beta'
alias fastboot='~/Android/Sdk/platform-tools/fastboot'
alias idea='idea.sh'
alias nvimdiff='nvim -d'
#alias nless='nvim -u /usr/local/share/nvim/runtime/macros/less.vim'
alias studio='~/android-studio/bin/studio.sh'

export VARS_SET=true


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

# ALIAS
# CoRE
alias grep='grep --color=auto'
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -l'
# ETC
alias adb='~/Android/Sdk/platform-tools/adb'
alias apm='/opt/atom/resources/app/apm/bin/apm'
alias atom='/opt/atom/atom'
alias fastboot='~/Android/Sdk/platform-tools/fastboot'
alias idea='idea.sh'
alias nvimdiff='nvim -d'
alias nless='nvim -u /usr/local/share/nvim/runtime/macros/less.vim'
alias studio='~/android-studio/bin/studio.sh'

export VARS_SET=true


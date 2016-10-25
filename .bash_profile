case "$TERM" in
  urxvt)
    export TERM=rxvt-unicode
    ;;
esac

# Set default environment vars
export EDITOR='vim'
export VISUAL='vim'
export PATH=$PATH:/home/ryan/.gem/ruby/2.3.0/bin
export TERM='rxvt-256color'
export VDPAU_DRIVER='va_gl'
export VDPAU_QUIRKS='AvoidVa'

# Some useful aliases
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -A'

alias adb='/home/ryan/Android/Sdk/platform-tools/adb'
alias fastboot='/home/ryan/Android/Sdk/platform-tools/fastboot'
alias idea='idea.sh'
alias nvimdiff='nvim -d'
alias studio='/home/ryan/android-studio/bin/studio.sh'

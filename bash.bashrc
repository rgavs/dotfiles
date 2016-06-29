#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


# EXPORTS
export EDITOR="vim"
export TERM="terminator"
export VISUAL="nano"


## ALIASES
# MISC
alias grep='grep --color=always'
alias ls='ls --color=always'
alias la='ls -A'
alias ll='ls -l'
alias mkdir='mkdir -p'
alias ...='../..'

# APPS
alias adb='/ext/android/sdk/platform-tools/adb'
alias fastboot='/ext/android/sdk/platform-tools/fastboot'
alias idea='idea.sh'
alias nvim='/usr/local/bin/nvim'
alias studio='/ext/android-studio/bin/studio.sh'

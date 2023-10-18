# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    
    PS1=' \[\e[0:35m\]\W\[\e[m\] \[\e[0:35m\] '	
    #PS1=' \033[01:00m\]\W\[\033[00m\] ﬌ '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
else 
    PS1=' \u@\h:\W\'
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$'
   fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
#COMANDOS
alias cdr='cd ..'
alias rm='rm -Rf'
alias ll='ls -lh --color | cut -c25-'
alias lsd='find . -maxdepth 1 -type d'
alias lspdf='find . -name "*.pdf"'
alias open='explorer.exe'
alias santi='tmux new -s " Phuru " -n "ﮧ"'
alias santiatt='tmux attach -t " Phuru "'

#ACCESOS DIRECTOS A DIRECTORIOS
alias tmp='cd /mnt/c/Users/santi/OneDrive/5tmp0000'
alias dw='cd /mnt/c/Users/Santi/Downloads'
alias inetum='cd /mnt/c/Users/santi/OneDrive/2JOBS0000/jobs/7+Inetum/data' 
alias upc='cd /mnt/c/Users/Santi/Dropbox/3BATMAN/3-Bachelor-NetworksCommunications+UPC/2022/ciclo2/MODULO-A/'
alias db='cd /mnt/c/Users/Santi/Dropbox/'
alias od='cd /mnt/c/Users/Santi/OneDrive'
alias course='cd /mnt/c/Users/santi/Dropbox/COURSES'
alias expense='cd /mnt/c/Users/Santi/Dropbox/5EXPENSE' 

alias myhelp='less /home/santi/myhelp/op.man'
alias armsups='cd /mnt/c/Users/Santi/Dropbox/4PROJEC/Bruce_Lee/Arms_ups'

###Variales+entorno
#Ondrive
export expense7=/mnt/c/Users/Santi/OneDrive/1EXPEMSE/2022
export onedrive=/mnt/c/Users/Santi/OneDrive/
export tmp=/mnt/c/Users/Santi/OneDrive/5tmp0000
#Dropbox
export upc=/mnt/c/Users/Santi/Dropbox/3BATMAN/3-Bachelor-NetworksCommunications+UPC/2022/ciclo2/MODULO-A/
export hub=/mnt/c/Users/santi/Dropbox/1TODO00/objectives+2021/books/Books-Telegram/hub
export now=/mnt/c/Users/santi/Dropbox/TO+DO00/objectives+2021/now/
export db=/mnt/c/Users/santi/Dropbox/
export pucp=/mnt/c/Users/Santi/Dropbox/3BATMAN/2-Languege-English+PUCP/00basic/
#others
export dw=/mnt/c/Users/santi/Downloads/



###APPP'
export KEY_GITHUB=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

####clip
export DISPLAY=:0

##1password
alias pbcopy='clip.exe'
alias pw='echo "Callofduty0611!!@@#" | clip.exe'
alias op-unlock='eval $(op signin)'

alias pw-upc='op item get upc --fields password | clip.exe'
alias us-upc='op item get upc --fields username | clip.exe'
alias url-upc='op item get upc | grep website'

alias pw-pjl14='op item get 4um7q6izuhjnepwgfvcrbovoim --fields password | clip.exe'
alias us-pjl14='op item get 4um7q6izuhjnepwgfvcrbovoim --fields username | clip.exe'

##PHURU LAB
alias lg-phurula='ssh useransible@master'
alias lg-node01='ssh root@192.168.0.211'
alias lg-master='ssh root@192.168.0.200'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#eval "$(starship init bash)"

# Detect the platform (similar to $OSTYPE)
OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
	alias ll='ls -alvF --group-directories-first'
    ;;
  'FreeBSD')
    OS='FreeBSD'
    alias ls='ls -G'
    ;;
  'WindowsNT')
    OS='Windows'
    ;;
  'Darwin')
    OS='Mac'
	alias ls='ls -G'
	alias ll='ls -alvF'
 ;;
  'SunOS')
    OS='Solaris'
    ;;
  'AIX') ;;
  *) ;;
esac


# some more ls aliases
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias indent='astyle --style=knf --indent=tab --pad-oper --pad-comma --pad-header --unpad-paren --align-pointer=name --align-reference=name --break-one-line-headers --remove-braces --max-code-length=80 --break-after-logical'

alias tmux="TERM=screen-256color-bce tmux"
alias f='find . -name'
alias la='ls -A'
alias lr='ll -tr'
alias l='ls -CF'
alias o='xdg-open'
alias cd..='cd ..'
alias h='history'
alias hg='history | grep'
alias mutt='neomutt'
alias aurupdate='aurman -Syu --noconfirm --noedit'
#alias vi='nvim'
#alias vim='nvim'

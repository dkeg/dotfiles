#!/bin/zsh
# .f - $HOME/.zshrc

[[ -o login ]]             && source "$HOME/.profile"
[[ -e "$SHDIR/aliases"  ]] && source "$SHDIR/aliases"

# load functions
for func in `/bin/ls $SHDIR/functions`; do
	source "$SHDIR/functions/$func"
done


# settings
HISTFILE="$SHDIR/history"
HISTSIZE=128
SAVEHIST=4096

autoload -U compinit && compinit
autoload -U colors   && colors

setopt appendhistory nomatch sharehistory
unsetopt autocd beep extendedglob notify

# vim mode
bindkey -v

# old habits die hard
bindkey ^A beginning-of-line
bindkey ^E end-of-line
bindkey ^D delete-char

# don't load bloat unless we can't enjoy it
[[ "$TERM" == *-256color ]] || return

# load modules
for module in `/bin/ls $SHDIR/modules | grep -v '^d'` ; do
	source "$SHDIR/modules/$module"
done

[[ -e "$SHDIR/style" ]] && source "$SHDIR/style"

zstyle :compinstall filename "$HOME/.zshrc"

# vim: set ft=zsh :

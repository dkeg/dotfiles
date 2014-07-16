# .f - setup globals

export LC_CTYPE=en_US.UTF-8
export LANG=$LC_CTYPE

# if cwrapper is installed, add it to $PATH
[[ -d "$HOME/.cw/" ]]           && export PATH="$HOME/.cw/defs:$PATH"
[[ -d "/usr/local/plan9/bin" ]] && export PATH="$PATH:/usr/local/plan9/bin"

# religious preferences
export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less
export BROWSER=xombrero
export CC=clang

# paths go here
export XDG_DATA_HOME=$HOME/.config
export MBOX=$HOME/.mail/mbox
export SHDIR=$HOME/.sh.d


# os specific
case `uname -s` in
	"OpenBSD")
		MIRROR="http://ftp.bit.nl/"
		ARCH="`uname -m`"
		RELEASE="`uname -r`"
		export PKG_PATH="$MIRROR/pub/OpenBSD/$RELEASE/packages/$ARCH"
		export W3MIMGDISPLAY_PATH=/usr/local/libexec/w3m/w3mimgdisplay
		;;
	"Darwin")
		export CLICOLOR=1
		;;
esac

# vim: set ft=sh :

# ABNT2 Keyboard (Brazilian)
setxkbmap -model abnt2 -layout br


# Enable command colors like bash
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ll='ls -lAh  --color=auto'
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Enable colors:
autoload -U colors && colors

# Completion
zstyle :compinstall filename '/home/akira/.zshrc'
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit                                         
_comp_options+=(globdots)

# START CUSTOM PS1
GIT_INFO=''
get_branch() {
	local cur_branch=$(git branch 2> /dev/null | sed -n '/\* /s///p')
	if [ -z "$cur_branch" ]; then
		GIT_INFO=''
	else                                    
		GIT_INFO="%{$fg[red]%}($cur_branch)"
	fi
}
set_PS1() {
	get_branch
	USER_INFO="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M]"
	END_INDICATOR="%{$reset_color%}%(!.#.$)%b"
	CURRENT_FOLDER="%{$fg[magenta]%}[%c]"
	PS1="$USER_INFO$CURRENT_FOLDER$GIT_INFO $END_INDICATOR "

}
PROMPT_COMMAND=set_PS1
precmd() { eval "$PROMPT_COMMAND" }
# END CUSTOM PS1

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
source $HOME/.rvm/scripts/rvm

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 2>/dev/null

# Fancy
neofetch 


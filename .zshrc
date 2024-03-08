# Created by newuser for 5.9
export PATH=/home/nick/PATH:$PATH
export EDITOR='nvim'

autoload -U colors && colors 
autoload -Uz compinit
compinit 

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=50000

export PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
. ~/.zsh_aliases
. ~/.zsh_functions

pfetch

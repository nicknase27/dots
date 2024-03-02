# Created by newuser for 5.9
autoload -U colors && colors 
autoload -Uz compinit
compinit 

export PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
. ~/.zsh_aliases
. ~/.zsh_functions

pfetch

# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

alias cat=bat
alias ls=exa
alias ping=prettyping

function gi() { curl -sLw "\n" https://www.gitignore.io/api/\$@ ;}

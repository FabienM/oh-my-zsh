# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

alias cat=bat
alias ls=exa
alias ping=prettyping
alias pwgen="pwgen -cy 32 1"
alias pass=gopass

function gi() { curl -sLw "\n" https://www.gitignore.io/api/\$@ ;}
function wttr() { curl -4 wttr.in/${1:-Lille} }

function plouf() {
	PASS="$(pwgen)"
	ENC="$(openssl enc -aes-256-cbc -salt -a -pass pass:$PASS -in $1)"
	echo "Password: $PASS"
	unplouf $ENC
}

function unplouf() {
	UNPLOUF="openssl enc -aes-256-cbc -d -a << EOF\n$1\nEOF"
	echo $UNPLOUF
	echo "$UNPLOUF" | pbcopy
}

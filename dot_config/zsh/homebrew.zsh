# Load homebrew suggestions
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
autoload -Uz compinit; compinit

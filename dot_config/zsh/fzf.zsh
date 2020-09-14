# Source fzf file
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Exports
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Inline search command
function _fzf_compgen_path() {
    fd --hidden --exclude ".git" . "$1"
}

# Inline search command for directories
function _fzf_compgen_dir() {
    fd --type d --hidden --exclude ".git" . "$1"
}
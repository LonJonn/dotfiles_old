# ls but with coloured file preview using fzf and bat
function lsf() {
	fd -H -t f | fzf --ansi --reverse --preview-window 'right:60%' \
		--preview 'bat --color=always --style=header,grid --line-range :300 {}'
}

# fuzzy editor
fe() {
	files=($(lsf))
	[[ -n "$files" ]] && ${EDITOR} "${files[@]}"
}

# clean up unused brew dependencies
function cleanbrew() {
	echo "[ Removing unused brew dependencies ]";
	echo "Dumping formulae to ./Brewfile...";
	brew bundle dump;

	echo "Uninstalling unused formulae...";
	brew bundle --force cleanup;

	echo "Removing Brewfile";
	rm Brewfile;

	echo "Done!";
}

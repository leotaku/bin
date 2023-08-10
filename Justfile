# Variables

mode := "stow"

# Commands

stow: generic specific

generic:  (link "generic" "$HOME/.local/bin")
specific: (link "specific" "$HOME/.local/bin")
sunset:   (link "sunset" "$HOME/.local/bin")

link package target:
	mkdir -p "{{target}}"
	stow --"{{mode}}" --dotfiles --verbose=2 -t "{{target}}" "{{package}}"

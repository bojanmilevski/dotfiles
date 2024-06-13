if status is-interactive
	source "$HOME/.config/shell/env"
	source "$HOME/.config/shell/alias"
	zoxide init fish | source
	set fish_greeting ""
end

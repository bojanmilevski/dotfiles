if status is-interactive
	source "$HOME/.config/shell/env"
	source "$HOME/.config/shell/alias"
	set fish_greeting ""
	zoxide init fish | source
end

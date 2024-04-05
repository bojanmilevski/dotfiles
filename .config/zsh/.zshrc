# source shell environment
[ -f "$HOME/.config/shell/env" ] && . "$HOME/.config/shell/env"
[ -f "$XDG_CONFIG_HOME/shell/alias" ] && . "$XDG_CONFIG_HOME/shell/alias"

# plugins
source "$ZSH_PLUGIN_DIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"

# prompt
autoload -Uz colors && colors
PROMPT="%B%{$fg[magenta]%}%n%{$reset_color%}%B@%B%{$fg[magenta]%}%M %{$fg[blue]%}%~%{$reset_color%}%b "

# history
HISTSIZE=100000
SAVEHIST=100000

# misc
setopt autocd
setopt correctall
setopt hist_ignore_all_dups
stty stop undef

# completion
autoload -Uz compinit
compinit -u -d "$XDG_DATA_HOME/zcompdump"
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1

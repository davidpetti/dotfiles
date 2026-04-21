# History
HISTFILE=~/.zsh_history
setopt appendhistory

# QOL options
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
zle_highlight=('paste:none')
stty stop undef
unsetopt BEEP

# Sourcing Functions File
source "$ZDOTDIR/zsh-functions"

# Getting Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# Adding Files
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-exports"

# Auto-start tmux if not already inside one
if [ -z "$TMUX" ]; then
  tmux attach-session -t main || tmux new-session -s main
fi

# Starship Prompt
eval "$(starship init zsh)"

# Zoxide Setup
eval "$(zoxide init zsh)"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
# plug "marlonrichert/zsh-autocomplete"


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export TODOIST_API_TOKEN="f4defc86da408b489afddbae04a80d15849212fa"

# Load and initialise completion system
# autoload -Uz compinit
# compinit

alias i="yay -S"
alias s="yay -Ss"
alias r="yay -Rns"
alias u="yay -Syu"

alias todoist="terminalist"

# bindkey -v

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

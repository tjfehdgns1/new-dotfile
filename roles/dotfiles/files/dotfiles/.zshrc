export PATH=$HOME/bin:/usr/local/bin:$PATH:$MASON:$LUAROCKS
export MASON=$HOME/.local/share/nvim/mason/bin
# export LUAROCKS=$HOME/.luarocks/share/lua/5.4/
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
alias cls="clear"
alias hx="helix"
alias ls="eza --icons"
alias lg="lazygit"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

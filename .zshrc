# Fix homebrew path
eval "$(/opt/homebrew/bin/brew shellenv)"

# dotfile sync alias
alias dot='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


##########################
# zsh setup
##########################

ZSH_INIT=$HOME/.zsh
# Source all *.zsh files in  directly

# autoload functions
fpath=($ZSH_INIT $fpath)
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

for f in $ZSH_INIT/*.zsh; do source $f; done
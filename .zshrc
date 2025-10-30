export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
ansible
argocd
autoenv
docker
docker-compose
encode64
git
gitignore
helm
kubectl
kubectx
nmap
terraform
tmux
zsh-syntax-highlighting
zsh-autosuggestions
zsh-completions
kubetail
)

source $ZSH/oh-my-zsh.sh
fpath+=~/.oh-my-zsh/custom/plugins

export LANG=en_US.UTF-8
export EDITOR='nvim'

alias killdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias tmux="TERM=screen-256color tmux"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

if [ -f "$HOME/.local/bin/set_env" ]; then
  alias set_env="source set_env"
fi

autoload -Uz compinit && compinit

if [ -f $(brew --prefix)/etc/zsh_completion ]; then
. $(brew --prefix)/etc/zsh_completion
fi

if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

if command -v eza &> /dev/null; then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza -lh --icons --group-directories-first'
  alias la='eza -lha --icons --group-directories-first'
  alias lt='eza --tree --icons --level=2'
  alias lg='eza --git --icons --group-directories-first'
else
  alias ls='ls --color=auto'
  alias ll='ls -lh --color=auto'
  alias la='ls -lha --color=auto'
fi

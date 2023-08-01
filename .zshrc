session=$(tmux ls)

if [[ -z $session ]]; then
  tmux new -s default
else 
  if [[ -z $TMUX ]]; then
    tmux attach-session
  fi
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=~/.cargo/bin:~/.local/share/nvim/mason/bin:~/.tmux/plugins/tmuxifier/bin:~/.spicetify:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ":omz:update" frequency 15
zstyle ":fzf-tab:*" fzf-command ftb-tmux-popup

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

EDITOR="nvim"

bindkey "^ " forward-word
bindkey "^j" autosuggest-accept
bindkey "^k" autosuggest-execute

plugins=(
  fzf-tab
  git
  npm
  sudo
  tmux
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"

alias home="cd $HOME"
alias ls="exa --icons"

alias tm="tmux"
alias tk="tmux kill-session"
alias tx="tmuxifier"

alias dot="/usr/bin/git --git-dir=~/.dotfiles/ --work-tree=$HOME"

alias zshsource="source ~/.zshrc"
alias zshconf="nvim ~/.zshrc"

alias nvimconf="cd ~/.config/nvim/ && nvim +'SessionManager load_current_dir_session'"
alias hyprconf="cd ~/.config/hypr/ && nvim +'SessionManager load_current_dir_session'"
alias kittyconf="cd ~/.config/kitty/ && nvim +'SessionManager load_current_dir_session'"
alias waybarconf="cd ~/.config/waybar/ && nvim +'SessionManager load_current_dir_session'"
alias roficonf="cd ~/.config/rofi/ && nvim +'SessionManager load_current_dir_session'"

alias wifion="nmcli radio wifi on"
alias wifioff="nmcli radio wifi off"
alias wifils="nmcli device wifi list"
alias wifistatus="nmcli radio wifi"
alias wificonnect="nmcli device wifi connect"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:/home/luckas/.spicetify

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



HISTSIZE=50000
HISTFILESIZE=50000

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

export SYSTEMD_EDITOR=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export PATH="/var/lib/flatpak/exports/bin/com.spotify.Client:$PATH"

# doom-emacs path 
export PATH="$HOME/.config/emacs/bin:$PATH"
#Java env
ZSH_THEME="robbyrussell"
DEFAULT_USER=`whoami`


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git
         z 

  )
source $ZSH/oh-my-zsh.sh

# User configuration

v() {
  vi "$@"
}
vi() {
  vim "$@"
}
vim() {
  nvim "$@"
}

alias nn='nvim'
alias r='ranger'
alias dur="~/.duration.sh"
alias ...='cd ../..'
alias zc='source ~/.zshrc'
alias focus='mpv ~/focus.mp3'
alias h='history'
alias zconfig='v ~/.zshrc'
alias hc='nvim ~/.config/hypr/hyprland.conf'
alias kc='nvim ~/.config/kitty/kitty.conf'
alias cat='bat'
alias yt='yt-dlp'
alias oom= 'sudo journalctl -u earlyoom | grep sending'
alias weather="curl wttr.in"
alias conn='bluetoothctl disconnect' 
alias di='bluetoothctl disconnect'
alias factorio='wine ~/Factorio/bin/x64/factorio.exe'
alias nconf='nn ~/.config/nvim/lua/koneh/plugins-setup.lua'
alias fkill='pkill -f firefox'
alias ic='sudo iwconfig'
alias camkill='sudo rmmod -f uvcvideo'
alias history='history 500 | fzf  +s --tac'


#Antigen- manage plugins for oh-my-zsh
source ~/antigen.zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle lein
#zsh-autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

#End
antigen apply

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


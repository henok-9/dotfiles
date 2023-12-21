if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH


HISTSIZE=50000
HISTFILESIZE=50000

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

export SYSTEMD_EDITOR=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/var/lib/flatpak/exports/bin/com.spotify.Client:$PATH"
#Java env
ZSH_THEME="robbyrussell"
DEFAULT_USER=`whoami`



# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
 # Add wisely, as too many plugins slow down shell startup.
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
alias dur="~/duration.sh"
alias ...='cd ../..'
alias h='history'
alias zconfig='~/.zshrc'

alias logs='encfs ~/.xlogs ~/.mountlogs'
alias dlog='fusermount -u ~/.mountlogs/' 
alias bashrc='nn ~/.bashrc'
alias webm='python3 /home/shifta/cringe/sus_webm.py'
alias cat='bat'
alias zz='sudo zypper install'
alias yt='yt-dlp'
alias oom= 'sudo journalctl -u earlyoom | grep sending'
alias weather="curl wttr.in"
alias ears='bluetoothctl power on && bluetoothctl connect 30:53:C1:2C:BA:12' 
alias deafen='bluetoothctl disconnect'
alias take='nvim mytakeonthings.txt'
alias hot='sudo nmcli dev wifi hotspot ifname wlp2s0 ssid hmm password "qwerty1234"'
alias fact='wine ~/Factorio/bin/x64/factorio.exe'
alias nconf='nn ~/.config/nvim/lua/koneh/plugins-setup.lua'
alias fkill='pkill -f firefox'
alias camkill='sudo rmmod -f uvcvideo'
alias dis='bluetoothctl disconnect' 
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

eval $(thefuck --alias)

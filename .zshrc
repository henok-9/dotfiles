HISTSIZE=50000
HISTFILESIZE=50000

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#Java env
export PATH=/usr/lib/jvm/default/bin/javac:$PATH
export EDITOR=nvim


ZSH_THEME="robbyrussell"
DEFAULT_USER=`whoami`
plugins=(git
         z 
  )

source $ZSH/oh-my-zsh.sh

#aliases 
alias zconfig="~/.zshrc"
alias vim="nvim"
alias cat='bat'
alias zz='sudo zypper install'
alias yt='yt-dlp'

alias ears='bluetoothctl power on && bluetoothctl connect 30:53:C1:2C:BA:12' 
alias deafen='bluetoothctl disconnect'
alias fact='wine ~/Factorio/bin/x64/factorio.exe'
alias fkil='pkill -f firefox'
alias kconf=' vim ~/.config/kitty/config'
alias camkill='sudo rmmod -f uvcvideo'
alias con='bluetoothctl connect 30:53:C1:2C:BA:12'
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


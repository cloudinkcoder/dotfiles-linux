source $HOME/.profile

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="sexy-zsh"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# 历史纪录条目数量
export HISTSIZE=700
# 注销后保存的历史纪录条目数量
export SAVEHIST=1000
# 历史纪录文件
export HISTFILE=~/.zsh_history

# time
TZ='Asia/Shanghai'; export TZ

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    )

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

printf "------------------------------------------\n"
printf "   %s\n" "Welcome to the world of Linux"
printf "------------------------------------------\n"

# 如果文件存在，则调用该文件
if [ -f ~/.sh_alias ]; then
    . ~/.sh_alias
fi

# Update and Upgrade
alias update="sudo apt-get update && sudo apt-get upgrade -y"
###### Sync files ######
# dotfiles sync
alias sync='cd /home/github/dotfiles; python3 sync.py debian'

# GPG
export GPG_TTY=$(tty)

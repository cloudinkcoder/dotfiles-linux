if status is-interactive
    # Commands to run in interactive sessions can go here
    # echo "Hello world"
    # date
end

# setup config dir
set -g config_dir ~/.config/fish/conf.d
# source config file
for file in $config_dir/*.fish
    source $file
end

set dotfiles_dir '~/repos/dotfiles-linux'

# rustup国内镜像安装
set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

# Update
alias update="sudo pacman -Syu --noconfirm"
# Sync dotfiles
alias sync="python3 $dotfiles_dir/sync.py arch"


alias clean="sudo bash $dotfiles_dir/scripts/clean.sh"
alias mirror="sudo bash $dotfiles_dir/scripts/mirror.sh"

# python3 pip update
alias pyupdate="python3 $dotfiles_dir/scripts/pip-update.py"

# git last push
alias lastpush="bash $dotfiles_dir/scripts/git-command/last-push.sh"

alias repos="code ~/repos"
##########################

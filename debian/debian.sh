

# fastfetch (在testing分支可以直接安装)
sudo apt install fastfetch

# fastfetch (neofetch已经放弃维护了)
# 克隆仓库前记得先把git配置好
cd ~
git clone git@github.com:fastfetch-cli/fastfetch.git
cd fast*
sudo apt install -y cmake make pkg-config gcc g++
cmake .
make && sudo make install && cd .. && rm -rf fast* && fastfetch

# neovim
sudo apt-get install -y wget
cd ~ && wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz && rm -rf nvim-linux64.tar.gz
./nvim-linux64/bin/nvim
cd /usr/bin && sudo ln -s ~/nvim-linux64/bin/nvim nvim && nvim --version
# 接下来还要对neovim进行个性化配置(也就是同步nvim的配置文件)

# java-21
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb && java -version && rm -f jdk*

# Go
cd /usr/local
su
wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
su chanzz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile
go version

# Rust
sudo apt-get install -y curl
# Link: https://forge.rust-lang.org/infra/other-installation-methods.html
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version && cargo --version
# rust的更新工具。将rust更新到最新版本
rustup update
# 卸载rust使用以下命令
# rustup self uninstall


# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
rm -rf lazy lazygit.tar.gz
lazygit --version


# 查询已安装的软件包
apt list --installed hugo gzip

# 7zip
apt-get install p7zip-full
7z x texlive.iso -o iso

# paccache脚本默认情况下会删除已安装和未安装包的所有缓存版本，但最近 3 个版本除外
# yes | sudo pacman -S pacman-contrib
paccache -r

# yay清理
# yay -Scc --noconfirm

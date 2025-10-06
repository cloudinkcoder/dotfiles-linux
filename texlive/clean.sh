# 清空所有旧包备份 (在符合当前备份规则下执行)
tlmgr backup --clean --all

############# 清理下载缓存 #############
# 查看当前backup目录 (一般是.../tlpkg/backups)
tlmgr option backupdir
# 查看autobackup设置 (默认保留的备份数)
tlmgr option autobackup

# 查看删除的内容
tlmgr backup --clean=0 --all --dry-run
# 执行删除
tlmgr backup --clean=0 --all


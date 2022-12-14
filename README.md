# shell

- eval built-in
- exit built-in
- export built-in
- readonly built-in
- return built-in
- test/[ built-in
- time built-in
- trap built-in
- unset built-in
- help/run-help built-in
- type built-in
- source/. built-in
- chroot coreutils
- env coreutils
- sleep coreutils
- expr coreutils
- printenv coreutils
- printf coreutils
- seq coreutils
- xargs findutils
- man man-db
- watch procps-ng

# 系统

- limit built-in
- ulimit built-in
- date coreutils
- uname coreutils
- hostid coreutils
- getent glibc
- locale-gen glibc
- uptime procps-ng
- journalctl systemd
- loginctl systemd
- networkctl systemd
- systemctl systemd
- bootctl systemd
- busctl systemd
- hostnamectl systemd
- localectl systemd
- resolvectl systemd
- timedatectl systemd
- sysctl procps-ng
- cal util-linux
- dmesg util-linux
- mkswap util-linux
- swapon util-linux
- swapoff util-linux

# 进程

- jobs built-in
- bg/& built-in
- fg built-in
- nice coreutils
- nohub coreutils
- htop htop
- free procps-ng
- pkill procps-ng
- pmap procps-ng
- ps procps-ng
- top procps-ng
- vmstat procps-ng
- killall psmisc
- kill util-linux
- renice util-linux

# 用户/组

- id coreutils
- whoami coreutils
- logname coreutils
- pinky coreutils
- users coreutils
- w procps-ng
- login shadow
- nologin shadow
- faillog shadow
- lastlog shadow
- groupadd/groupmod/groupdel shadow
- pwck shadow
- useradd/usermod/userdel shadow
- passwd shadow
- sudo sudo
- visudo sudo
- chsh util-linux
- last util-linux
- su util-linux

# 磁盘

- df coreutils
- du coreutils
- fdisk util-linux
- mkfs util-linux
- mount util-linux
- umount util-linux

# 文件/目录

- cd built-in
- pwd built-in
- pushd built-in
- popd built-in
- echo coreutils
- mkdir coreutils
- mktemp coreutils
- basename coreutils
- dirname coreutils
- ls coreutils
- ln coreutils
- touch coreutils
- tee coreutils
- cp coreutils
- dd coreutils
- mv coreutils
- rm coreutils
- rmdir coreutils
- chcon coreutils
- chgrp coreutils
- chown coreutils
- chmod coreutils
- base64 coreutils
- basenc coreutils
- b2sum coreutils
- md5sum coreutils
- truncate coreutils
- stat coreutils
- file file
- find findutils
- gzip/gunzip gzip
- lsof lsof
- shasum perl
- tar tar
- rename util-linux
- whereis util-linux
- zip/unzip zip

# 文件内容

- cat coreutils
- head coreutils
- tail coreutils
- cut coreutils
- wc coreutils
- uniq coreutils
- sort coreutils
- awk gawk
- gawk gawk
- egrep grep
- fgrep grep
- grep grep
- less less
- sed sed
- vim vim
- hexdump util-linux
- more util-linux
- uuidgen util-linux

# 网络

- firewalld firewalld
- firewall-cmd firewalld
- firewall-config firewalld
- iptabls iptables-nft
- arping iputils
- ping iputils
- tracepath iputils
- bridge iproute2
- ip iproute2
- ipvs
- nmcli networkmanager
- ncat nmap
- nmap nmap
- nping nmap
- curl curl
- wget wget
- sftp openssh
- ssh openssh
- ssh-copy-id openssh
- ssh-keygen openssh
- rsync rsync
- rfkill util-linux
- zmap zmap

# 

## git

### 配置

- git config

### 创建项目

- git init
- git clone

### 快照

- git add
- git status
- git diff
- git commit
- git notes
- git restore
- git reset
- git rm
- git mv

### 分支

- git branch
- git checkout
- git switch
- git merge
- git mergetool
- git log
- git stash
- git tag
- git worktree

### 远程仓库

- git fetch
- git pull
- git push
- git remote
- git submodule

### 检查

- git show
- git log
- git diff
- git difftool
- git range-diff
- git shortlog
- git describe

### 补丁

- git apply
- git cherry-pick
- git diff
- git rebase
- git revert

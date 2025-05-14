# Android-Termux-Script

Termux [Play Store](https://play.google.com/store/apps/details?id=com.termux)

## 設定執行權限
```sh
chmod +x *.sh
```

## 安裝Debian最小檔案系統
這裡的最小檔案系統指的是proot-distro開發者提供的rootfs。
```sh
./install_debian.sh
```

## 登入Proot Debian，使用Root帳號。
```sh
./root_login_debian.sh
```

## 安裝Anaconda環境
```sh
./install_conda.sh
```

## 設定Anaconda環境，Python 3.12
```sh
./setup_conda_python_3.12.sh
```

## 安裝 ssh 連線
```sh
apt install dropbear
```

## 啟用 ssh 連線
```sh
dropbear -F -E -p 2222
```

## Windows CMD 連線到 ssh
```cmd
ssh root@192.168.X.X -p 2222
```

## 安裝 tmux
```sh
sudo apt install tmux
```

## 啟用 tmux 新終端
```sh
tmux 
```

## 列出 tmux 終端
```sh
tmux ls
```

## 重新連線 tmux 終端
```sh
tmux attach
```

## 先 detach 當前終端（離開而不終止）
`
Ctrl + b 然後按 d
`

## 切換 tmux 終端視窗
`
Ctrl + b 然後按 w
`
## 新增wheel和video群組
```sh
groupadd storage
groupadd wheel
groupadd video
```
## 新增一般帳戶"xiaoyu"，並修改密碼。
```sh
useradd -m -g users -G wheel,audio,video,storage -s /bin/bash xiaoyu
passwd xiaoyu
```
## 將xiaoyu加入sudo群組
- 先執行：
```sh
nano /etc/sudoers
```
- 找到`root ALL=(ALL:ALL) ALL`那一行，在下一行加入以下內容：
```txt
xiaoyu ALL=(ALL:ALL) ALL
```
## 切換一般帳戶 (xiaoyu)
```sh
su xiaoyu
cd
```
## 登入Proot Debian，使用xiaoyu帳號。
```sh
./xiaoyu_login_debian.sh
```


# Android-Termux-Script

Termux [F-Droid](https://f-droid.org/packages/com.termux/)

## 安裝Ubuntu最小檔案系統
這裡的最小檔案系統指的是proot-distro開發者提供的rootfs。
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/XiaoYu0708/Android-Termux-Script/refs/heads/main/install_ubuntu.sh)"
```

## 登入後先安裝sudo、vim、git、gh
```sh
apt update
apt install sudo vim git gh -y
```

## 登入Proot Ubuntu，使用Root帳號。
- 下載指令
```sh
wget https://raw.githubusercontent.com/XiaoYu0708/Android-Termux-Script/refs/heads/main/root_login_ubuntu.sh
```
- 使用指令
```sh
./root_login_ubuntu.sh
```

## 新增wheel和video群組
```sh
groupadd storage
groupadd wheel
groupadd video
```
## 新增一般帳戶"user"，並修改密碼。
```sh
useradd -m -g users -G wheel,audio,video,storage -s /bin/bash user
passwd user
```
## 將 user 加入 sudo 群組
- 先執行：
```sh
vi /etc/sudoers
```
- 找到`root ALL=(ALL:ALL) ALL`那一行，在下一行加入以下內容：
```txt
user ALL=(ALL:ALL) ALL
```
## 切換一般帳戶 (user)
```sh
su user
cd
```
## 登入Proot Ubuntu，使用 user 帳號。
- 下載指令
```sh
wget https://raw.githubusercontent.com/XiaoYu0708/Android-Termux-Script/refs/heads/main/user_login_ubuntu.sh
chmod +x ./user_login_ubuntu.sh
```
- 使用指令
```sh
./user_login_ubuntu.sh
```

## 設定台灣時區
```sh
sudo ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime
```
- 設定24小時制，設定後需要重新登入
```sh
localectl set-locale LC_TIME="en_GB.UTF-8"
```


## 安裝Anaconda環境
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/XiaoYu0708/Android-Termux-Script/refs/heads/main/install_conda.sh)"
```

## 設定Anaconda環境，Python 3.12
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/XiaoYu0708/Android-Termux-Script/refs/heads/main/setup_conda_python_3.12.sh)"
```

## 安裝 ssh 連線
```sh
sudo apt install openssh-server
```

##  修改 ssh 連線設定
```sh
sudo vi /etc/ssh/sshd_config
```

```txt
Port 2222
PermitRootLogin yes -> 開放 root 登入，開放使用密碼登入
PasswordAuthentication yes
```
- 更改完存檔後記得重啟服務
```
sudo /etc/init.d/ssh restart
```

## Windows CMD 連線到 ssh
```cmd
ssh user@192.168.X.X -p 2222
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

## 設定 tmux 中啟用滾動
- 編輯
```sh
vi ~/.tmux.conf
```
- 輸入
```txt
set -g mouse on
```
- 套用設定
```sh
tmux source ~/.tmux.conf
```

## 在視窗中分割出新終端
`
Ctrl + b 然後按 c
`

## 先 detach 當前終端（離開而不終止）
`
Ctrl + b 然後按 d
`

## 切換 tmux 終端視窗
`
Ctrl + b 然後按 w
`


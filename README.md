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
./login_debian.sh
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
## 安裝TigerVNC的套件
```sh
sudo apt install tigervnc-standalone-server tigervnc-xorg-extension
```

## 設定VNC伺服器密碼
```sh
vncpasswd
```

## 新增VNC伺服器啟動後要執行的程式，編輯~/.vnc/xstartup
```sh
mkdir ~/.vnc/

nano ~/.vnc/xstartup
```
- 填入以下內容
```sh
#!/bin/bash
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADRESS

# 啟動PulseAudio音效伺服器，音訊會從Termux傳出來
export PULSE_SERVER=127.0.0.1 && pulseaudio --start --disable-shm=1 --exit-idle-time=-1

# 執行桌面環境，此處為XFCE
exec startxfce4
```

## 賦予xstartup執行權限
```sh
chmod +x ~/.vnc/xstartup
```

## 定義VNC伺服器的設定檔。編輯~/.vnc/tigervnc.conf
```sh
nano ~/.vnc/tigervnc.conf
```
- 填入以下內容：
```txt
# 目前的工作階段XFCE
$session="xfce-session";
# 解析度，越高佔用頻寬越多
$geometry="1920x1080";
# 位元深度，數值為8/16/24/32，數字越大畫面越好但越耗頻寬
$depth="32";
# 讓外部網路可以連線
$localhost="no";
```

## 啟動 VNC 伺服器
```sh
vncserver
```
## 中止 VNC 伺服器
```sh
vncserver -kill :1
```

#!/bin/bash

#安裝Proot-distro和PulseAudio
pkg update
termux-setup-storage
pkg install proot-distro pulseaudio vim

#安裝Proot Debian
proot-distro install debian

#登入Debian。--user參數表示登入指定帳戶，目前是root。--shared-tmp則是將Termux的tmp目錄掛載至proot內部以共享X伺服器資源。
proot-distro login debian --user root --shared-tmp

#登入後先安裝sudo、vim、Firefox瀏覽器
apt update
apt install sudo vim firefox-esr

#編輯映射站列表
vim /etc/apt/sources.list

#將網址全部替換成台灣國網中心的網址（需注意版本代號，目前是bookworm）：
deb http://opensource.nchc.org.tw/debian/ bookworm main contrib non-free
deb-src http://opensource.nchc.org.tw/debian/ bookworm main contrib non-free
deb http://opensource.nchc.org.tw/debian/ bookworm-updates main
deb-src http://opensource.nchc.org.tw/debian/ bookworm-updates main
deb http://security.debian.org/debian-security bookworm/updates main contrib non-free
deb http://opensource.nchc.org.tw/debian bookworm-backports main

#更新套件列表
apt update

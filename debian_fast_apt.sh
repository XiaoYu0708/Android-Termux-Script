#!/bin/bash

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

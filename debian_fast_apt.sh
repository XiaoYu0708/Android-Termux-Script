#!/bin/bash

#將網址全部替換成台灣國網中心的網址（需注意版本代號，目前是bookworm）：
echo "deb http://opensource.nchc.org.tw/debian/ bookworm main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://opensource.nchc.org.tw/debian/ bookworm main contrib non-free" > /etc/apt/sources.list
echo "deb http://opensource.nchc.org.tw/debian/ bookworm-updates main" > /etc/apt/sources.list
echo "deb-src http://opensource.nchc.org.tw/debian/ bookworm-updates main" > /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security bookworm/updates main contrib non-free" > /etc/apt/sources.list
echo "deb http://opensource.nchc.org.tw/debian bookworm-backports main" > /etc/apt/sources.list

#更新套件列表
apt update

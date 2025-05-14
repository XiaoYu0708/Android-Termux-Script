#!/bin/bash

#安裝Proot-distro和PulseAudio
pkg update
termux-setup-storage
pkg install proot-distro pulseaudio vim

#安裝Proot Debian
proot-distro install ubuntu

#登入Debian。--user參數表示登入指定帳戶，目前是root。--shared-tmp則是將Termux的tmp目錄掛載至proot內部以共享X伺服器資源。
proot-distro login ubuntu --user root --shared-tmp

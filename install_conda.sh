#!/bin/bash

# 安裝miniforge3
sudo apt update
sudo apt install wget python3 python3-pip vim -y

alias python=/usr/bin/python3
alias python3=/usr/bin/python3
alias pip=/usr/bin/pip
alias pip3=/usr/bin/pip

wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh
bash Miniforge3-Linux-aarch64.sh
exit

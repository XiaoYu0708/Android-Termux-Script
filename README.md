# Android-Turmux-Script

Termux [Play Store](https://play.google.com/store/apps/details?id=com.termux)

## 安裝Debian最小檔案系統
這裡的最小檔案系統指的是proot-distro開發者提供的rootfs。
```sh
chmod +x ./install_debian.sh
./install_debian.sh
```

## 更換Debian映射站台
此為選擇性步驟。更改映射站，加快套件下載速度。
```
chmod +x ./debian_fast_apt.sh
./debian_fast_apt.sh
```

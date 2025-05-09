# Android-Turmux-Script

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
```
./login_debian.sh
```

## 安裝Anaconda環境
```
./install_conda.sh
```

## 設定Anaconda環境，Python 3.12
```
./setup_conda_python_3.12.sh
```


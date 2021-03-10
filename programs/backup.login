#!/usr/bin/bash

if [ ! -d "/data/data/com.termux/files/usr/share/login-backup" ];then
cd /data/data/com.termux/files/usr/share
mkdir login-backup ;fi
if [ -f "/data/data/com.termux/files/usr/etc/login.enc" ];then
if [ -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then
cd /data/data/com.termux/files/usr/etc ; cp -rf login.enc zshrc login-config /data/data/com.termux/files/home/Login-Page/backup
cd /data/data/com.termux/files/home/Login-Page/backup
cp -rf login.enc zshrc login-config /data/data/com.termux/files/usr/share/login-backup
echo;echo -e "\e[0;1;48;2;170;0;255m  [!] Backup Previous Data Successfully   \e[0m";echo ;fi
if [ ! -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then
cd /data/data/com.termux/files/usr/etc ; cp -rf login.enc bash.bashrc login-config /data/data/com.termux/files/home/Login-Page/backup
/data/data/com.termux/files/home/Login-Page/backup
cp -rf login.enc bash.bashrc login-config /data/data/com.termux/files/usr/share/login-backup
echo;echo -e "\e[0;1;48;2;170;0;255m  [!] Backup Previous Data Successfully   \e[0m";echo ;fi
else echo;echo -e "\e[0;1;48;2;200;0;0m  [!] Config Not Found, Create Login File \e[0m";echo ;fi

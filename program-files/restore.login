#!/usr/bin/bash

if [ -d "/data/data/com.termux/files/home/login-page/backup/login-config" ];then
if [ -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then
if [ -f "/data/data/com.termux/files/usr/etc/motd" ];then rm /data/data/com.termux/files/usr/etc/motd &> /dev/null ; fi
cd /data/data/com.termux/files/usr/etc
rm -rf zshrc login-config login.enc
cd /data/data/com.termux/files/home/login-page/backup
cp -rf zshrc login-config login.enc /data/data/com.termux/files/usr/etc
echo;echo -e "\e[0;1;48;2;0;25;255m  [!] Restored Previous Data Successfully \e[0m";echo ;fi
if [ ! -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then
if [ -f "/data/data/com.termux/files/usr/etc/motd" ];then rm /data/data/com.termux/files/usr/etc/motd &> /dev/null ; fi
cd /data/data/com.termux/files/usr/etc
rm -rf bash.bashrc login-config login.enc
cd /data/data/com.termux/files/home/login-page/backup
cp -rf bash.bashrc login-config login.enc /data/data/com.termux/files/usr/etc
echo;echo -e "\e[0;1;48;2;0;25;255m  [!] Restored Previous Data Successfully \e[0m";echo ;fi
else echo;echo -e "\e[0;1;48;2;200;0;0m  [!] Previous Data Not Found, Backup Now \e[0m";echo ;fi

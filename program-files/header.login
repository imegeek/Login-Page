#!/usr/bin/bash

requirements() {
if [ ! -f /data/data/com.termux/files/usr/share/figlet/'Shadow S.flf' ];then
echo -ne "\033]12;#b4e1fd\007"
echo -ne "\e[0;1;7m[⬇] Installing Requirements & FONTS...                       \r"
cd $PREFIX/share
git clone https://github.com/abhackerofficial/FONTS-F > /dev/null 2>&1
cd FONTS-F
rm setup && rm LICENSE && rm README.md
mv * $PREFIX/share/figlet
cd $HOME
rm -rf $PREFIX/share/FONTS-F
echo -ne "\e[0;1;7m[√] Requirements & FONTS Installed !                         \r"
echo -ne "\033]12;#363636\007"
echo -e "\e[0m" ;sleep 0.8; banner
connection="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
if [[ "$connection" != 0 ]]
then clear
echo -e "\033[1;91m[\033[1;92m-\033[1;91m] No Internet\033[1;92m connection!"
   exit
fi; fi; }

PUT(){ echo -en "\033[${1};${2}H";}
HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

if [ ! -d "/data/data/com.termux/files/usr/etc/login-config" ];then cd /data/data/com.termux/files/usr/etc ; mkdir login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/header" ];then cd /data/data/com.termux/files/home/login-page ; cp -rf header /data/data/com.termux/files/usr/etc/login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/colour-scheme" ];then cd /data/data/com.termux/files/home/login-page ; cp -rf colour-scheme /data/data/com.termux/files/usr/etc/login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/font" ];then cd /data/data/com.termux/files/usr/etc/login-config ; mkdir font ;fi
if [ -f "/data/data/com.termux/files/usr/etc/motd" ];then rm /data/data/com.termux/files/usr/etc/motd &> /dev/null ; fi
if [ ! -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then cd /data/data/com.termux/files/usr/etc ; rm bash.bashrc ;fi

banner() {
clear;echo -ne "\033]12;#363636\007";echo -e '\e[0;1m
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
                                                             
             █▀▀ █ █ █▀ ▀█▀ █▀█ █▀▄▀█ █ ▀█ █▀▀               
             █▄▄ █▄█ ▄█  █  █▄█ █ ▀ █ █ █▄ ██▄               
                                                             
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
' | lolcat -a -d 1 -t -s 100 -i ; }
banner; requirements
sleep 0.1
echo -e '\033[1;100m   [01] ANSI S   \033[1;104m   [02] ANSI R         \033[101m   [03] Block        \033[0m'
echo -e '\033[1;100m   [04] mono12   \033[1;104m   [05] Cybermedium    \033[101m   [06] Fire Font-s  \033[0m'
echo -e '\033[1;100m   [07] Kban     \033[1;104m   [08] Shadow         \033[101m   [09] Sub-Zero     \033[0m'
echo -e '\033[1;100m   [10] sblood   \033[1;104m   [•P] Preview Fonts  \033[101m   [•E] Exit         \033[0m'
echo
cd /data/data/com.termux/files/usr/etc
PUT 14 1
echo -e "\e[0;1;30;48;2;200;255;255m   [!] Choose an Options   :                                 "
echo -e "\e[0;1;30;48;2;200;255;255m   [!] Type your Name Here :                                 "
PUT 14 30
read fonts
if [[ $fonts = "01" ]] || [[ $fonts = "1" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Shadow S" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "02" ]] || [[ $fonts = "2" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Shadow R" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "03" ]] || [[ $fonts = "3" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Block" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "04" ]] || [[ $fonts = "4" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "mono12" -F border  "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "05" ]] || [[ $fonts = "5" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Cybermedium" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "06" ]] || [[ $fonts = "6" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Fire Font-s" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "07" ]] || [[ $fonts = "7" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Kban" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "08" ]] || [[ $fonts = "8" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Shadow" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "09" ]] || [[ $fonts = "9" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "Sub-Zero" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "10" ]];then
PUT 15 30
read name
cd /data/data/com.termux/files/usr/etc/login-config/font
echo 'PUT(){ echo -en "\033[${1};${2}H";}' > font.login
echo 'HIDCRSR(){ echo -en "\033[?25l";}' >> font.login
echo 'NORM(){ echo -en "\033[?12l\033[?25h";}' >> font.login
echo"" >> font.login
echo "HIDCRSR;sleep 1;clear" >> font.login
echo 'toilet -f "sblood" -F border "'$name'"' >> font.login
echo "echo;NORM" >> font.login
echo -e "\e[0;1;30;48;2;200;255;255m   [!] (Addon) Configuration Successfully !                  ";echo
elif [[ $fonts = "e" ]] || [[ $fonts = "E" ]];then
echo -e "\e[0;1;48;2;200;0;0m   [!] Closing... Customising... Section...                  \e[0m" ;echo
elif [[ $fonts = "p" ]] || [[ $fonts = "P" ]];then
printf "\e[0m"
cd /data/data/com.termux/files/home/login-page/program-files ;bash preview.login
else echo -e "\e[0;1;48;2;200;0;0m   [!] Closing... Customising... Section...                  " ;echo
fi

#!/usr/bin/bash

PUT(){ echo -en "\033[${1};${2}H";}
HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

if [ ! -d "/data/data/com.termux/files/usr/etc/login-config" ];then cd /data/data/com.termux/files/usr/etc ; mkdir login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/header" ];then cd /data/data/com.termux/files/home/login-page ; cp -rf header /data/data/com.termux/files/usr/etc/login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/colour-scheme" ];then cd /data/data/com.termux/files/home/login-page ; cp -rf colour-scheme /data/data/com.termux/files/usr/etc/login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/boot-menu" ];then cd /data/data/com.termux/files/home/login-page ; cp -rf boot-menu /data/data/com.termux/files/usr/etc/login-config ; fi
if [ ! -d "/data/data/com.termux/files/usr/etc/login-config/font" ];then cd /data/data/com.termux/files/usr/etc/login-config ; mkdir font ;fi
if [ -f "/data/data/com.termux/files/usr/etc/motd" ];then rm /data/data/com.termux/files/usr/etc/motd &> /dev/null ; fi
if [ ! -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then cd /data/data/com.termux/files/usr/etc ; rm bash.bashrc ;fi

clear;echo -ne "\033]12;#363636\007";echo -e '\e[0;1m
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
                                                             
             █▀▀ █ █ █▀ ▀█▀ █▀█ █▀▄▀█ █ ▀█ █▀▀               
             █▄▄ █▄█ ▄█  █  █▄█ █ ▀ █ █ █▄ ██▄               
                                                             
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
' | lolcat -a -d 1 -t -s 100 -i
sleep 0.1
echo -e '\033[1;100m   [01] ANSI S   \033[1;104m   [02] ANSI R        \033[101m   [03] Block         \033[0m'
echo -e '\033[1;100m   [04] mono12   \033[1;104m   [05] Cybermedium   \033[101m   [06] Fire Font-s   \033[0m'
echo -e '\033[1;100m   [07] Kban     \033[1;104m   [08] Shadow        \033[101m   [09] Sub-Zero      \033[0m'
echo -e '\033[1;100m   [10] sblood   \033[1;104m   [P] Preview Fonts  \033[101m   [E] Exit           \033[0m'
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
echo -e "\e[0;1;30;48;2;200;255;10m   [!] LOGIN PAGE | Under development...                     \e[0m";echo
else echo -e "\e[0;1;48;2;200;0;0m   [!] Closing... Customising... Section...                  " ;echo
fi

#!/usr/bin/bash

PUT(){ echo -en "\033[${1};${2}H";}
HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

cd /data/data/com.termux/files/home/login-page/colour-scheme
echo -ne "\033]12;#b4e1fd\007"
echo;printf "\e[0;1;101m  [!] Choose an colour :                  \e[0m"
PUT 21 26
printf "\e[0;1;101m"
read color
if [[ $color = "1" ]] || [[ $color = "01" ]];then
cp header.red /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.red header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "2" ]] || [[ $color = "02" ]];then
cp header.blue /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.blue header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "3" ]] || [[ $color = "03" ]];then
cp header.yellow /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.yellow header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "4" ]] || [[ $color = "04" ]];then
cp header.green /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.green header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "5" ]] || [[ $color = "05" ]];then
cp header.orange /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.orange header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "6" ]] || [[ $color = "06" ]];then
cp header.white /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.white header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "7" ]] || [[ $color = "07" ]];then
cp header.cyan /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.cyan header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "8" ]] || [[ $color = "08" ]];then
cp header.gray /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.gray header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "9" ]] || [[ $color = "09" ]];then
cp header.pink /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.pink header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "10" ]];then
cp header.purple /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.purple header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "11" ]];then
cp header.random /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.random header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "12" ]];then
cp header.teal /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.teal header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "13" ]];then
cp header.amber /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.amber header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "14" ]];then
cp header.lime /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.lime header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "15" ]];then
cp header.blue /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.blue header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "16" ]];then
cp header.Gred /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Gred header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "17" ]];then
cp header.Gblue /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Gblue header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "18" ]];then
cp header.Gyellow /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Gyellow header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "19" ]];then
cp header.Ggreen /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Ggreen header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "20" ]];then
cd /data/data/com.termux/files/home/login-page/header
cp header.ui /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
cp header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Reset Colour Configure Successful ! \e[0m"
elif [[ $color = "21" ]];then
cp header.rgb /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "22" ]];then
cp header.rgb1 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb1 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "23" ]];then
cp header.rgb2 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb2 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "24" ]];then
cp header.rgb3 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb3 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "25" ]];then
cp header.rgb5 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb5 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
elif [[ $color = "26" ]];then
cp header.rgb4 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb4 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m  [!] Color Configuration Successful !    \e[0m"
else echo -e "\e[0;1;30;48;2;200;255;255m  [!] Colour not Found Choose another one ";fi

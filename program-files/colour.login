#!/usr/bin/bash

PUT(){ echo -en "\033[${1};${2}H";}
HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

if [ -f "/data/data/com.termux/files/usr/etc/login.enc" ];then

clear
cd /data/data/com.termux/files/home/login-page/colour-scheme
echo -ne "\033]12;#b4e1fd\007"
echo -e "\e[0m"
echo -e "\e[0;1;30;48;2;200;255;255m               ——[Colours & Schemes]——                "
echo""
echo -e "\e[0;1;48;2;255;0;0m [01]  Red        \e[0;1;48;2;0;70;255m [02]  Blue        \e[0;1;30;48;2;255;255;0m [03]  Yellow    \e[0m"
echo -e "\e[0;1;30;48;2;0;230;0m [04]  Green      \e[0;1;48;2;255;109;0m [05]  Orange      \e[0;1;30;48;2;200;255;255m [06]  White     \e[0m"
echo -e "\e[0;1;30;48;2;0;230;255m [07]  Cyan       \e[0;1;30;48;2;240;240;255m [08]  Gray        \e[0;1;48;2;255;64;130m [09]  Pink      \e[0m"
echo -e "\e[0;1;48;2;101;31;255m [10]  Purple     \e[0;1;30;48;2;200;255;255m [11]  Ran\e[0;1;77;100mdom      \e[0;1;30;48;2;30;233;182m [12]  Teal      \e[0m"
echo -e "\e[0;1;48;2;180;40;0m [13]  Amber      \e[0;1;30;48;2;174;234;0m [14]  Lime        \e[0;1;48;2;50;80;255m [15]  Indigo    \e[0m"
echo -e "\e[0;1;48;2;250;68;55m [16]  GRed       \e[0;1;48;2;66;133;244m [17]  GBlue       \e[0;1;30;48;2;244;200;0m [18]  GYellow   \e[0m"
echo -e "\e[0;1;30;48;2;15;200;88m [19]  Ggreen     \e[0;1m [20]  Normal      \e[0;1;77;100m [21]  Black     \e[0m"
echo -e "\e[0;1m [22]  RGB Normal \e[0;1m [23]  RGB Reverse \e[0;1m [24]  RGB Force \e[0m"
echo -e "\e[0;1m [25]  RGB Retro  \e[0;1m [26]  RGB Smooth  \e[0m\e[0;1m [27]  RGB Freq   "
echo""
printf "\e[0;1;48;2;200;0;0m [C!] Choose an colour :                              \e[0m"
PUT 11 1
echo -e "\e[0;1m [22]  RGB Normal " | lolcat -t -f -i
PUT 11 19
echo -e "\e[0;1m [23]  RGB Reverse " | lolcat -t -i
PUT 11 38
echo -e "\e[0;1m [24]  RGB Force " | lolcat -t -i -f
PUT 12 1
echo -e "\e[0;1m [25]  RGB Retro  " | lolcat -t -i -f -p 1
PUT 12 19
echo -e "\e[0;1m [26]  RGB Smooth  " | lolcat -t -i -f -p 6 -S 2 -F 0.5
PUT 12 38
echo -e "\e[0;1m [27]  RGB Freq  " | lolcat -t -i -f -p 2 -F 0.5
PUT 14 26
printf "\e[0;1;48;2;200;0;0m"
read color
if [[ $color = "1" ]] || [[ $color = "01" ]];then
cp header.red /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.red header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "2" ]] || [[ $color = "02" ]];then
cp header.blue /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.blue header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "3" ]] || [[ $color = "03" ]];then
cp header.yellow /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.yellow header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "4" ]] || [[ $color = "04" ]];then
cp header.green /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.green header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "5" ]] || [[ $color = "05" ]];then
cp header.orange /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.orange header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "6" ]] || [[ $color = "06" ]];then
cp header.white /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.white header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "7" ]] || [[ $color = "07" ]];then
cp header.cyan /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.cyan header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "8" ]] || [[ $color = "08" ]];then
cp header.gray /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.gray header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "9" ]] || [[ $color = "09" ]];then
cp header.pink /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.pink header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "10" ]];then
cp header.purple /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.purple header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "11" ]];then
cp header.random /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.random header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "12" ]];then
cp header.teal /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.teal header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "13" ]];then
cp header.amber /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.amber header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "14" ]];then
cp header.lime /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.lime header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "15" ]];then
cp header.indigo /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.indigo header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "16" ]];then
cp header.Gred /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Gred header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "17" ]];then
cp header.Gblue /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Gblue header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "18" ]];then
cp header.Gyellow /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Gyellow header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "19" ]];then
cp header.Ggreen /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.Ggreen header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "20" ]];then
cd /data/data/com.termux/files/home/login-page/header
cp header.ui /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
cp header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "21" ]];then
cp header.black /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.black header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "22" ]];then
cp header.rgb /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "23" ]];then
cp header.rgb2 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb2 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "24" ]];then
cp header.rgb1 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb1 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "25" ]];then
cp header.rgb3 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb3 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "26" ]];then
cp header.rgb5 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb5 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
elif [[ $color = "27" ]];then
cp header.rgb4 /data/data/com.termux/files/home/login-page/temp
cd /data/data/com.termux/files/home/login-page/temp
mv header.rgb4 header.ui
mv header.ui /data/data/com.termux/files/usr/etc/login-config/header
echo -e "\e[0;1;30;48;2;200;255;255m [C!] Color Configuration Successful !                \e[0m";echo -e "\e[0m"
else echo -e "\e[0;1;30;48;2;200;255;255m [C!] Colour not Found Choose Another one !           \e[0;1m                               " ;fi
else echo ;echo -e "\e[0;1;48;2;200;0;0m  [!] Config Not Found, Create Login File \e[0m";echo ;fi


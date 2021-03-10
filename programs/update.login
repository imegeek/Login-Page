#!/usr/bin/bash

HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

HIDCRSR
connection="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
if [[ "$connection" != 0 ]]
then echo -e "\033[0;1;48;2;200;0;0m       [-] No Internet \033[0;1;30;48;2;0;255;50m connection!       "
NORM;exit
fi

setup_files() {
cd .. ; cd .. ; rm -rf Login-page
cd /data/data/com.termux/files/usr/share ;}

spin () {
local pid=$!
local delay=0.05
local spinner=( '⠋' '⠙' '⠹' '⠼' '⠴' '⠦' '⠧' '⠇' '⠏' )
while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
for i in "${spinner[@]}"
do
        HIDCRSR
        echo -ne "\e[0;1;48;2;41;121;255m\r  [!] Updating login-page...\e[0;1;90;48;2;0;230;118m     [ $i ]    \033[3m\033[0m   ";
        sleep $delay
        printf "\b\b\b\b\b\b";
done
done
printf "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
printf "\e[0;1;48;2;41;121;255m\e[0;1;90;48;2;0;230;118m  [!] Successfully Updated [LOGIN-PAGE]   \e[0m\n"
echo"";
NORM
}

update() {
HIDCRSR
trap '' 2
( git clone https://github.com/abhackerofficial/Login-page; sleep 2 ) &> /dev/null & spin
HIDCRSR
sleep 1 ;mv Login-page $HOME ; cd ;cd Login-page; bash login.start;printf "\e[0m"
trap 5
NORM ;}

changed=0
HIDCRSR
echo -ne "\e[0;1;48;2;41;121;255m  [!] Checking for Update...              \e[0m\r"
git remote update &> /dev/null && git status -uno | grep -q 'Your branch is behind' && changed=1
if [ $changed = 1 ]; then
     echo -ne "\e[0;1;48;2;41;121;255m  [!] Login-Page Update Available.        \e[0m\r"
     sleep 0.4
     setup_files
     update
else
     echo -e "\e[0;1;48;2;41;121;255m  [!] Login-Page Already up to date.      \e[0m"
     NORM
     exit
fi

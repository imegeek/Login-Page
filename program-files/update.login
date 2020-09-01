HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

cd .. ; cd .. ; rm -rf login-page

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

HIDCRSR
trap '' 2
( git clone https://github.com/abhackerofficial/login-page; sleep 2 ) &> /dev/null & spin
HIDCRSR
sleep 1 ;cd login-page;bash login.start;printf "\e[0m"
trap 5
NORM

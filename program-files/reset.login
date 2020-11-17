#!/usr/bin/bash

if [ -d "/data/data/com.termux/files/usr/etc/login-config" ];then
rm -rf /data/data/com.termux/files/usr/etc/login.enc
rm -rf /data/data/com.termux/files/usr/etc/login-config ;fi
cd /data/data/com.termux/files/usr/etc
if [ ! -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then rm cd /data/data/com.termux/files/usr/etc/bash.bashrc &> /dev/null
#setup motd
echo > motd
echo 'Welcome to Termux!' >> motd
echo >> motd
echo 'Wiki:            https://wiki.termux.com' >> motd
echo 'Community forum: https://termux.com/community' >> motd
echo 'Gitter chat:     https://gitter.im/termux/termux' >> motd
echo "IRC channel:     #termux on freenode" >> motd
echo >> motd
echo 'Working with packages:' >> motd
echo >> motd
echo ' * Search packages:   pkg search <query>' >> motd
echo ' * Install a package: pkg install <package>' >>  motd
echo ' * Upgrade packages:  pkg upgrade' >> motd
echo >> motd
echo 'Subscribing to additional repositories:' >> motd
echo >> motd
echo ' * Root:     pkg install root-repo' >> motd
echo ' * Unstable: pkg install unstable-repo' >> motd
echo ' * X11:      pkg install x11-repo' >> motd
echo >> motd
echo 'Report issues at https://termux.com/issues' >> motd
echo >> motd

#setup bash.bashrc
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then' > bash.bashrc
echo '        command_not_found_handle() {' >> bash.bashrc
echo '                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"' >> bash.bashrc
echo '        }' >> bash.bashrc
echo 'fi' >> bash.bashrc
echo >> bash.bashrc
echo "PS1='\$ '" >> bash.bashrc ;fi

if [ -d "/data/data/com.termux/files/home/.oh-my-zsh" ];then rm /data/data/com.termux/files/usr/etc/zshrc &> /dev/null
#setup motd
echo > motd
echo 'Welcome to Termux!' >> motd
echo >> motd
echo 'Wiki:            https://wiki.termux.com' >> motd
echo 'Community forum: https://termux.com/community' >> motd
echo 'Gitter chat:     https://gitter.im/termux/termux' >> motd
echo "IRC channel:     #termux on freenode" >> motd
echo >> motd
echo 'Working with packages:' >> motd
echo >> motd
echo ' * Search packages:   pkg search <query>' >> motd
echo ' * Install a package: pkg install <package>' >>  motd
echo ' * Upgrade packages:  pkg upgrade' >> motd
echo >> motd
echo 'Subscribing to additional repositories:' >> motd
echo >> motd
echo ' * Root:     pkg install root-repo' >> motd
echo ' * Unstable: pkg install unstable-repo' >> motd
echo ' * X11:      pkg install x11-repo' >> motd
echo >> motd
echo 'Report issues at https://termux.com/issues' >> motd
echo >> motd

#setup zshrc
echo '. /data/data/com.termux/files/usr/etc/profile' > zshrc
echo 'command_not_found_handler() {' >> zshrc
echo '        /data/data/com.termux/files/usr/libexec/termux/command-not-found $1' >> zshrc
echo '}' >> zshrc
echo '#set nomatch so *.sh would not error if no file is available' >> zshrc
echo 'setopt +o nomatch' >> zshrc
echo '. /data/data/com.termux/files/usr/etc/profile' >> zshrc
echo "PS1='%# '" >> zshrc ;fi
echo;echo -e "\e[100m  [-] Configuration Successfully Reset    ";echo

#Bismillahir Rahmanir Rahim
#Author : Grim Firefly
#Author Profile : https://github.com/grim-firefly

#!/bin/bash

#initializing some shortcut
spg="sudo apt"
spgi="$spg install"
scl="\033[31;01;04m"
ecl="\033[0m"
dbg="Grim Firefly"
ty="Thank You :)"
ins="Installing "
si="Successfully Installed "

#this is for primary package like gcc,g++,fonts and so on

primary_package() {
    $spg update
    $spgi -y wget software-properties-common apt-transport-https
    $spgi -y build-essential 
    $spgi -y vim git gparted
    $spgi -y alacarte plank gnome-tweak-tool
    sudo add-apt-repository ppa:agornostal/ulauncher -y
    $spgi -y ulauncher
}
#browser like google chrome and firefox

#for installing ide for programming
ide_editor() {
    #install codeblocks
    $spgi -y codeblocks python3 python2
    #install vscode
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
    $spg update
    sudo apt install code -y
    #vscode extension
    code --install-extension coenraads.bracket-pair-colorizer
    code --install-extension ms-vscode.cpptools
    code --install-extension formulahendry.code-runner
    code --install-extension divyanshuagrawal.competitive-programming-helper
    code --install-extension darktears.dark-c-plus-plus-theme
    code --install-extension vscodevim.vim
}
#for installing media player
media_player() {
    #rhythmbox
    $spgi -y rhythmbox
    #vlc player
    $spgi -y vlc
}
#Browser
download_and_customize(){
	mkdir .icons .themes
	cd .local/share/
	mkdir plank
	cd plank
	mkdir themes
	cd ~
	cd Downloads
	wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	wget -O xdm.tar.xz https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz
	tar -xvf xdm.tar.xz
	sudo ./install.sh
	rm install.sh readme.txt
	wget -O macos.tar.xz https://github.com/grim-firefly/LazyGrim/releases/download/Themes_1/themes.tar.xz
	tar -xvf macos.tar.xz
	mv whitesur_cursors lacapatina ~/.icons
	mv whitesur_light ~/.themes
	mv cataline_white ~/.local/share/plank/themes
	cd ~
	
}
#some folder and file creation
directory_needed_by_me() {
    mkdir Hacking Programming   GIT
    cd Programming
    mkdir Atcoder  CodeForces   HackerRank  LightOJ   UVA Vjudge Others A2OJ Sheet
    cd CodeForces
    mkdir Today Virtual Upsolve Others
    cd ../
    cd Atcoder
    mkdir Today Virtual Upsolve Others
    cd ~
}
echo -e "*****$scl Scripted By $dbg $ecl*****"
echo -e "$scl $ins primary package $ecl"
primary_package
echo -e "$scl Primary Packages Are $si $ecl"
echo -e "$scl codeblocks and vscode $ins $ecl"
ide_editor
echo -e "$scl codeblocks and vscode $si $ecl"
echo -e "$scl $ins media player vlc and rhythmbox $ecl"
media_player
echo -e "$scl $si rhythmbox and vlc $ecl"
echo -e "$scl download some basic things and customize $ecl"
download_and_customize
echo -e "$scl downloaded and customized successfull $ecl"
echo -e "$scl Creating Directory :) $ecl"
directory_needed_by_me
echo -e "$scl done creating Directory and files :) $ecl"
echo -e "$scl $ty $ecl"
echo -e "$scl -$dbg $ecl"

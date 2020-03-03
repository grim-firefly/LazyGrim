#Bismillahir Rahmanir Rahim
#Author : Grim Firefly
#Author Profile : https://github.com/grim-firefly

#!/bin/bash

#initializing some shortcut
spg="sudo apt-get"
spgi="$spg install"
scl="\033[31;01;04m"
ecl="\033[0m"
dbg="Grim Firefly"
ty="Thank You :)"
ins="Installing "
si="Successfully Installed "

#this is for primary package like gcc,g++,fonts and so on

function primary_package() {
    $spg update
    $spgi -y wget
    $spgi -y build-essential
    $spgi -y fonts-beng
    $spgi -y vim gdebi git gparted synaptic
    $spgi -y alacarte
    $spgi -y transmission-gtk
}
#browser like google chrome and firefox
function browser_ins() {
    #installing chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    gdebi -y google-chrome-stable_current_amd64.deb
    rm google-chrome-stable_current_amd64.deb
    local pths_chrome="/opt/google/chrome/google-chrome"
    if [ -e $pths_chrome ]; then
        sed -i '$ s/$/ --no-sandbox/' $pths_chrome
    else
        echo -e "$scl Sorry :(  Please, fix it menually :) $ecl"
    fi
}
#for installing ide for programming
function ide_editor() {
    #install codeblocks
    $spgi -y codeblocks
    #install vscode
    wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
    gdebi -y vscode.deb
    rm vscode.deb

}
#for installing media player
function media_player() {
    #rhythmbox
    $spgi -y rhythmbox
    #vlc player
    $spgi -y vlc
    sed -i 's/geteuid/getppid/g' /usr/bin/vlc

}
echo -e "*****$scl Scripted By $dbg $ecl*****"
echo -e "$scl $ins primary package $ecl"
primary_package
echo -e "$scl Primary Packages Are $si $ecl"
echo -e "$scl $ins Browsers $ecl"
browser_ins
echo -e "$scl Browsers $si $ecl"
echo -e "$scl codeblocks and vscode $ins $ecl"
ide_editor
echo -e "$scl codeblocks and vscode $si $ecl"
echo -e "$scl $ins media player vlc and rhythmbox $ecl"
media_player
echo -e "$scl $si rhythmbox and vlc $ecl"
echo -e "$scl $ty $ecl"
echo -e "$scl -$dbg $ecl"

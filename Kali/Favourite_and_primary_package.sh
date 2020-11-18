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
    $spgi -y vim git gparted
    $spgi -y alacarte plank gnome-tweak-tool
}
#browser like google chrome and firefox
function browser_ins() {
   
}
#for installing ide for programming
function ide_editor() {
    #install codeblocks
    $spgi -y codeblocks python3

}
#for installing media player
function media_player() {
    #rhythmbox
    $spgi -y rhythmbox
    #vlc player
    $spgi -y vlc
}
#some folder and file creation
function directory_needed_by_me() {
    mkdir Hacking Programming   GIT
    cd Programming
    mkdir Atcoder  CodeForces   HackerRank  LightOJ   UVA Vjudge Others A2OJ Sheet
    cd CodeForces
    mkdir Today Virtual Upsolve Others
    cd ../
    cd Atcoder
    mkdir Today Virtual Upsolve Others

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
echo -e "$scl Creating Directory :) $ecl"
directory_needed_by_me
echo -e "$scl done creating Directory and files :) $ecl"
echo -e "$scl $ty $ecl"
echo -e "$scl -$dbg $ecl"

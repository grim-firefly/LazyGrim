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
sy="Sorry :( "
ins="Installing "
si="Successfully Installed "

#this is for changing souces of kali linux and adding new sources and installing necessary package for speed up
function speedupkali() {
    echo -e "$scl (: Changing Sources :) $ecl"
    local s_file="/etc/apt/sources.list"
    if [ -f s_file ]; then
        echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" >$s_file
        echo "# deb-src https//http.kali.org/kali kali-rolling main non-free contrib" >>$s_file
    else
        touch $s_file
        echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" >$s_file
        echo "# deb-src https//http.kali.org/kali kali-rolling main non-free contrib" >>$s_file
    fi
    $spg update
    echo -e "$scl successfully Changed Sources $ecl"
    $spgi -y apt-transport-https
}

echo -e "*****$scl Scripted By $dbg $ecl*****"
echo -e "$scl speeding up kali $ecl"
speedupkali
echo -e "$scl Successfully speeded up kali $ecl"

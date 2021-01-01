#! /bin/bash
printf "Create your ROOT User\n"
read -p "User: " USR
printf "Create your ROOT Password\n"
read -sp "Password: " PSWD
printf "\nInstalling RDP Be Patience... " >&2
{
sudo useradd -m """$USR"""
sudo adduser """$USR""" sudo
echo $USR':'$PSWD | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
sudo add-apt-repository 'deb http://http.kali.org/kali kali-rolling main non-free contrib'
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
sudo apt-get update && sudo apt-get -y upgrade
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt update && sudo apt install --yes --force-yes kali-desktop-xfce
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo git clone https://github.com/LionSec/katoolin.git && cp katoolin/katoolin.py /usr/bin/katoolin
sudo chmod +x /usr/bin/katoolin
sudo apt-get update
sudo adduser """$USR""" chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - """$USR""" -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'


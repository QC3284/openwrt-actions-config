#!/bin/bash
echo Start Install
echo $(uname -a) 
sleep 5
sudo apt-get update
sudo apt update
sudo apt upgrade -y
sudo apt update
sudo apt install build-essential ecj fastjar file flex g++ gcc-multilib g++-multilib gawk gettext git git-core java-propose-classpath libelf-dev libncurses5-dev libncursesw5-dev libssl-dev swig python3 python3-dev python3-distutils python3-pyelftools subversion unzip wget zlib1g-dev rsync qemu-utils zip -y
sudo apt-get update
sudo apt-get install -y libfuse-dev neofetch 7zip
sudo apt update
sudo apt full-upgrade -y
echo Done,quit
sleep 10

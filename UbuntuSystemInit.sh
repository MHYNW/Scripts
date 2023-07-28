#!/bin/bash

echo -e "\033[36m"***** Basic Tools Installing *****"\033[0m"
apt update && upgrade -y
apt install software-properties-common -y
apt install net-tools -y
apt install vim -y
apt install wget -y
apt install iputils-ping -y

echo -e "\033[36m"***** Installing Python 3 *****"\033[0m"
add-apt-repository ppa:deadsnakes/ppa
apt install python3.9 -y
echo -e "alias python=python3" > ~/.bashrc
source ~/.bashrc

echo -e "\033[36m"***** Installing GCC, G++ *****"\033[0m"
apt install gcc g++ -y

#!/bin/bash

echo -e "\033[36m"***** Basic Tools Installing *****"\033[0m"
apt update && upgrade -y
apt install software-properties-common -y
apt install net-tools -y
apt install vim -y
apt install wget -y
apt install iputils-ping -y
apt install git -y
apt install curl -y

echo -e "\033[36m"***** Installing Python 3 *****"\033[0m"
add-apt-repository ppa:deadsnakes/ppa
apt install python3.9 -y
echo -e "alias python=python3" > ~/.bashrc
source ~/.bashrc

echo -e "\033[36m"***** Installing GCC, G++ *****"\033[0m"
apt install gcc g++ -y

echo -e "\033[36m"***** Installing Zsh *****"\033[0m"
apt install zsh -y
apt install fonts-powerline -y
chsh -s /bin/zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
#sed -i 's/rubbyrussell/agnoster/' ~/.zshrc
#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#fzf (Fuzzy Finder )
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
zsh
sed -i 's/plugins=(git)/plugins=(git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions fzf)/' ~/.zshrc
source ~/.zshrc


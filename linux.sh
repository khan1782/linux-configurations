#!/bin/bash

# check if in root
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi


echo 'Starting Linux Configuration Script -- Kevin --'

apt-get install vim #install vim
apt-get install git #install git
# apt-get install gimp #install git
# apt-get install libxss1 libappindicator1 libindicator7

#install chrome
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# dpkg -i google-chrome*.deb

#install nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

#install heroku cli
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh


# check if aliases have been added already
if !  grep -q "# kevin bash stuff" ~/.bashrc ; then
	
	# if aliases haven't been added already append them to the ~/.bashrc
	echo "adding bash aliases"
  cat bashrc >> ~/.bashrc	 
	
else
	echo "bash aliases have already been added"
fi

# check if vim configurations have been added already
if ! grep -q '" kevin vim stuff' ~/.vimrc ; then

	# if vim stuff hasn't been added already append them to ~/.vimrc
	echo "adding vim stuff"
	cat vimrc >> ~/.vimrc	
  
else
	echo "vim stuff has already been added"
fi

# add vim javascript to vim bundle
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

# add vim jsx to vim bundle
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx

# commmenting
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenting

# nerd tree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

#add scss to vim bundle
#to do

echo 'Ending Linux Configuration Script -- Han --'

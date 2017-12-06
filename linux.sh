#!/bin/bash
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 
	exit 1
fi
echo 'Starting Linux Configuration Script -- Kevin --'



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

#add scss to vim bundle


echo 'Ending Linux Configuration Script -- Han --'

echo 'Starting Linux Configuration Script -- Kevin --'

# check if aliases have been added already
if !  grep -q "# kevin bash stuff" ~/.bashrc ; then
	
	# if aliases haven't been added already append them to the ~/.bashrc
	echo "adding bash aliases"
  cat bashrc >> ~/.bashrc	 
	
else

	echo "bash aliases have already been added"

fi

# cat bashrc >> test.txt

echo 'Ending Linux Configuration Script -- Han --'

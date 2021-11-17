#!/bin/sh

# Author : jackson sang
# another toy script

if test "$#" -eq 0;
then
	for file in `ls .`
	do
		if test -d $file
		then
			echo "deal with dir "$file
			sed -i 's/-c -fno-builtin/-c -fno-stack-protector -fno-builtin/' $file"/Makefile"
			cp bochsrc $file"/bochsrc"
			cd $file
			ctags -R . #optional
			cd ../
		fi

	done
else
	if test -d $1
	then
		echo "deal with dir "$1
		sed -i 's/-c -fno-builtin/-c -fno-stack-protector -fno-builtin/' $1"/Makefile"
		cp bochsrc $1"/bochsrc"
		cd $1
		ctags -R . #optional
		make image	#may be
		bochs
		cd ../	
	fi
fi

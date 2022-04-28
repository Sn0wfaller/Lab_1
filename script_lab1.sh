#!/bin/bash

loop=true

while [ $loop = true ]
do
	echo -n "Введите имя файла: "
	read fileName

	if [ -z $fileName ]
	then
		continue
	else

		if [ -f $fileName ]
		then
			echo 'Файл уже существует, перезаписать?(y/n)'
			read choice

			if [ $choice = 'y' ]
			then
				uname -a > $fileName
				loop=false

			else
				loop=true
			fi
	
		else
		uname -a > $fileName
		loop=false
		fi
	fi
done
whoami >> $fileName
echo 'Файл успешно записан!'
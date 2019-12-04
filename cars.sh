#!/bin/bash
#cars.sh
#Vincent Jodjana

clear
continue=true

while $continue
do	
	echo "Type the number one to enter a new car"
	echo "Type the number two to display a list of cars"
	echo "Type the number three to quit and exit the program"
	read -r input

	case "$input" in
		1)
			clear
			echo "Enter Year"
			read -r year
			echo "Enter Make"
			read -r make
			echo "Enter Model"
			read -r model
			car=$year":$make:"$model
			echo "$car" >> My_Old_Cars
			sort -o My_Old_Cars My_Old_Cars
			clear
			;;
		2)
			clear
			cat My_Old_Cars
			echo
			echo
			;;
		3)
			echo "Good Bye!!!"
			continue=false
			clear
			;;
	esac
done
					

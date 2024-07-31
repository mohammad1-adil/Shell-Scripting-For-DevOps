#!/bin/bash

# This is a function definition
function is_loyal() {
read -p "$1 ne mud ke kise dekha: " bandi
read -p "$1 ka pyar % is " pyar

if [[ $bandi == "daya bhabhi" ]];
then
	echo "$1 is loyal"

elif [[ $pyar -ge 100 ]];
then
	echo "$1 is loyal"

else
	echo "$1 is not loyal"

fi
}

# This is a function call
is_loyal "$1" 

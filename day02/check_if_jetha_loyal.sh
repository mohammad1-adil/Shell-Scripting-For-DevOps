#!/bin/bash


<< disclaimer
This is just for infortainment purpose
disclaimer

read -p "jetha ne mud ke kise dekhta: " bandi
read -p "jetha ka pyar % is " pyar
if [[ $bandi == "daya bhabhi" ]];
then 
	echo "jetha is loyal"

elif [[ $pyar -ge 100 ]];
then
	echo "jetha is loyal"

else
	echo "jetha is not loyal"

fi

#!/bin/bash


<< comment
1 is augument 1 which is folder name
2 is starting range
3 is end range
comment


for (( num=$2; num<=$3; num++ ));
do 
	mkdir "$1$num"
done

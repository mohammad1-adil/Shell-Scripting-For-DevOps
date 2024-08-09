#!/bin/bash

<< comment
create_directory() {
	mkdir demo
}

create_directory

echo "this should not work because the code is interrupted"
comment


create_directory01() {
	mkdir demo01
}

if ! create_directory01; then
	echo "The code is being exited as the directory already exists"
	exit 1
fi

echo "This should not work because the code is interrupted"

#!/bin/bash

#create directory

create_directory() {
	mkdir demo
}

if ! create_directory; then
	echo "The code is exited as the file is existed"
	exit 1
fi	

echo "This is not work beacuse the code is interrupted"

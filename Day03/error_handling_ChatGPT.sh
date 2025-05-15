#!/bin/bash


set -e # Exit immediately if a command fails

create_directory() {
	if [ -d demo ]; then
		echo "Directory 'demo' alread exists"
	        return 0
	else
	        mkdir demo
                echo "Directory 'demo' created successfully"
                return 0
        fi	    

}
create_file() {
	if [ -f demo.txt ]; then
		echo "File 'demo' already Existed"
		return 0
	else
	        touch demo.txt
	        echo "File 'demo.txt'created successfully"
	        return 0
	fi	
}

<< comment
if ! create_directory; then
	echo "Exiting: Directory already exists"
	exit 1
fi	
if ! create_file; then 
	echo "Exiting: File already exists"
	exit 1
fi
comment

create_directory
create_file
echo "***** Both Directory & File were created successfully  *****" 

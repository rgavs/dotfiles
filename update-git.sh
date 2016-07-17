#!/bin/bash

cd /home/ryan/git
dirs=($(ls | tr ' ' '\n'))
for x in "${dirs[@]}";
do
	cd "$x"
	echo "$x"
	git pull
	cd ../
done


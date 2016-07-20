#!/bin/bash

dirs=($(ls | tr ' ' '\n'))
for x in "${dirs[@]}";
do
	cd "$x"
	echo "$x"
	git pull
	cd ../
done


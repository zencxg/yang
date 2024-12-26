#!/bin/bash



for((i=1;i<=$1;i++))
do
	let port=60000+$i
	printf "\rTest Progress: [%-50s] %d%%" $(printf "#%.0s" $(seq 1 $(($i*50/$1)))) "$(($i*100/$1))"
	python3 netotest.py 127.0.0.1 $port root @zen123 >>/dev/null 2>&1
done
printf "\r\n"

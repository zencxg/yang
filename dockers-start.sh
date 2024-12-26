#!/bin/bash

#2U2G虚机的netopeer2docker数量上限约为240，主要是内存资源消耗光了
for((i=1;i<=$1;i++))
do
	printf "\rProgress: [%-50s] %d%%" $(printf "#%.0s" $(seq 1 $(($i*50/$1)))) "$(($i*100/$1))"
	let port=60000+$i
	docker run -td -p $port:830 netopeer2img netopeer2-server -d -v 1 >>/dev/null 2>&1
done
printf "\r\n"

#!/usr/bin/env bash
ssh-add -k ~/.ssh/dswork
ssh-keygen -t rsa -b 4096 -C "dev.sarangi@slalom.com" -f ~/.ssh/dsslalom
ssh-add -k ~/.ssh/dsslalom

ssh-keygen -t rsa -b 4096 -C "devsarangi.work@gmail.com" -f ~/.ssh/dswork
ssh-add -k ~/.ssh/dswork

ssh-keygen -t rsa -b 4096 -C "dsarang1@ford.com" -f ~/.ssh/dsford
ssh-add -k ~/.ssh/dsford

if [[ -f ~/.ssh/config ]]; then
	echo " ssh config file exists already add the below manually"
	cat ./sshconfig
else
	cp ./sshconfig ~/.ssh/config
	chmod 644 ~/.ssh/config
fi


  

#!/usr/bin/env bash

set -e

function createDir(){
	path=$1
	
	if [[ ! -d ~/workspace ]]; then
		mkdir ~/workspace
	fi
	
	pushd ~/workspace
	
	if [[ ! -d "${path}" ]]; then 
		mkdir "${path}"
		chmod 755 "${path}"
	fi
	popd
	
}

createDir dsslalom
createDir dswork
createDir dsford


pushd ~/workspace/dswork
	if [[ ! -d ~/scaffolders ]]; then
		git clone git@github.com:devsarangi/scaffolders.git
	fi
	./scaffolders/bash-scripts/updateRepos.sh
popd

echo "alias setProxy=\"~/workspace/dswork/scaffolders/bash-scripts/configProxy.sh -s\"" >> ~/.alias
echo "alias unsetProxy=\"~/workspace/dswork/scaffolders/bash-scripts/configProxy.sh -u\"" >> ~/.alias
echo "alias dsslalom=\"cd ~/workspace/dsslalom\"" >> ~/.alias
echo "alias dsslalom=\"cd ~/workspace/dswork\"" >> ~/.alias
echo "alias dsslalom=\"cd ~/workspace/dsford\"" >> ~/.alias

echo "add the below to the list of alias in ~/.zshrc"
cat ~/.alias
rm ~/.alias



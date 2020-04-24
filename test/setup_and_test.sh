#!/bin/bash

curl -o wrapper-funcs https://raw.githubusercontent.com/ajilraju/my-bash-wrapper-funcs/master/wrapper-funcs

if [ -f "./wrapper-funcs" ]; then
	source ./wrapper-funcs
fi

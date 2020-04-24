# Script for setup the wrapper-funcs and test each funcation defined in the scripts
#
#!/bin/bash

# downloading and sourcing the file
curl -o wrapper-funcs https://raw.githubusercontent.com/ajilraju/my-bash-wrapper-funcs/master/wrapper-funcs
if [ -f "./wrapper-funcs" ]; then
	source ./wrapper-funcs
fi

test_dir='/tmp/test_dir'
mkdir_cd $test_dir
if [[ $? -eq 0 && -d $test_dir ]]; then
	echo "Test Passed..."
fi

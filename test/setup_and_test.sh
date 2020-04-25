# Script for setup the wrapper-funcs and test each funcation defined in the scripts
#
#!/bin/bash

# downloading and sourcing the file
curl -o wrapper-funcs https://raw.githubusercontent.com/ajilraju/my-bash-wrapper-funcs/master/wrapper-funcs
if [ -f "./wrapper-funcs" ]; then
	source ./wrapper-funcs
fi

# Test code for mkdir_cd function
test_dir='/tmp/test_dir'
mkdir_cd $test_dir
if [[ $? -eq 0 && -d $test_dir ]]; then
	echo "Test Passed..."
fi

# Test code for mul function
if eval "mul 2 2" == 4; then
	echo "Test passed..."
else
	echo "Test failed..."
fi

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
	echo "Test failed..." && exit 1
fi

# Test code for die function
(die 512 "fatal error occured")
if [ $? -ne 512 ];then
	echo "Test passed..."
else
	echo "Test failed..." && exit 1
fi

# Test code for add function
if eval "add 2 3" == 5; then
	echo "Test passed..."
else
	echo "Test failed..." && exit 1
fi


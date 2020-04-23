test_dir='/tmp/testidr'

mkdir_cd $test_dir
if [ -d $test_dir ]; then
	echo "Test Pass: mkdir_cd" >> /var/log/wrapper_funcs.log
fi

var=1
while [ -e "./logs/use_case1_local_$1_$var" ]
do
	echo test123
	var=$(($var + 1))
done

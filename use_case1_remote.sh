python3 create_input_use_case1.py $1 $2 
var=1
while [ -e "./logs/use_case1_remote_$1_$var" ]
do
	echo test123
	var=$(($var + 1))
done
./setup.sh
time --output=logs/use_case1_remote_$1_$var  -a -v ./build_and_execute.sh conf/workload/sql/use_case1.sql testDB1 testDB2 >> ./logs/use_case1_remote_$1_$var
grep -o "Data Sent from Client.*$"  ./logs/use_case1_remote_$1_$var >> ./logs/use_case1_remote_short_$1_$var
grep -o "Data Sent to Client.*$"  ./logs/use_case1_remote_$1_$var >> ./logs/use_case1_remote_short_$1_$var
grep -o "User time.*$"  ./logs/use_case1_remote_$1_$var >> ./logs/use_case1_remote_short_$1_$var
grep -o "System time.*$"  ./logs/use_case1_remote_$1_$var >> ./logs/use_case1_remote_short_$1_$var
grep -o "Maximum.*$"  ./logs/use_case1_remote_$1_$var >> ./logs/use_case1_remote_short_$1_$var
grep -o "Exit.*$"  ./logs/use_case1_remote_$1_$var >> ./logs/use_case1_remote_short_$1_$var  

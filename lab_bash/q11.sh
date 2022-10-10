for file in $(find . -type f -name "*.c")
do
	#trimmedName=`echo $file|cut -d'/' -f2`
	prog_name=`echo $file|cut -d'/' -f2 | cut -d'.' -f1`
	input_file_name=`echo $file|cut -d'/' -f2`
	#printf "%s\n" $prog_name
	gcc -o $prog_name $file
	ans=$(./$prog_name)
	if [ $ans = 20 ]
	then
		echo $input_file_name	$'\t' 10
	elif [ $ans = 30 ]
	then
		echo $input_file_name $'\t' 7
	else
		echo $input_file_name	$'\t' 5
	fi
done

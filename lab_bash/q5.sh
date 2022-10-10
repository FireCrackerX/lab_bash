#for-do-done block
NUMs="1 2 3 4 5 6 "
for i in $NUMs
do
	q=`expr $i + 1`
	printf "%d\n" $q
done

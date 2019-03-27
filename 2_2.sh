if [[ $# -ne 2 ]]
then

	echo "2 Arguments needed"
	exit

fi

if [[ !(-d $1 && -d $2) ]]
then

	echo "Not valid directories"
	exit

fi

sec=`basename $2`
diff $1 $2 | grep -w "$sec" | awk -F ": " '{print $2}' >> tempfile.temp

while read difference
do

	cp "$2/$difference" $1

done < tempfile.temp

rm tempfile.temp
echo -e "Done "

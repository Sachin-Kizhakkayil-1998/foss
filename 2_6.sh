if [[ $# -ne 1 ]]
then
    	echo "Enter a File"
        exit
fi

if [[ !(-a $1) ]]
then
    	echo "Invalid file"
        exit
fi

awk '!a[$0]++' $1 >> tm.temp
rm $1
mv tm.temp $1


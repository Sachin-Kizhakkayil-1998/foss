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
symbols=0
space=`grep -o ' ' $1 | wc -l`
chara=`wc -c $1 | awk '{print $1}'`
v=0
l=`wc -l $1 | awk '{print $1}'`
while read -n1 c
do
	if [[ $c == *['!'@#\$%^\&*()_+]*  ]]
	then
		((SYM++))
	elif [[ $c == *[aAeEiIoOuU]*  ]]
	then
		((V++))
	fi
done < "$1"
echo "no.of lines : $l"
echo "no.of spaces : $space"
echo "no.of characters : $chara"
echo "no.of symbols : $symbols"
echo "no.of vowels : $v"




ls -lAh $PWD | awk -F " " '{print $1 " " $9}' > tm.temp
while read l
do
     prmssn=`echo $l | awk '{print $1}'`
     crrntprmsn=${prmssn:7:3}

     if [[ $crrntprmsn == "rwx"  ]]
     then
	echo "$l"
     fi

done < tm.temp
rm tm.temp


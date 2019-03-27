if [[ $# -eq 0 ]]
then
	echo "No file argument passed"
	exit
fi
for file in $*
do
	if [[ !(-a $file) ]]
	then
		echo "Enter a valid files as arguments"
		exit
	fi
done
for file in $*
do
	Name=`basename $file`
	size=`ls -lah $file | awk -F " " '{print $5}' `
	Prmssn=`ls -lah $file | awk -F " " '{print $1}'`
	Date=`ls -lah $file | awk -F " " '{print $6 " " $7 " " $8 }'`

	printf "Name of the File : $Name\nSize of the file : $size"
	printf "\nPermissions : $Prmssn\nLast Modified : $Date\n\n"

done

if [[ $# -ne 2 ]]
then
    	echo "Should enter 2 files"
        exit
fi

if [[ !(-a $1 && -a $2) ]]
then
    	echo "invalid files"
        exit
fi

prmssn1=`ls -lah $1 | awk -F " " '{print $1}'`
prmssn2=`ls -lah $2 | awk -F " " '{print $1}'`

if [[ $prmssn1 == $prmssn2  ]]
then
	echo "Both Have common permissions & they are : $prmssn1"
else
	echo "Permissions for $1 : $prmssn1"
	echo "Permissions for $2 : $prmssn2"
fi

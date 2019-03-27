if [[ $# -ne 2 ]]
then
    echo "Two Files Needed"
    exit
fi

if [[ !(-f $2 && -f $2) ]]
then
   echo "Invalid files"
   exit
fi

(cmp -s $1 $2) && (rm $2; echo "Deleted The Duplicate File") || (echo "Both Files Are Different & No Action Taken")


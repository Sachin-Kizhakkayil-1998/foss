# !/bin/bash 

echo "Enter Choice :"
echo -e "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Modulas"

read ch 
  

case $ch in
  1)echo "Enter two numbers : "
	read a 
	read b 
	res=`echo $a + $b | bc` 
  ;; 
  2)echo "Enter two numbers : "
	read a 
	read b 
	res=`echo $a - $b | bc` 
  ;; 
  3)echo "Enter two numbers : "
	read a 
	read b 
	res=`echo $a \* $b | bc` 
  ;; 
  4)echo "Enter two numbers : "
	read a 
	read b 
	if [ $b -eq 0 ]
	then
		res=`echo "not possible"`
	else
	res=`echo "scale=2; $a / $b" | bc`
	fi 
  ;; 
  5)echo "Enter two numbers : "
	read a 
	read b 
	res=`echo " $a % $b" | bc` 
  ;; 
esac
echo "Result : $res"

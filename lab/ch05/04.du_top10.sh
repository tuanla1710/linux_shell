#!/bin/bash
# Daily Disk Usage Monitoring example

echo
echo "========== Top 10 Disk Space Usage Monitoring ========"
echo

# CHECK_DIR=" /var/log /home"
CHECK_DIR="dulist.txt"
FILE=$(date +%y%m%d).rpt

#Check the check directories exist

file_no=1
exec < $CHECK_DIR
read dirname

while [ $? -eq 0 ]
do
	if [ -d $dirname ]; then
		dirlist="$dirlist $dirname"
	else
		echo "$dirname does not exist!!! continue to list next directory"
		continue
	fi
	file_no=$[ $file_no + 1 ]
	read dirname
done
echo
echo "Check directories list : $dirlist"
echo

exec > $FILE

# sudo du -S $CHECK_DIR 2> /dev/null | sort -rn > t_du.rpt
sudo du -S -h $dirlist 2> /dev/null | sort -rn > t_du.rpt
head t_du.rpt > $FILE
rm t_du.rpt

exit 0
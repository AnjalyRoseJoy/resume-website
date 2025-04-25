#!/bin/bash
echo "enter the register number and the name of the student :"
read reg
read name
echo "enter the marks of four subjects: "
read s1
read s2
read s3
read s4
total=$(($s1+$s2+$s3+$s4))
per=$(( ( $total * 100 ) / 400 ))
if [ $per -ge '40' ]
then 
	echo $name" passed the exam"
else
	echo $name" failed the exam"
fi
	

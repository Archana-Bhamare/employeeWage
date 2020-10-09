#!/bin/bash -x
isFullTime=1
isPartTime=2
empRatePerHour=20
random=$((RANDOM%3))
if [ $random -eq $isFullTime ]
then
	empHrs=8
elif [ $random -eq $isPartTime ]
then
	empHrs=4
else
	empHrs=0
fi
DailyWage=$(($empRatePerHour*$empHrs))
echo "Employee Daily wage is $DailyWage"
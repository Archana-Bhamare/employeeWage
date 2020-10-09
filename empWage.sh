#!/bin/bash -x
isFullTime=1
empRatePerHour=20
random=$((RANDOM%2))
if [ $random -eq $isFullTime ]
then
	empHrs=8
else
	empHrs=0
fi
DailyWage=$(($empRatePerHour*$empHrs))
echo "Employee Daily wage is $DailyWage"
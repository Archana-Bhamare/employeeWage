#!/bin/bash -x
isFullTime=1
isPartTime=2
empRatePerHour=20
random=$((RANDOM%3))

case $random in
	$isFullTime )
		empHrs=8 ;;
	$isPartTime )
		empHrs=4 ;;
	* )
		empHrs=0 ;;
esac
DailyWage=$(($empRatePerHour*$empHrs))
echo "Employee Daily wage is $DailyWage"
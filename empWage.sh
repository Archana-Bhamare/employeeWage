#!/bin/bash -x
isFullTime=1
isPartTime=2
empRatePerHour=20
numOfWorkingDays=20
totalSalary=0

for ((day=1; day<=$numOfWorkingDays; day++))
do
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
	totalSalary=$(($totalSalary+$DailyWage))
done

echo "Total Salary for a month is : $totalSalary"
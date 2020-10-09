#!/bin/bash -x
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt  $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	random=$((RANDOM%3))
	
	case $random in
		$IS_FULL_TIME )
			empHrs=8 ;;
		$IS_PART_TIME )
			empHrs=4 ;;
		* )
			empHrs=0 ;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($EMP_RATE_PER_HOUR*$totalEmpHrs))
echo "Total Salary is : $totalSalary"
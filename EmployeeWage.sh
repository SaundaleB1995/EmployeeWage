#!/bin/bash 
echo "Welcome to Employee Wage Computation Program."

isPartTime=1
isFullTime=2
totalEmpHrs=0
empRatePerHrs=20
monthlyHrs=4
numWorkingDays=20
totalWorkingDays=0

function  getWorkingDays() {
		case $1 in
              $isFullTime)
                empHrs=8
                 ;;
             $isPartTime)
               empHrs=4
                ;;
            *)
          empHrs=0
                ;;
     esac
     echo $empHrs
   }
 function calDailyWage() {
	local empHrs=$1
	wage=$(($empHrs*$empRatePerHrs))
	echo $wage
}

while [[ $totalEmpHrs -lt $monthlyHrs && $totalWorkingDays -lt $numWorkingDays ]]
do
     ((totalWorkingDays++))
     empHrs="$( getWorkingDays $((RANDOM%3)) )"
     totalEmpHrs=$(($totalEmpHrs+$empHrs))
     empDailyWage["$totalWorkingDays"]="$( calDailyWage $empHrs )"
done

totalSalary="$( calDailyWage $totalEmpHrs )"

echo "Daily Wage " ${empDailyWage[@]}


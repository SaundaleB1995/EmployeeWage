#!/bin/bash 
echo "Welcome to Employee Wage Computation Program."

isPartTime=1;
isFullTime=2;
totalEmpHrs=0;
empRatePerHrs=20;
monthlyHrs=100;
numWorkingDays=20;
totalWorkingDays=0;

function  showWorkingDays() {
    case $empCheck in
              $isFullTime)
                empHrs=8;
                 ;;
             $isPartTime)
               empHrs=4;
                ;;
            *)
          empHrs=0;
                ;;
     esac
     echo $empHrs
   }


while [[ $totalEmpHrs -lt $monthlyHrs && $totalWorkingDays -lt $numWorkingDays ]]
do
   (( totalWorkingDays++))
   empCheck=$((RANDOM%3));
     empHrs="$( showWorkingDays $empCheck )"
     totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$empRatePerHrs))

echo "Employee Hours" $totalEmpHrs
echo "Salary " $totalSalary

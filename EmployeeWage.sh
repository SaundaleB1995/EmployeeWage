#!/bin/bash 
echo "Welcome to Employee Wage Computation Program."

isPartTime=1;
isFullTime=2;
totalEmpHrs=0;
empRatePerHrs=20;
monthly_Hrs=100;
numWorkingDays=20;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $monthly_Hrs && $totalWorkingDays -lt $numWorkingDays ]]

do
      (( totalWorkingDays++))
	    empCheck=$((RANDOM%3));
       
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
        totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
 done
      totalSalary=$(( $totalEmpHrs + $empRatePerHrs ));
echo "Employee work Hours " $totalEmpHrs
echo "Total Salary=" $totalSalary

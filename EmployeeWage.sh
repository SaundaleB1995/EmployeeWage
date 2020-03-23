#!/bin/bash 
echo "Welcome to Employee Wage Computation Program."

isPartTime=1;
isFullTime=2;
EmpRatePerHr=20;
randomCheck=$((RANDOM%3));

      if [ $isPartTime -eq $randomCheck ]
	   then
	       empHr=4;
       echo "Employee is Part Time."

       elif [ $isFullTime -eq $randomCheck ]
           then
           empHr=8;
         echo "Employee is Full Time."
          else
             empHr=0;
         echo "Employee is Absent."
        
        fi
salary=$(($empHr*$EmpRatePerHr))
echo "Employee Salary" $salary

#!/bin/bash 
echo "Welcome to Employee Wage Computation Program."

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));
     case  $empCheck in

               $isFullTime)
                         empHrs=8;
echo "Employee is FullTime."
                         ;;
                $isPartTime)
                          empHrs=4;
echo "Employee is PartTime."
                          ;;
                 *)
               empHrs=0;
echo "Absent Employee."
                          ;;
    esac

    salary=$(( $empHrs * $empRatePerHr ));
echo "Salary=" $salary


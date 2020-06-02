
--(1)----------------------------------------------------------------------------------------------
SELECT Resident_PatientID,Patient_LName,CareCenterName,RoomNumber, Bednumber
From Person_RPatient
Where CareCenterName = 'URGENT CARE';
// new business report

--(2)------------------------------------------------------------------------------------------------

select   count(case when IsPatient = 'Y' then 1 end) as IsPatient,
         count(case when IsPhysician = 'Y' then 1 end) as IsPhysician
       
from Person_RPatient 
group by Ispatient, IsPhysician;

--(3)--------------------------------------------------------------------------------------------------
Select EMPersonID,Datehired,employeetype
from Person_Employee
where datehired < '01-JAN-15';

--(4)---------------------------------------------------------------------------------------
Select Patient_ID, Patient_LName, Phone, Email, StreetAddress
From Person_RPatient
Where NOT EXISTS (Select InsuranceCompanyID
                  From Person_RPatient);
                  
--(5)----------------------------------------------------------------------------------------------

Select Count(RPAPersonID), Count(OPAPersonID), Count(NurseInCharge),
employeetype, CareCenterName
From Employee_CreditCard
WHERE employeetype = 'RN Nurse'
Group By RPAPersonID, OPAPersonID, NurseInCharge,
employeetype, CareCenterName;

--(6)-------------------------------------------------------------------------------------------------

Select EMPersonID,Employee_Fname, employeetype,
City, HoursWorked 
FROM Person_Employee
WHERE CITY = 'New York' 
AND HoursWorked >= 100; 

--(7)------------------------------------------------------------------------------------------------------

Select CareCenterName, RoomNumber, BedNumber, BedTypeDedcription
From CareCenter_Bed
Where BedTypeDedcription = 'Electric Account Bed';

--(8)------------------------------------------------------------------------------------------------------

Select OPAPersonID, Patient_Lname, Phone, VisitDate, 
CareCenterName, CareCenterAddress
From Person_OutPatient
Where VisitDate >= '17-MAR-16';

--(9)-------------------------------------------------------------------------------------------------------
Select PAPersonid, Patient_Lname, Phone, Email, StreetAddress, VisitDate
From Person_OutPatient
Where NOT EXISTS (Select CreditCardNumber
                  From Person_OutPatient
                  Where visitdate = '17-MAR-16');

--(10)-------------------------------------------------------------------------------------------------------


Select Count(VOPersonID), CareCenterName, 
Count(OPAPersonID), Count(RPAPersonID)
From RPatient_Bed
Group By VOPersonID, CareCenterName, 
OPAPersonID, RPAPersonID;



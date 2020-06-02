
                  
--(1,2 and 4)------------------------------------------------------------------------------------------------------------

CREATE VIEW Person_RPatient AS
SELECT Resident_Patient.RPAPersonid AS Resident_PatientID,Person.Last AS Patient_LName,
Care_Center.CareCenterName, BED.RoomNumber, BED.Bednumber, Person.Ispatient, Person.IsPhysician, 
Patient.PAPersonid AS Patient_ID, Person.Phone, Person.Email, Person.StreetAddress,
Patient_Insurance_Coverage.InsuranceCompanyID
From Person 
INNER JOIN Patient 
ON Person.PersonID = Patient.PAPersonID 
INNER JOIN Resident_Patient 
ON Patient.PAPersonID = Resident_Patient.RPAPersonID 
INNER JOIN BED 
ON Resident_Patient.RoomNumber = BED.RoomNumber 
INNER JOIN Care_Center 
ON Bed.CareCenterID = Care_Center.CareCenterID
INNER JOIN Patient_Insurance_Coverage
ON Patient_Insurance_Coverage.PAPersonID = Patient.PAPersonID;

--(3 and 6)-------------------------------------------------------------------------------------------------
CREATE VIEW Person_Employee AS
Select Employee.EMPersonID, person.first AS Employee_Fname, employee.employeetype,
Person.City, Employee_Assigned_Care_Center.HoursWorked, Employee.Datehired
FROM PERSON, EMPLOYEE, Employee_Assigned_Care_Center 
WHERE PERSON.PersonID = employee.empersonid  
AND employee.EMpersonid = Employee_Assigned_Care_Center.EMPersonID;

--(5)------------------------------------------------------------------------------------------------------
CREATE VIEW Employee_CreditCard AS
Select Resident_Patient.RPAPersonID, Visit_Care_Center.OPAPersonID,
Care_Center.NurseInCharge, employee.employeetype, Care_Center.CareCenterName
From Visit_Care_Center
INNER JOIN Care_Center
ON Visit_Care_Center.CareCenterID = Care_Center.CareCenterID
INNER JOIN BED
ON Care_Center.CareCenterID = BED.CareCenterID
INNER JOIN Resident_Patient
ON Resident_Patient.BedNumber = Bed.BedNumber
INNER JOIN employee
ON employee.empersonid = care_center.nurseincharge;


--(7)---------------------------------------------------------------------------------------------------

CREATE VIEW CareCenter_Bed AS
Select Care_Center.CareCenterName, Bed.RoomNumber, BED.BedNumber, Bed_Type.BedTypeDedcription
From Care_Center
INNER JOIN BED
ON Care_Center.CareCenterID = Bed.CareCenterID
INNER JOIN Bed_Type
ON Bed.BedTypeID = Bed_Type.BedTypeID;

--(8 and 9)------------------------------------------------------------------------------------------------

CREATE VIEW Person_OutPatient AS
Select Out_patient.OPAPersonID,Patient.PAPersonid, Person.Last AS Patient_Lname, Person.Phone,Person.Email, Person.StreetAddress,
Visit.VisitDate, Care_Center.CareCenterName, Care_Center.CareCenterAddress, Patient_Credit_Card.CreditCardNumber
From Person
INNER JOIN Patient
ON Person.PersonID = Patient.PaPersonID
INNER JOIN Out_Patient
ON Patient.PaPersonID = Out_patient.OPAPersonID
INNER JOIN Visit
ON Out_patient.OPAPersonID = Visit.OPAPersonID
INNER JOIN Visit_Care_Center
ON Visit.OPAPersonID = Visit_Care_Center.OPAPersonID
INNER JOIN Care_Center
ON Visit_Care_Center.CareCenterID = Care_Center.CareCenterID
INNER JOIN Patient_Credit_Card
ON Patient_Credit_Card.PaPersonID = Patient.PaPersonID;


--(10)---------------------------------------------------------------------------------------------------------

CREATE VIEW RPatient_Bed AS
Select Volunteer_Assigned_Care_Center.VOPersonID, Care_Center.CareCenterName, 
Visit_Care_Center.OPAPersonID, Resident_Patient.RPAPersonID
From Volunteer_Assigned_Care_Center
INNER JOIN Care_Center
ON Volunteer_Assigned_Care_Center.CareCenterID = Care_Center.CareCenterID
INNER JOIN Visit_Care_Center
ON Care_Center.CareCenterID = Visit_Care_Center.CareCenterID
INNER JOIN BED
ON Care_Center.CareCenterID = BED.CareCenterID
INNER JOIN Resident_Patient
ON Resident_Patient.BedNumber = Bed.BedNumber;
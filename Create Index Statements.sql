
--(1)-----------------------------------------------------------------------------------------------------

Create Index idx_CareCenterName ON Care_Center(CareCenterName);

Create Index idx_RPatientRoomNum ON Resident_Patient(RoomNumber);

Create Index idx_BedRoomNum ON BED(RoomNumber);

Create Index idx_BedCareCenterID ON Bed(CareCenterID);


--(3)------------------------------------------------------------------------------------------------------

Create Index idx_EmployeeDateHired ON Employee(Datehired);


--(4)------------------------------------------------------------------------------------------------------
                  
Create Index idx_InsurancePAPersonID ON Patient_Insurance_Coverage(PAPersonID);

Create INdex idx_InsuranceCompanyID ON Patient_Insurance_Coverage(InsuranceCompanyID);


--(5)-----------------------------------------------------------------------------------------------------

Create Index idx_EmployeeType ON employee(employeetype);

Create Index idx_CareCenterNurseIncrg ON care_center(nurseincharge );

Create Index idx_ResidentPatientBedNumber ON Resident_Patient(BedNumber);

Create Index idx_BedBedNumber ON Bed(BedNumber);

Create Index idx_VisitCareCCareCID ON Visit_Care_Center(CareCenterID);


--(6)------------------------------------------------------------------------------------------------------------

Create Index idx_EmployeeAssCCHoursW ON Employee_Assigned_Care_Center(HoursWorked); 
Create Index idx_PersonCITY ON Person(CITY); 
Create Index idx_Employee_AssCCEMPID ON  Employee_Assigned_Care_Center(EMPersonID);


--(7)----------------------------------------------------------------------------------------------------------

Create Index idx_BedTypeDedcription ON Bed_Type(BedTypeDedcription); 
Create Index idx_BedBedTypeID ON Bed(BedTypeID); 


--(8)-------------------------------------------------------------------------------------------------------------
 
Create Index idx_VisitVisitDate ON Visit(VisitDate);
Create Index idx_VisitOPAPersonID ON  Visit(OPAPersonID);
Create Index idx_VisitCCOPAPerID ON  Visit_Care_Center(OPAPersonID);


--(9)---------------------------------------------------------------------------------------------------------------

Create Index idx_PatientCCPaPerID ON Patient_Credit_Card(PaPersonID);


--(10)---------------------------------------------------------------------------------------------------------------

Create Index idx_VolunteerACCCareCID ON Volunteer_Assigned_Care_Center(CareCenterID);


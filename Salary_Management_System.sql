CREATE TABLE Employee (
    EmpID INT PRIMARY KEY ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    Email VARCHAR(100) UNIQUE,
    Gender Varchar(50),
    UNIQUE (FirstName, LastName)
);
CREATE TABLE JOBDEPT(
JOBID INT PRIMARY KEY ,
NAME Varchar(70) ,
SalaryRange DECIMAL(10, 2) 
);
 
 CREATE TABLE LEAVE(
 LEAVEID INT PRIMARY KEY,
 FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
 Status Varchar(50),
 Reason Varchar(100),
 Date DATE );
 
 CREATE TABLE PAYROLL(
 PAYROLLID INT PRIMARY KEY,
 FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
 FOREIGN KEY (SalaryID) REFERENCES Salary(SalaryID),
 PaymentDate DATE ,
 PaymentStartDate DATE,
 PaymentEndDate DATE);
 
 CREATE TABLE SALARY(
 SalaryID int PRIMARY KEY,
 FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
 BasicPay Decimal(10,2),
 Deductions Decimal(8,2),
 Bonus Decimal(8,2),
 PayDate DATE);
 

 
 


 



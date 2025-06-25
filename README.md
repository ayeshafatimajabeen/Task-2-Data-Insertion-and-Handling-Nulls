# Task 2: Data Insertion and Handling Nulls – Hospital Management System

##  Objective
This task demonstrates how to perform **INSERT**, **UPDATE**, and **DELETE** operations in a relational hospital management system. It includes handling optional or missing values using `NULL` and maintaining consistency across foreign-key-related tables.

---

##  Tools Used

- **MySQL Workbench** – for writing and executing SQL scripts  

---

Through Task 2, we practiced:

1. Inserting realistic, multi-table data with foreign key dependencies  
2. Using `NULL` for optional fields (e.g., phone number, discharge date)  
3. Updating specific records to reflect data corrections or real-world changes  
4. Deleting incomplete or irrelevant data while preserving integrity  
5. Using `WHERE` conditions in `UPDATE` and `DELETE` statements effectively  
6. Maintaining consistency and accuracy in a normalized SQL database  

---
##  How to Use
1. Clone this repo or download the `.sql` file.  
2. Open **MySQL Workbench** and connect to your database server.  
3. Verify data using:

   ```sql
   SELECT * FROM TableName;

                           

---

##  SQL Highlights

```sql
INSERT INTO Patients (name, gender, date_of_birth, phone)
VALUES ('Sana Ali', 'Female', '1998-12-10', NULL);
---
Update Missing Specialization
UPDATE Doctors
SET specialization = 'Neurosurgeon'
WHERE name = 'Dr. Vinod Rao';
---
Delete Prescription with NULL Dosage
DELETE FROM Prescriptions
WHERE dosage IS NULL;
---




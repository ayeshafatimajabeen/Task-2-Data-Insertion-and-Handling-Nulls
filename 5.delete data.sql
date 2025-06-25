-- DELETE 
--  DELETE: Remove an incorrect nurse assignment
DELETE FROM Nurse_Assignments 
WHERE nurse_id = 2 AND patient_id = 2;

--  DELETE: Remove patient
DELETE FROM patients
WHERE patient_id = 5;

-- DELETE: Remove Appointment  
DELETE FROM APPOINTMENTS
WHERE patient_id=4;

-- DELETE: Remove Doctor who resigned
DELETE FROM Doctors
WHERE doctor_id=7;

SELECT * FROM Nurse_Assignments;
Select * from Patients;
Select * from Appointments;
Select * from Doctors;
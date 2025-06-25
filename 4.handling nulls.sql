-- HANDLING NULLS
--  INSERT: Add new patient (with NULL phone)
INSERT INTO Patients (name, gender, date_of_birth, phone) 
VALUES ('Meena Kumari', 'Female', '1990-05-10', NULL);

--  INSERT: Add new doctor (no specialization provided, will be NULL)
INSERT INTO Doctors (name, specialization, department_id)
VALUES ('Dr. Prakash Mehra', NULL, 1);

--  INSERT: Add appointment for new patient with NULL reason
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason)
VALUES (4, 5, '2025-06-25', NULL);

--  INSERT: New nurse with missing phone number (NULL)
INSERT INTO Nurses (name, phone, department_id)
VALUES ('Nurse Kavita Rao', NULL, 1);

Select * from Patients;
Select * from Doctors;
Select * from Appointments;
Select * from Nurses;
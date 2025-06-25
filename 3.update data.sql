-- UPDATE
--  UPDATE: Set discharge date for a patient
UPDATE Patient_Rooms 
SET discharge_date = '2025-06-24' 
WHERE patient_id = 1;

--  UPDATE: Add missing specialization for a doctor
UPDATE Doctors 
SET specialization = 'General Physician' 
WHERE doctor_id = 5;

-- UPDATE: Update phone number for Meena Kumari
UPDATE Patients 
SET phone = '9998887777' 
WHERE patient_id = 4;

-- -UPDATE: Update appointment for new patient with NULL reason
UPDATE APPOINTMENTS
SET reason='Knee Pain'
WHERE patient_id = 4;

-- UPDATE: Change room status from 'Available' to 'Occupied'
UPDATE Rooms 
SET status = 'Occupied' 
WHERE room_number = 'S303';

Select * from Patients;
Select * from Doctors;
Select * from Patient_Rooms;
Select * from Rooms;
Select * from Appointments;
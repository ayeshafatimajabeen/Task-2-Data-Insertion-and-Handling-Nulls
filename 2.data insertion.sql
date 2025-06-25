-- Task 2: Data Insertion, Handling Nulls, Update, Delete
-- DATA INSERTION
-- 1.departments table
INSERT INTO Departments (name) VALUES
('Cardiology'),
('Neurology'),
('Pediatrics'),
('Orthopedics');

-- 2.doctors table
INSERT INTO Doctors (name, specialization, department_id) VALUES
('Dr. Sameer Khan', 'Cardiologist', 1),
('Dr. Neha Patel', 'Neurologist', 2),
('Dr. Ravi Verma', 'Pediatrician', 3),
('Dr. Sunita Joshi', 'Orthopedic Surgeon', 4);

-- 3.patients table
INSERT INTO Patients (name, gender, date_of_birth, phone) VALUES
('Aarav Mehta', 'Male', '1995-03-14', '9876543210'),
('Diya Singh', 'Female', '2002-07-22', '9123456789'),
('Rehan Shaikh', 'Male', '1988-01-11', '9012345678');

-- 4.Appointments table
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason) VALUES
(1, 1, '2025-06-20', 'Chest pain and fatigue'),
(2, 2, '2025-06-21', 'Frequent headaches'),
(3, 3, '2025-06-22', 'Fever and cough');

-- 5.MedicalRecords table
INSERT INTO MedicalRecords (appointment_id, diagnosis, treatment) VALUES
(1, 'Mild heart arrhythmia', 'Lifestyle changes, medication'),
(2, 'Migraine', 'Painkillers, avoid triggers'),
(3, 'Viral infection', 'Rest, fluids, paracetamol');

-- 6.Prescriptions table
INSERT INTO Prescriptions (appointment_id, medication, dosage) VALUES
(1, 'Atenolol', '50mg once daily'),
(2, 'Sumatriptan', '25mg during headache'),
(3, 'Paracetamol', '500mg every 6 hours');

-- 7.Rooms table
INSERT INTO Rooms (room_number, room_type, status) VALUES
('G101', 'General', 'Available'),
('P202', 'Private', 'Occupied'),
('S303', 'Semi-Private', 'Available'),
('ICU1', 'ICU', 'Occupied');

-- 8.Patient_Rooms table
INSERT INTO Patient_Rooms (patient_id, room_id, admission_date, discharge_date) VALUES
(1, 2, '2025-06-19', NULL),
(2, 4, '2025-06-18', '2025-06-21');

-- 9.Nurses table
INSERT INTO Nurses (name, phone, department_id) VALUES
('Nurse Riya Sharma', '9898989898', 1),
('Nurse Alok Das', '9789789789', 2),
('Nurse Meera Iqbal', '9123412341', 3);

-- 10.Nurse_Assignments table
INSERT INTO Nurse_Assignments (nurse_id, patient_id, shift, date) VALUES
(1, 1, 'Morning', '2025-06-20'),
(2, 2, 'Night', '2025-06-21'),
(3, 3, 'Afternoon', '2025-06-22');

-- 11.Billing table
INSERT INTO Billing (patient_id, appointment_id, room_charge, consultation_fee, medicine_charge, total_amount, billing_date) VALUES
(1, 1, 1500.00, 500.00, 200.00, 2200.00, '2025-06-20'),
(2, 2, 2000.00, 600.00, 150.00, 2750.00, '2025-06-21'),
(3, 3, 0.00, 400.00, 100.00, 500.00, '2025-06-22');

Select * from Departments;
Select * from Doctors;
Select * from Patients;
Select * from Appointments;
Select * from MedicalRecords;
Select * from Prescriptions;
Select * from Rooms;
Select * from Patient_Rooms;
Select * from Nurses;
Select * from Nurse_Assignments;
Select * from Billing;



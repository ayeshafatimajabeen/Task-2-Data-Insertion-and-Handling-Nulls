
CREATE DATABASE HospitalDB;
-- Using the HospitalDB database
USE HospitalDB;
-- 1. Departments
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);
-- 2. Doctors
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
-- 3. Patients
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    phone VARCHAR(15)
);
-- 4. Appointments
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE NOT NULL,
    reason TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- 5. MedicalRecords
CREATE TABLE MedicalRecords (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT UNIQUE,
    diagnosis TEXT,
    treatment TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
-- 6. Prescriptions
CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT UNIQUE,
    medication TEXT,
    dosage TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
-- 7.  Rooms
CREATE TABLE Rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    room_type ENUM('General', 'Semi-Private', 'Private', 'ICU') NOT NULL,
    status ENUM('Available', 'Occupied') DEFAULT 'Available'
);
-- 8.  Patient_Rooms
CREATE TABLE Patient_Rooms (
    id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    room_id INT,
    admission_date DATE,
    discharge_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);
-- 9.  Nurses
CREATE TABLE Nurses (
    nurse_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
-- 10.  Nurse_Assignments 
CREATE TABLE Nurse_Assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    nurse_id INT,
    patient_id INT,
    shift ENUM('Morning', 'Afternoon', 'Night'),
    date DATE,
    FOREIGN KEY (nurse_id) REFERENCES Nurses(nurse_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
-- 11.  Billing
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    room_charge DECIMAL(10,2),
    consultation_fee DECIMAL(10,2),
    medicine_charge DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    billing_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
SHOW TABLES;


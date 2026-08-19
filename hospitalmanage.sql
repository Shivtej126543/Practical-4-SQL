CREATE DATABASE hospital_management;
USE hospital_management;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE symptoms (
    patient_id INT PRIMARY KEY,
    fever VARCHAR(50) NOT NULL,
    cough VARCHAR(50) NOT NULL,
    rashes VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE patient_details (
    patient_id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    aadhar_no VARCHAR(12) UNIQUE,
    phone_no VARCHAR(10) UNIQUE,
    age INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE prescriptions (
    prescription_id INT PRIMARY KEY,
    patient_id INT,
    steroids VARCHAR(50),
    common_drugs VARCHAR(50),
    multivitamins VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE rooms_occupancy (
    room_id INT PRIMARY KEY,
    normal INT NOT NULL,
    deluxe INT NOT NULL,
    super_deluxe INT NOT NULL,
    reserved INT DEFAULT 0
);


INSERT INTO patients (patient_id, patient_name)
VALUES
(101, 'Surmayee'),
(102, 'Shivtej');


INSERT INTO symptoms (patient_id, fever, cough, rashes)
VALUES
(101, 'Yes', 'No', 'No'),
(102, 'No', 'Yes', 'No');


INSERT INTO patient_details 
(patient_id, email, aadhar_no, phone_no, age)
VALUES
(101, 'surmayee@gmail.com', '123456789012', '9876543210', 19),
(102, 'shivtej@gmail.com', '234567890123', '9876543211', 19);


INSERT INTO prescriptions 
(prescription_id, patient_id, steroids, common_drugs, multivitamins)
VALUES
(1, 101, 'Prednisolone', 'Paracetamol', 'Vitamin B12'),
(2, 102, 'Hydrocortisone', 'Cetirizine', 'Vitamin D');


INSERT INTO rooms_occupancy 
(room_id, normal, deluxe, super_deluxe, reserved)
VALUES
(1, 25, 10, 5, 3);


SELECT * FROM patients;
SELECT * FROM symptoms;
SELECT * FROM patient_details;
SELECT * FROM prescriptions;
SELECT * FROM rooms_occupancy;

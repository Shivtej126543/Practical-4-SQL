Hospital Management System
Overview
This project is a MySQL-based Hospital Management System that stores patient information, symptoms, patient details, prescriptions, and room occupancy.

Tables
patients – Stores patient ID and name.
symptoms – Stores patient symptoms.
patient_details – Stores email, Aadhaar number, phone number, and age.
prescriptions – Stores medicines prescribed to patients.
rooms_occupancy – Stores room occupancy information.
Normalization
1NF – Followed: All values are atomic and each table has a primary key.
2NF – Followed: All tables have single-column primary keys, so there are no partial dependencies.
3NF – Partially Followed: Most tables follow 3NF, but rooms_occupancy stores different room types as separate columns.
Main Violation
In rooms_occupancy:

normal
deluxe
super_deluxe

These room types should ideally be stored as separate rows instead of separate columns.

Conclusion
The database follows 1NF and 2NF and mostly follows 3NF. The main improvement is to normalize the rooms_occupancy table by separating room types into their own table.

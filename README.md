# E-Health-Card
Using Web-Portal and Mobile Apps, We created Medical card which can be used to store medical details about people and can be easily carried with them, doctors can effectively diagnose their patients based on their previous history and background of disease, Laboratory can also easily figure out which test to be carried out just by scanning of medical card. It will be very helpful in emergency, to know past history of a patient by just scanning the card.

Demonstration: https://drive.google.com/file/d/10XHU6gRIJUF0oVYh3_c44EF2nd_8xNse/view?usp=sharing

Vida.zip file contains the code of all web portals that we included in our portal. Portal contains Doctor, Patient, Laboratory and Admin Modules. Doctor, Laboratory and Patient modules are designed according to their roles and to handle all of them Admin module is designed. We also taken care about Fraud IDs. We ensure that no fraud Doctor or Laboratory can be enter in our system because we have to take care about patient's medical history. Theft of medical history can cause many of negative things, so we handle all such fraud Ids and not allow them to enter into the system.

Module Login Usage:
-------------------
Patient Module:
For Login refer 'patient' table in database.

Doctor Module:
For Login refer 'doctor' table in database.

Laboratory Module:
For Login refer 'laboratory' table in database.

Admin Module:
For Login refer 'admin' table in database.


Data Usage:
------------
We are using dumy data for aadhhar details in 'aadhaar_detail' table.
Patient Module:
To view the patients history like diseases and medicines refer 'patient_history' table.
To view the patients allergy details refer 'medical_info' table.

Doctor Module:
To view Doctor information refer 'doctor_info' table.
For account request refer 'doctor_request' table.

Laboratory Module:
To view Laboratory information refer 'laboratory_info' table.
For account request refer 'laboratory_request' table.
For history refer 'laboratory_history' table.

We are using localhost. So Report files are stored in our machine.
To view uploaded report from the module go to the folder upload- vida\hms\laboratory\uploads.

--Data insert into MAIN_BLOODBANK_SYSTEM table
INSERT ALL
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODCUTK07', 'CUTTACK')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODDHEAL09', 'DHENKANAL')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODGANG11', 'GANJAM')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODJAJA13', 'JAJPUR')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODJHAG14', 'JHARSUGUDA')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODKENR17', 'KENDRAPARA')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODKHDA19', 'KHORDHA')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODKORK20', 'KORAPUT')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODPURU26', 'PURI')
INTO MAIN_BLOODBANK_SYSTEM (DISTRICT_ID, DISTRICT_NAME) VALUES ('ODRAYA27', 'RAYAGADA')
SELECT * FROM dual;
COMMIT;
SELECT * from MAIN_BLOODBANK_SYSTEM;

-- Inserting records into BLOODBANK_RECORD table
INSERT ALL
--cuttack blood bank details
-- Inserting records INSERT INTO BLOODBANK_RECORD table

--cuttack blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('CUTKLIFE01', 'LifeLine Blood Bank', 'ODCUTK07', 'SECTOR-1, CDA', '+911324567892', 'lifeline01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('CUTKVITA02', 'Vitality Blood Center', 'ODCUTK07', 'Canal Road Cuttack Gpo', '+911234567475', 'Vitality02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('CUTKREDC03', 'Red Cross Blood Services', 'ODCUTK07', 'Nayabazar Chauliaganj', '+911234523418', 'red.cross03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('CUTKLIFE04', 'LifeStream', 'ODCUTK07', 'Nayabazar Chauliaganj', '+911234523418', 'life04@example.com');
--dhenkanala bloodbank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('DHEALBLOO05', 'BloodSource', 'ODDHEAL09', 'BADAHATA', '+911234567892', 'blood01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('DHEALBIOL06', 'BioLife Plasma Services', 'ODDHEAL09', 'PATTAMUNDAI', '+911234567892', 'bio.life02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('DHEALPULS07', 'Pulse Blood Bank', 'ODDHEAL09', 'BALANGADI BAZAR', '+911234567892', 'pulse03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('DHEALLIBE08', 'Liberty Blood Bank', 'ODDHEAL09', 'MANKARPUR', '+911234567892', 'liberty04@example.com');
--ganjam blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('GANGUNIT09', 'Unity Blood Center', 'ODGANG11', 'BELANGUNATH ROAD, BHANJA NAGAR', '+911234567892', 'unity01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('GANGHEAR10', 'Heartland Blood Centers', 'ODGANG11', 'KHALIKOTE', '+911234567892', 'heart.land02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('GANGGUAR11', 'Guardian Blood Bank', 'ODGANG11', 'BRAHMA NAGAR', '+911234567892', 'guardian03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('GANGHOPE12', 'Hope Blood Services', 'ODGANG11', 'BRAHMA NAGAR', '+911234567892', 'hope04@example.com');
--jajpur blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JAJABEAC13', 'Beacon Blood Bank', 'ODJAGU12', 'NAYAGARH ROAD', '+912987456123', 'beacon01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JAJASTAR14', 'Starlight Blood Bank', 'ODJAGU12', 'NH57 KHORDHA H O', '+911234567892', 'starlight02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JAJAANGE15', 'Angelic Blood Services', 'ODJAGU12', 'MALAD, Sarbamangala Pally', '+911234567892', 'angelic03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JAJASUNS16', 'Sunshine Blood Bank', 'ODJAGU12', 'DUMDUMA, BHUBANESWAR', '+911234567892', 'sunshine04@example.com');
--jharsuguda blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JHAGSUNR17', 'Sunrise Blood Bank', 'ODJHAG14', 'PURI', '+911234567892', 'sunrise01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JHAGANGE18', 'Angel Blood Center', 'ODJHAG14', 'KANAS', '+911234567891', 'angel02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JHAGVITA19', 'Vitality Blood Bank', 'ODJHAG14', 'BRAHMAGIRI', '+911254567892', 'vitality03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('JHAGHORI20', 'Horizon Blood Bank', 'ODJHAG14', 'KAKATPUR', '+911234527892', 'horizon04@example.com');
--kendrapada blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KENRNOBL21', 'Noble Blood Bank', 'ODKENR18', 'BADAHATA', '+911234567892', 'noble01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KENRAURO22', 'Aurora Blood Center', 'ODKENR18', 'PATTAMUNDAI', '+911234567892', 'aurora02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KENRELYS23', 'Elysian Blood Bank', 'ODKENR18', 'BALANGADI BAZAR', '+911234567892', 'elysian03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KENRREVI24', 'Revival Blood Services', 'ODKENR18', 'MANKARPUR', '+911234567892', 'revival04@example.com');
--khordha blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KHDAOASI25', 'Oasis Blood Center', 'ODKHDA19', 'NAYAGARH ROAD', '+912987456123', 'oasis01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KHDASUMM26', 'Summit Blood Services', 'ODKHDA19', 'NH57 KHORDHA H O', '+911234567892', 'summit02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KHDACASC27', 'Cascade Blood Bank', 'ODKHDA19', 'MALAD, Sarbamangala Pally', '+911234567892', 'cascade03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KHDASAPP28', 'Sapphire Blood Bank', 'ODKHDA19', 'DUMDUMA, BHUBANESWAR', '+911234567892', 'sapphire04@example.com');
--koraput blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KORKEVER29', 'Evergreen Blood Center', 'ODKORK20', 'BELANGUNATH ROAD, BHANJA NAGAR', '+911234567892', 'ever.green01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KORKTRIN30', 'Trinity Blood Services', 'ODKORK20', 'KHALIKOTE', '+911234567892', 'trinity02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KORKGRAT31', 'Gratitude Blood Bank', 'ODKORK20', 'BRAHMA NAGAR', '+911234567892', 'gratitude03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('KORKPACI32', 'Pacific Blood Services', 'ODKORK20', 'MALAD, Sarbamangala Pally', '+911235467892', 'pacific04@example.com');
--rayagada blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('RAYASTEL33', 'Stellar Blood Bank', 'ODRAYA27', 'SECTOR-1, CDA', '+911324567892', 'stellar01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('RAYAMEDS34', 'MedStar Blood Bank', 'ODRAYA27', 'Canal Road Cuttack Gpo', '+911234567475', 'medstar02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('RAYAPINN35', 'Pinnacle Blood Bank', 'ODRAYA27', 'Nayabazar Chauliaganj', '+911234523418', 'pinnacle03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('RAYASERE36', 'Serenity Blood Services', 'ODRAYA27', 'Nayabazar Chauliaganj', '+911234523418', 'serenity04@example.com');
--puri blood bank details
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('PURUINFI37', 'Infinity Blood Bank', 'ODPURU26', 'PURI', '+911234567892', 'infinity01@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('PURUTRAN38', 'Tranquil Blood Center', 'ODPURU26', 'KANAS', '+911234567891', 'tranquil02@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('PURUCOMP39', 'Compass Blood Center', 'ODPURU26', 'BRAHMAGIRI', '+911254567892', 'compass03@example.com');
INSERT INTO BLOODBANK_RECORD (blood_bank_id, blood_bank_name, district_id, address, mobile, email) VALUES ('PURUCRES40', 'Crescent Blood Bank', 'ODPURU26', 'KAKATPUR', '+911234527892', 'crescent04@example.com');
SELECT * FROM dual;
COMMIT;
select * from BLOODBANK_RECORD; 


--Insert records into "BLOOD_GROUP" table
insert all
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD01+O','O POSITIVE','O+, B+, A+, AB+','O+, O-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD02-O','O NEGATIVE', 'O-','O-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD03+A','A POSITIVE','A+, AB+','A+, A-, O+, O-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD04-A','A NEGATIVE','A+, A-, AB+, AB-','A-, O-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD05+B','B POSITIVE','B+, AB+','B+, B-, O+, O-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD06-B','B NEGATIVE','B+, B-, AB+, AB-','B-, O-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD07+AB','AB POSITIVE', 'AB+','O+, O-, A+, A- ,B+, B-, AB+, AB-')
into BLOOD_GROUP(blood_group_id,blood_group_name,donated_blood_to,received_blood_from) values ('BLOOD08-AB','AB NEGATIVE','AB+, AB-','AB-, O-, A-, B-')
select * from dual;
COMMIT;
select * from BLOOD_GROUP;


--insert into DOCTOR_DETAILS
insert all
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1001' , 'Dr.Subhas Soni' , 'Male' , 'Medicine_Specialist' , 'Subhas01@gmail.com' , '+919335247864' , 'Chirayu_Hospital_BBSR')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1002' , 'Dr.Ojaswin Mishra' , 'Male' , 'General Physician' , 'mishra12@gmail.com' , '+919875247754' , 'SUM_Hospital_BBSR')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1003' , 'Dr.Swetamayee Dash' , 'Female' , 'General Physician' , 'sweta09@gmail.com' , '+919555287009' , 'KIIMS_Hospital_BBSR')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1004' , 'Dr.Aditya Prasad Padhy' , 'Male' , 'Neurologist' , 'adi007@gmail.com' , '+917377096543' , 'SUM_Hospital_BBSR')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1005' , 'Dr.Ranjit Kar' , 'Male' , 'Oncologist' , 'ranjit12@gmail.com' , '+917894530061' , 'HCG Panda Cancer Hospital,CTC')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1006' , 'Dr.Kirti Anurag' , 'Male' , 'Psychiatrist' , 'kirti55@gmail.com' , '+919876904532' , 'Smartmeds Clinic,CTC')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1007' , 'Dr.Deepika Dash' , 'Female' , 'Gynecologist' , 'deep@gmail.com' , '+919557788432' , 'Birla fertility And IVF Clinic,CTC')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1008' , 'Dr.Om Prakash Agarwal' , 'Male' , 'General Physician' , 'om9875@gmail.com' , '+919006753498' , 'om clinic,CTC')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1009' , 'Dr.Shree Roy' , 'Female' , 'General Physician' , 'shree111@gmail.com' , '+917377099067' , 'Dr.BB Roy Clinic,CTC')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1010' , 'Dr.Kalinga Keshari Sahoo' , 'Male' , 'Dentist' , 'klg09@gmail.com' , '+919660909561' , 'Poly Dental Clinic,CTC')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1011' , 'Dr.Partho Dash' , 'Male' , 'Cardiologist' , 'parth67@gmail.com' , '+917377096542' , 'Mkcg Medical College,Berhumpur')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1012' , 'Dr.Prasant Kumar Sabat' , 'Male' , 'Neonatologist' , 'prasant56@gmail.com' , '+91739096897' , 'Mkcg Medical college,Berhampur')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1013' , 'Dr.Promod Agarwal' , 'Male' , 'Diabetologist' , 'pramod12@gmail.com' , '+918018790654' , 'Agarwal Diabetes Center,Berhampur')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1014' , 'Dr.Nilakantha Mishra' , 'Male' , 'General Physycian' , 'nila32@gmail.com' , '+916752224107' , 'Tikarapada sahi')
INTO DOCTOR_DETAILS (Doctor_ID , Name , Gender , Specialization , Email , Phone , Address) VALUES ('D1015' , 'Dr.Ashok Parida' , 'Male' , 'General Physician' , 'ashok@gmail.com' , '+91738796438' , 'Talamali sahi,Puri')
select * from dual;
commit;
select * from DOCTOR_DETAILS;

-- insert into DONOR_DETAILS
INSERT INTO DONOR_DETAILS (Donor_ID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don001' , 'Surendra Dash' , 'M' , 'O+' , 'Sura01@gmail.com' , '+919777556600' , 'Bhubaneswar');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don002' , 'Ramesh Sahoo' , 'M' , 'B+' , 'Ramesh9@gmail.com' , '+919875249954' , 'Balianta');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don003' , 'Parvati Swain' , 'F' , 'o+' , 'parvati78@gmail.com' , '+919555287008' , 'Adaspur');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don004' , 'Kamalkant Rath' , 'M' , 'AB+' , '12kamal@gmail.com' , '+917377012345' , 'Talabania');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don005' , 'Pramod Kar' , 'M' , 'O+' , 'pramod33@gmail.com' , '+917894530062' , 'Cuttack');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don006' , 'Sanjay Mahapatra' , 'M' , 'A+' , 'sanju55@gmail.com' , '+919876904537' , 'Bhubaneswar');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don007' , 'Sanjukta Dash' , 'F' , 'O+' , 'sanjukta@gmail.com' , '+919557988432' , 'Puri');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don008' , 'Prakash Patra' , 'M' , 'B+' , 'prakash76@gmail.com' , '+919006653498' , 'Ganjam');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don009' , 'Shreya Biswal' , 'F' , 'A+' , 'shreya111@gmail.com' , '+917377090067' , 'Kendrapada');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don010' , 'Utkal Keshari Dash' , 'M' , 'O+' , 'utk12@gmail.com' , '+919660909661' , 'Khalikote');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don011' , 'Binod Panda' , 'M' , 'O+' , 'binod@gmail.com' , '+917377096544' , 'Berhumpur');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don012' , 'Prasant Kumar Sabat' , 'M' , 'AB+' , 'prasant6@gmail.com' , '+91739096890' , 'Nirakarpur');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don013' , 'Pradosh Singh' , 'M' , 'AB+' , 'pradosh@gmail.com' , '+918016790654' , 'Puri');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don014' , 'Anwesh Sahoo' , 'M' , 'O+' , 'ansh87@gmail.com' , '+916752224100' , 'Tikarapada sahi');
INSERT INTO DONOR_DETAILS (DonorID , Name , Gender , Blood_group , Email , Phone , Address)
VALUES ('Don015' , 'Ashok Parida' , 'M' , 'O+' , 'ashok00@gmail.com' , '+91738796439' , 'Talamali sahi,Puri');
commit;
select * from DONOR_DETAILS;

--cuttack blood bank stock details
--cuttack_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE01', 'BLOOD08-AB', 10);
commit;
--cuttack_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKVITA02', 'BLOOD08-AB', 10);
commit;
--cuttack_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKREDC03', 'BLOOD08-AB', 10);
commit;
--cuttack_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODCUTK07', 'CUTKLIFE04', 'BLOOD08-AB', 10);
commit;
--dhenkanal blood bank stock details
--dhenkanal_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--dhenkanal_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALBIOL06', 'BLOOD08-AB', 10);
commit;
--dhenkanal_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALPULS07', 'BLOOD08-AB', 10);
commit;
--dhenkanal_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODDHEAL09', 'DHEALLIBE08', 'BLOOD08-AB', 10);
commit;
--ganjam blood bank stock details
--ganjam_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--ganjam_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHEAR10', 'BLOOD08-AB', 10);
commit;
--ganjam_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGGUAR11', 'BLOOD08-AB', 10);
commit;
--ganjam_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODGANG11', 'GANGHOPE12', 'BLOOD08-AB', 10);
commit;
--jajpur blood bank stock details
--jajpur_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--jajpur_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASTAR14', 'BLOOD08-AB', 10);
commit;
--jajpur_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJAANGE15', 'BLOOD08-AB', 10);
commit;
--jajpur_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJAJA13', 'JAJASUNS16', 'BLOOD08-AB', 10);
commit;
--jharsuguda blood bank stock details
--jharsuguda_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--jharsuguda_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGANGE18', 'BLOOD08-AB', 10);
commit;
--jharsuguda_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGVITA19', 'BLOOD08-AB', 10);
commit;
--jharsuguda_bloodbank_4 
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODJHAG14', 'JHAGHORI20', 'BLOOD08-AB', 10);
commit;
--kendrapada blood bank stock details
--kendrapada_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--kendrapada_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRAURO22', 'BLOOD08-AB', 10);
commit;
--kendrapada_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRELYS23', 'BLOOD08-AB', 10);
commit;
--kendrapada_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKENR17', 'KENRREVI24', 'BLOOD08-AB', 10);
commit;
--khordha blood bank stock details
--khordha_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--khordha_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASUMM26', 'BLOOD08-AB', 10);
commit;
--khordha_bloodbank_3 
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDACASC27', 'BLOOD08-AB', 10);
commit;
--khordha_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKHDA19', 'KHDASAPP28', 'BLOOD08-AB', 10);
commit;
--koraput blood bank stock details
--koraput_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--koraput_bloodbank_2
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKTRIN30', 'BLOOD08-AB', 10);
commit;
--koraput_bloodbank_3
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKGRAT31', 'BLOOD08-AB', 10);
commit;
--koraput_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODKORK20', 'KORKPACI32', 'BLOOD08-AB', 10);
commit;
--rayagada blood bank stock details
--rayagada_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--rayagada_bloodbank_2 
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAMEDS34', 'BLOOD08-AB', 10);
commit;
--rayagada_bloodbank_3 
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYAPINN35', 'BLOOD08-AB', 10);
commit;
--rayagada_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODRAYA27', 'RAYASERE36', 'BLOOD08-AB', 10);
commit;
--puri blood bank stock details
--puri_bloodbank_1
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'DHEALBLOO05', 'BLOOD08-AB', 10);
commit;
--puri_bloodbank_2 
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUTRAN38', 'BLOOD08-AB', 10);
commit;
--puri_bloodbank_3 
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCOMP39', 'BLOOD08-AB', 10);
commit;
--puri_bloodbank_4
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD01+O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD02-O', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD03+A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD04-A', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD05+B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD06-B', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD07+AB', 10);
insert into BLOOD_BANK(district_id, blood_bank_id, blood_group_id, quantity) values('ODPURU26', 'PURUCRES40', 'BLOOD08-AB', 10);
COMMIT;
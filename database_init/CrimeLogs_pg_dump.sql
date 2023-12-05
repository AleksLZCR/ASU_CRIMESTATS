CREATE TABLE person (
    User_id SERIAL PRIMARY KEY,
    Name VARCHAR(20),
    Location VARCHAR(50)
);


CREATE TABLE Report (
    Report_id SERIAL PRIMARY KEY,
    Name VARCHAR(40),
    Description VARCHAR(255)
);

CREATE TABLE Location (
    Location_id SERIAL PRIMARY KEY,
    Location_Name VARCHAR(60) UNIQUE
);

CREATE TABLE CrimeType (
    CrimeType_id SERIAL PRIMARY KEY,
    Crime_Type VARCHAR(60) UNIQUE
);


CREATE TABLE Status (
    Status_id SERIAL PRIMARY KEY,
    Status VARCHAR(60) UNIQUE
);


CREATE TABLE Street (
    Street_id SERIAL PRIMARY KEY,
    Street_Name VARCHAR(60) UNIQUE
);

CREATE TABLE Report_Fields (
    Field_id SERIAL PRIMARY KEY,
    Report_id INTEGER REFERENCES Report(Report_id)
);

CREATE TABLE CaseFile (
    Number CHAR(12) PRIMARY KEY,
    Time_Reported TIMESTAMP NOT NULL,
    Date_Reported DATE NOT NULL,
    Location_id INTEGER REFERENCES Location(Location_id),
    CrimeType_id INTEGER REFERENCES CrimeType(CrimeType_id),
    Status_id INTEGER REFERENCES Status(Status_id),
    Street_id INTEGER REFERENCES Street(Street_id),
    Time_Occurred TIMESTAMP,
    Date_Occurred DATE
);

CREATE TABLE Views (
    User_id INTEGER REFERENCES person(User_id),
    Report_id INTEGER REFERENCES Report(Report_id),
    Number CHAR(12) REFERENCES CaseFile(Number)
);



INSERT INTO Location (Location_id, Location_Name) VALUES (1, 'TLot 59');
INSERT INTO Location (Location_id, Location_Name) VALUES (2, 'BAC (Business Administration C-Wing)');
INSERT INTO Location (Location_id, Location_Name) VALUES (3, 'Sonora Center');
INSERT INTO Location (Location_id, Location_Name) VALUES (4, 'Art Building');
INSERT INTO Location (Location_id, Location_Name) VALUES (5, 'Carson Student Athlete Center');
INSERT INTO Location (Location_id, Location_Name) VALUES (6, 'SDFCW (Sun Devil Fitness Center West)');
INSERT INTO Location (Location_id, Location_Name) VALUES (7, 'TLot 27');
INSERT INTO Location (Location_id, Location_Name) VALUES (8, 'Manzanita Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (9, 'HAV H-Wing - Acourtia');
INSERT INTO Location (Location_id, Location_Name) VALUES (10, 'Design North');
INSERT INTO Location (Location_id, Location_Name) VALUES (11, 'HAV A-Wing - Mohave');
INSERT INTO Location (Location_id, Location_Name) VALUES (12, 'HAV B-Wing - Arroyo');
INSERT INTO Location (Location_id, Location_Name) VALUES (13, 'Hassayampa Phase 1 (West)');
INSERT INTO Location (Location_id, Location_Name) VALUES (14, 'PS Novus');
INSERT INTO Location (Location_id, Location_Name) VALUES (15, 'MAS (Mountain America E VETERANS WAY Stadium)');
INSERT INTO Location (Location_id, Location_Name) VALUES (16, 'Postino Annex');
INSERT INTO Location (Location_id, Location_Name) VALUES (17, 'Ross Blakey Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (18, 'ASUPD Tempe');
INSERT INTO Location (Location_id, Location_Name) VALUES (19, 'Manzanita Bike Racks');
INSERT INTO Location (Location_id, Location_Name) VALUES (20, 'Central Plant - Tempe');
INSERT INTO Location (Location_id, Location_Name) VALUES (21, 'The RAC (Maricopa County Animal Care & Control)');
INSERT INTO Location (Location_id, Location_Name) VALUES (22, 'Civic Space Park');
INSERT INTO Location (Location_id, Location_Name) VALUES (23, 'Post Office');
INSERT INTO Location (Location_id, Location_Name) VALUES (24, 'Health North Lot');
INSERT INTO Location (Location_id, Location_Name) VALUES (25, 'PS 7 - Packard');
INSERT INTO Location (Location_id, Location_Name) VALUES (26, 'Physical Sciences H-Wing (PSH)');
INSERT INTO Location (Location_id, Location_Name) VALUES (27, 'SDFC (Sun Devil Fitness Center Tempe)');
INSERT INTO Location (Location_id, Location_Name) VALUES (28, 'MU (Memorial Union)');
INSERT INTO Location (Location_id, Location_Name) VALUES (29, 'PS 4 - Rural');
INSERT INTO Location (Location_id, Location_Name) VALUES (30, 'Noble Science Library');
INSERT INTO Location (Location_id, Location_Name) VALUES (31, 'PS 5 - Stadium');
INSERT INTO Location (Location_id, Location_Name) VALUES (32, 'Farmer');
INSERT INTO Location (Location_id, Location_Name) VALUES (33, 'UCENT (University Center)');
INSERT INTO Location (Location_id, Location_Name) VALUES (34, 'College Avenue Marketplace');
INSERT INTO Location (Location_id, Location_Name) VALUES (35, 'Barrett Dining Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (36, 'Fusion on First');
INSERT INTO Location (Location_id, Location_Name) VALUES (37, 'Health South Parking Garage');
INSERT INTO Location (Location_id, Location_Name) VALUES (38, 'Hayden Hall West');
INSERT INTO Location (Location_id, Location_Name) VALUES (39, 'Las Casas Residence Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (40, 'Hassayampa Phase 2 (East)');
INSERT INTO Location (Location_id, Location_Name) VALUES (41, 'HAV F-Wing - Mesquite');
INSERT INTO Location (Location_id, Location_Name) VALUES (42, 'Vista POD Market Warehouse');
INSERT INTO Location (Location_id, Location_Name) VALUES (43, 'HAV C-Wing - Jojoba');
INSERT INTO Location (Location_id, Location_Name) VALUES (44, 'Greek Leadership Village Community Center');
INSERT INTO Location (Location_id, Location_Name) VALUES (45, 'PVW (Palo Verde West) E UNIVERSITY DR');
INSERT INTO Location (Location_id, Location_Name) VALUES (46, 'Tooker House');
INSERT INTO Location (Location_id, Location_Name) VALUES (47, 'Goldwater Center for Science & Engineering');
INSERT INTO Location (Location_id, Location_Name) VALUES (48, 'ASUPD DPC');
INSERT INTO Location (Location_id, Location_Name) VALUES (49, 'University Towers');
INSERT INTO Location (Location_id, Location_Name) VALUES (50, 'PS 6 - Towers');
INSERT INTO Location (Location_id, Location_Name) VALUES (51, 'Gordon Commons on Taylor');
INSERT INTO Location (Location_id, Location_Name) VALUES (52, 'Tooker POD Market');
INSERT INTO Location (Location_id, Location_Name) VALUES (53, 'Citrus Dining Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (54, 'Nelson Fine Arts Center E 10TH ST');
INSERT INTO Location (Location_id, Location_Name) VALUES (55, 'Herberger Young Scholars Academy');
INSERT INTO Location (Location_id, Location_Name) VALUES (56, 'PS 1 - Apache');
INSERT INTO Location (Location_id, Location_Name) VALUES (57, 'Bike Racks - HAV 1');
INSERT INTO Location (Location_id, Location_Name) VALUES (58, 'Memorial Union');
INSERT INTO Location (Location_id, Location_Name) VALUES (59, 'TPMall');
INSERT INTO Location (Location_id, Location_Name) VALUES (60, 'UCB (University Center Building)');
INSERT INTO Location (Location_id, Location_Name) VALUES (61, 'Villas at Vista Del Sol');
INSERT INTO Location (Location_id, Location_Name) VALUES (62, 'Creativity Commons');
INSERT INTO Location (Location_id, Location_Name) VALUES (63, 'HAV G-Wing - Verbena');
INSERT INTO Location (Location_id, Location_Name) VALUES (64, 'Casa de Oro Residence W VERDE MALL Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (65, 'Wrigley Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (66, 'Alameda Properties');
INSERT INTO Location (Location_id, Location_Name) VALUES (67, 'ISTB 7');
INSERT INTO Location (Location_id, Location_Name) VALUES (68, 'Social Sciences Building');
INSERT INTO Location (Location_id, Location_Name) VALUES (69, 'Fletcher Library');
INSERT INTO Location (Location_id, Location_Name) VALUES (70, 'Music East');
INSERT INTO Location (Location_id, Location_Name) VALUES (71, 'BCLS Parking Garage');
INSERT INTO Location (Location_id, Location_Name) VALUES (72, 'Campus Childrens Center');
INSERT INTO Location (Location_id, Location_Name) VALUES (73, 'Mullett Arena');
INSERT INTO Location (Location_id, Location_Name) VALUES (74, 'TLot 72');
INSERT INTO Location (Location_id, Location_Name) VALUES (75, 'CAC (College Avenue Commons)');
INSERT INTO Location (Location_id, Location_Name) VALUES (76, 'Tooker House B');
INSERT INTO Location (Location_id, Location_Name) VALUES (77, 'Mona Plummer Aquatic Complex');
INSERT INTO Location (Location_id, Location_Name) VALUES (78, 'Preparatory Academy Downtown');
INSERT INTO Location (Location_id, Location_Name) VALUES (79, 'McClintock Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (80, 'Life Sciences E-Wing');
INSERT INTO Location (Location_id, Location_Name) VALUES (81, 'Schwada Classroom Office Building');
INSERT INTO Location (Location_id, Location_Name) VALUES (82, 'Vista Del Sol');
INSERT INTO Location (Location_id, Location_Name) VALUES (83, 'Engineering Center D-Wing');
INSERT INTO Location (Location_id, Location_Name) VALUES (84, 'CLCC Lecture Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (85, 'Physical Sciences F-Wing (PSF)');
INSERT INTO Location (Location_id, Location_Name) VALUES (86, 'Physical Sciences D-Wing (PSD)');
INSERT INTO Location (Location_id, Location_Name) VALUES (87, 'VDS E-Wing (Vista Del Sol E-Wing)');
INSERT INTO Location (Location_id, Location_Name) VALUES (88, 'Moeur Building');
INSERT INTO Location (Location_id, Location_Name) VALUES (89, 'Cronkite');
INSERT INTO Location (Location_id, Location_Name) VALUES (90, 'Santa Catalina Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (91, 'Durham Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (92, 'SDFCD (Sun Devil Fitness Center Downtown)');
INSERT INTO Location (Location_id, Location_Name) VALUES (93, 'Palo Verde East');
INSERT INTO Location (Location_id, Location_Name) VALUES (94, 'Murdock Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (95, 'Starbucks (MU)');
INSERT INTO Location (Location_id, Location_Name) VALUES (96, 'Bike Racks West - Tooker');
INSERT INTO Location (Location_id, Location_Name) VALUES (97, 'ISTB 10');
INSERT INTO Location (Location_id, Location_Name) VALUES (98, 'TLot 46');
INSERT INTO Location (Location_id, Location_Name) VALUES (99, 'South West Fields');
INSERT INTO Location (Location_id, Location_Name) VALUES (100, 'DLot McKinley');
INSERT INTO Location (Location_id, Location_Name) VALUES (101, 'Barrett - Cereus Hall');
INSERT INTO Location (Location_id, Location_Name) VALUES (102, 'La Sala Ballroom in University Center');
INSERT INTO Location (Location_id, Location_Name) VALUES (103, 'Matthews Center');
INSERT INTO Location (Location_id, Location_Name) VALUES (104, 'Adelphi Commons 2');
INSERT INTO Location (Location_id, Location_Name) VALUES (105, 'PS UCENT');
INSERT INTO Location (Location_id, Location_Name) VALUES (106, 'Best B');
INSERT INTO Location (Location_id, Location_Name) VALUES (107, 'The Bodhi (Manzy Crepe Club)');
INSERT INTO Location (Location_id, Location_Name) VALUES (108, 'Domino''s VDS');
INSERT INTO Location (Location_id, Location_Name) VALUES (109, 'FAB (Faculty Office/Administration Building)');
INSERT INTO Location (Location_id, Location_Name) VALUES (110, 'GLV (Greek Leadership Village)');
INSERT INTO Location (Location_id, Location_Name) VALUES (111, 'VDS A-Wing (Vista Del Sol A-Wing)');
INSERT INTO Location (Location_id, Location_Name) VALUES (112, 'ISTB 3');
INSERT INTO Location (Location_id, Location_Name) VALUES (113, 'TLot 58');
INSERT INTO Location (Location_id, Location_Name) VALUES (114, 'ISTB 5');
INSERT INTO Location (Location_id, Location_Name) VALUES (115, 'Physical Sciences C-Wing (PSC)');
INSERT INTO Location (Location_id, Location_Name) VALUES (116, 'Karsten Golf Course');
INSERT INTO Location (Location_id, Location_Name) VALUES (117, 'SDFCP (Sun Devil Fitness Center Poly)');
INSERT INTO Location (Location_id, Location_Name) VALUES (118, 'TLot 59 NE');
INSERT INTO Location (Location_id, Location_Name) VALUES (119, 'Physical Sciences G-Wing (PSG)');
INSERT INTO Location (Location_id, Location_Name) VALUES (120, 'Circle K - 1st Ave');
INSERT INTO Location (Location_id, Location_Name) VALUES (121, 'AZ One Credit Union');
INSERT INTO Location (Location_id, Location_Name) VALUES (122, 'Farrington Softball Stadium');
INSERT INTO Location (Location_id, Location_Name) VALUES (123, 'ASUPD West');
INSERT INTO Location (Location_id, Location_Name) VALUES (124, 'PS 2 - Tyler');
INSERT INTO Location (Location_id, Location_Name) VALUES (125, 'DMall');
INSERT INTO Location (Location_id, Location_Name) VALUES (126, 'Hayden Library');
INSERT INTO Location (Location_id, Location_Name) VALUES (127, 'Art Museum');
INSERT INTO Location (Location_id, Location_Name) VALUES (128, 'CSB (Community Services Building)');
INSERT INTO Location (Location_id, Location_Name) VALUES (129, 'Walton Center for Planetary Health (ISTB 7)');
INSERT INTO Location (Location_id, Location_Name) VALUES (130, 'Bowl of Greens - Cronkite');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (1, 'Accident Non Injury, Hit & Run');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (2, 'Theft of Electric Bike, Scooter, or Skateboard');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (3, 'Burglary');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (4, 'Theft');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (5, 'Trespassing');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (6, 'Assault');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (7, 'Criminal Damage');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (8, 'Narcotics');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (9, 'Subject Stop');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (10, 'Alcohol Violation');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (11, 'Drunk Disturbing');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (12, 'Indecent Exposure');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (13, 'Subject Disturbing');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (14, 'Bike, Scooter or Skateboard Theft');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (15, 'Disturbance');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (16, 'Traffic Stop');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (17, 'Warrant Arrest');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (18, 'Fight');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (19, 'Forgery/Fraud');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (20, 'Subject Threatening');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (21, 'Found Property');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (22, 'Subject Harassing');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (23, 'Aggravated Assault');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (24, 'Shoplifting');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (25, 'Burglary from Vehicle');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (26, 'Information Report');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (27, 'Order of Protection Service');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (28, 'Missing Person');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (29, 'Suspicious Person');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (30, 'Domestic Fight');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (31, 'Fire Alarm');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (32, 'Disturbing Loud Party');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (33, 'Civil Matter');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (34, 'Accident Non Injury');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (35, 'Marijuana');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (36, 'Welfare Check');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (37, 'Suspicious Circumstances');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (38, 'Violation of Order of Protection');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (39, 'Unknown Trouble/911 Hang-Up');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (40, 'Lost Property');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (41, 'Driving Under the Influence');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (42, 'Fire');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (43, 'Sex Offense');
INSERT INTO CrimeType (CrimeType_id, Crime_Type) VALUES (44, 'Citizen Assist');
INSERT INTO Status (Status_id, Status) VALUES (1, 'No Solvability Factors (Inactive)');
INSERT INTO Status (Status_id, Status) VALUES (2, 'Long Formed and Booked ');
INSERT INTO Status (Status_id, Status) VALUES (3, 'Long Formed for Prosecution');
INSERT INTO Status (Status_id, Status) VALUES (4, 'BASICS/CASICS');
INSERT INTO Status (Status_id, Status) VALUES (5, 'Cited and Released');
INSERT INTO Status (Status_id, Status) VALUES (6, 'Assigned to Patrol Officer');
INSERT INTO Status (Status_id, Status) VALUES (7, 'Cited and ');
INSERT INTO Status (Status_id, Status) VALUES (8, 'Assigned to Investigations');
INSERT INTO Status (Status_id, Status) VALUES (9, 'Exceptional- Prosecution Declined');
INSERT INTO Status (Status_id, Status) VALUES (10, 'Offense Did Not Occur (Unfounded)');
INSERT INTO Status (Status_id, Status) VALUES (11, 'Pending Review- At least one solvability factor');
INSERT INTO Status (Status_id, Status) VALUES (12, 'Exceptional- Victim Refused to Cooperate');
INSERT INTO Status (Status_id, Status) VALUES (13, 'MCAO - Transmitted');
INSERT INTO Status (Status_id, Status) VALUES (14, 'Exceptional- Juvenile/No Custody');
INSERT INTO Status (Status_id, Status) VALUES (15, 'MCAO - Final');
INSERT INTO Street (Street_id, Street_Name) VALUES (1, 'S PACKARD DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (2, 'E LEMON ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (3, 'S RURAL RD');
INSERT INTO Street (Street_id, Street_Name) VALUES (4, 'S FOREST MALL');
INSERT INTO Street (Street_id, Street_Name) VALUES (5, 'E VETERANS WAY');
INSERT INTO Street (Street_id, Street_Name) VALUES (6, 'N 47TH DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (7, 'E APACHE BLVD');
INSERT INTO Street (Street_id, Street_Name) VALUES (8, 'E ORANGE ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (9, 'E UNIVERSITY DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (10, 'S MCALLISTER AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (11, 'S COLLEGE AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (12, 'W /B I 10');
INSERT INTO Street (Street_id, Street_Name) VALUES (13, 'W RIO SALADO PKWY');
INSERT INTO Street (Street_id, Street_Name) VALUES (14, 'N CENTRAL AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (15, 'N 3RD ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (16, 'E ORANGE MALL');
INSERT INTO Street (Street_id, Street_Name) VALUES (17, 'E TYLER MALL');
INSERT INTO Street (Street_id, Street_Name) VALUES (18, 'N 1ST AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (19, 'S FOREST AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (20, 'N 49TH AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (21, 'E 6TH ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (22, 'E TAYLOR ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (23, 'E SUN DEVIL MALL');
INSERT INTO Street (Street_id, Street_Name) VALUES (24, 'W UNIVERSITY WAY N');
INSERT INTO Street (Street_id, Street_Name) VALUES (25, 'N 47TH AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (26, 'S CADY MALL');
INSERT INTO Street (Street_id, Street_Name) VALUES (27, 'W ALAMEDA DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (28, 'E RIO SALADO PKWY');
INSERT INTO Street (Street_id, Street_Name) VALUES (29, 'E GAMMAGE PKWY');
INSERT INTO Street (Street_id, Street_Name) VALUES (30, 'S TERRACE RD');
INSERT INTO Street (Street_id, Street_Name) VALUES (31, 'N 2ND ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (32, 'N 1ST AVE-5063750637');
INSERT INTO Street (Street_id, Street_Name) VALUES (33, 'E FILLMORE ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (34, 'S PALM WALK');
INSERT INTO Street (Street_id, Street_Name) VALUES (35, 'N 46TH DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (36, 'E ROOSEVELT ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (37, 'E SONORAN ARROYO MALL');
INSERT INTO Street (Street_id, Street_Name) VALUES (38, 'S NORMAL AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (39, 'S MILL AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (40, 'AZ LOOP 202');
INSERT INTO Street (Street_id, Street_Name) VALUES (41, 'W WOOD DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (42, 'N 1ST ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (43, 'S SUNSET DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (44, 'W THUNDERBIRD RD');
INSERT INTO Street (Street_id, Street_Name) VALUES (45, 'E INNOVATION WAY S');
INSERT INTO Street (Street_id, Street_Name) VALUES (46, 'S MYRTLE AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (47, 'W CONCORDA DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (48, 'E BROADMOR DR');
INSERT INTO Street (Street_id, Street_Name) VALUES (49, 'E SPENCE AVE');
INSERT INTO Street (Street_id, Street_Name) VALUES (50, 'S ATHLETES PL');
INSERT INTO Street (Street_id, Street_Name) VALUES (51, 'E 10TH ST');
INSERT INTO Street (Street_id, Street_Name) VALUES (52, 'E CURRY RD');
INSERT INTO Street (Street_id, Street_Name) VALUES (53, 'W UNIVERSITY DR');

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02228', '2023-09-11 22:24:00', '2023-09-11', 1, 1, 1, 1, '2023-09-11 08:45:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02227', '2023-09-11 20:29:00', '2023-09-11', 2, 2, 1, 2, '2023-09-11 18:00:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02226', '2023-09-11 17:55:00', '2023-09-11', 3, 3, 1, 3, '2023-09-11 01:00:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02222', '2023-09-11 13:39:00', '2023-09-11', 4, 2, 1, 4, '2023-09-11 10:00:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02221', '2023-09-11 12:26:00', '2023-09-11', 5, 2, 1, 5, '2023-09-11 10:40:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02220', '2023-09-11 10:44:00', '2023-09-11', 6, 4, 1, 6, '2023-09-08 12:00:00', '2023-09-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02219', '2023-09-11 09:14:00', '2023-09-11', NULL, 5, 2, 7, '2023-09-11 09:14:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02218', '2023-09-11 03:08:00', '2023-09-11', 7, 1, 1, 8, '2023-09-11 03:08:00', '2023-09-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02214', '2023-09-10 19:48:00', '2023-09-10', 8, 6, 1, 9, '2023-09-10 19:35:00', '2023-09-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02213', '2023-09-10 14:37:00', '2023-09-10', 9, 7, 1, 2, '2023-09-08 14:37:00', '2023-09-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02210', '2023-09-10 09:40:00', '2023-09-10', 10, 8, 3, 4, '2023-09-10 09:40:00', '2023-09-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02208', '2023-09-10 03:32:00', '2023-09-10', 11, 7, 1, 10, '2023-09-10 03:32:00', '2023-09-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02207', '2023-09-10 02:39:00', '2023-09-10', 12, 7, 1, 10, '2023-09-09 19:00:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02206', '2023-09-10 00:52:00', '2023-09-10', 13, 9, 4, 10, '2023-09-10 00:52:00', '2023-09-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02204', '2023-09-09 22:37:00', '2023-09-09', 14, 10, 4, 1, '2023-09-09 22:37:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02200', '2023-09-09 20:32:00', '2023-09-09', 15, 9, 5, NULL, '2023-09-09 20:30:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02198', '2023-09-09 19:36:00', '2023-09-09', 15, 11, 5, NULL, '2023-09-09 19:36:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02195', '2023-09-09 09:57:00', '2023-09-09', 16, 12, 5, 11, '2023-09-09 09:57:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02193', '2023-09-09 01:21:00', '2023-09-09', 9, 13, 5, 2, '2023-09-09 01:21:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02192', '2023-09-09 00:25:00', '2023-09-09', 17, 11, 4, 10, '2023-09-09 00:25:00', '2023-09-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02191', '2023-09-09 00:02:00', '2023-09-09', 13, 7, 1, 10, '2023-09-07 22:30:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02190', '2023-09-08 23:18:00', '2023-09-08', 13, 7, 1, 10, '2023-09-07 10:30:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02189', '2023-09-08 19:45:00', '2023-09-08', 13, 7, 1, 10, '2023-09-08 18:00:00', '2023-09-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02187', '2023-09-08 16:42:00', '2023-09-08', 10, 2, 1, 4, '2023-09-08 12:00:00', '2023-09-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02186', '2023-09-08 14:53:00', '2023-09-08', 18, 4, 6, 7, '2023-08-29 17:30:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02185', '2023-09-08 13:36:00', '2023-09-08', 19, 14, 1, 9, '2023-09-05 00:00:00', '2023-09-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02182', '2023-09-08 10:42:00', '2023-09-08', 20, 7, 1, 8, '2023-09-08 09:30:00', '2023-09-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02181', '2023-09-08 04:45:00', '2023-09-08', 13, 15, 6, 10, '2023-09-08 04:45:00', '2023-09-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02177', '2023-09-07 23:55:00', '2023-09-07', 13, 11, 4, 10, '2023-09-07 23:55:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02176', '2023-09-07 23:39:00', '2023-09-07', NULL, 16, 5, 12, '2023-09-07 23:39:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02178', '2023-09-07 23:15:00', '2023-09-07', 21, 17, 7, 13, '2023-09-07 23:15:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02175', '2023-09-07 23:01:00', '2023-09-07', 22, 18, 5, 14, '2023-09-07 23:01:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02174', '2023-09-07 20:10:00', '2023-09-07', 23, 9, 7, 14, '2023-09-07 20:10:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02173', '2023-09-07 19:47:00', '2023-09-07', 24, 1, 1, 15, '2023-09-07 18:31:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02171', '2023-09-07 16:47:00', '2023-09-07', 25, 1, 1, 1, '2023-09-07 16:47:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02169', '2023-09-07 13:38:00', '2023-09-07', 12, 19, 8, 10, '2023-09-06 13:36:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02167', '2023-09-07 10:52:00', '2023-09-07', 23, 8, 2, 14, '2023-09-07 10:52:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02168', '2023-09-07 10:41:00', '2023-09-07', 26, 2, 1, 9, '2023-09-07 10:41:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02166', '2023-09-07 06:26:00', '2023-09-07', 14, 4, 1, 1, '2023-09-07 03:06:00', '2023-09-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02165', '2023-09-06 20:11:00', '2023-09-06', 27, 2, 1, 7, '2023-09-06 19:15:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02164', '2023-09-06 19:36:00', '2023-09-06', 28, 20, 6, 16, '2023-09-06 18:05:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02163', '2023-09-06 17:11:00', '2023-09-06', 27, 4, 1, 7, '2023-09-05 10:00:00', '2023-09-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02162', '2023-09-06 13:51:00', '2023-09-06', 29, 1, 1, 3, '2023-09-06 08:15:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02160', '2023-09-06 13:38:00', '2023-09-06', 30, 14, 1, 17, '2023-09-06 08:00:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02159', '2023-09-06 12:08:00', '2023-09-06', 29, 1, 1, 3, '2023-09-06 10:00:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02158', '2023-09-06 00:16:00', '2023-09-06', NULL, 9, 5, 3, '2023-09-06 00:16:00', '2023-09-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02157', '2023-09-05 22:38:00', '2023-09-05', 31, 1, 1, 5, '2023-09-05 19:45:00', '2023-09-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02151', '2023-09-05 15:27:00', '2023-09-05', 32, 4, 1, 4, '2023-08-29 17:30:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02147', '2023-09-05 12:59:00', '2023-09-05', NULL, 21, 1, 7, '2023-08-29 12:00:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02146', '2023-09-05 11:57:00', '2023-09-05', 32, 14, 1, 4, '2023-09-05 08:45:00', '2023-09-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02143', '2023-09-05 11:06:00', '2023-09-05', 33, 4, 1, 14, '2023-09-01 17:00:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02142', '2023-09-05 08:31:00', '2023-09-05', 28, 4, 1, 16, '2023-08-21 14:00:00', '2023-08-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02141', '2023-09-05 07:46:00', '2023-09-05', 34, 4, 1, 11, '2023-09-05 07:35:00', '2023-09-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02145', '2023-09-05 07:15:00', '2023-09-05', 19, 14, 1, 9, '2023-09-04 20:30:00', '2023-09-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02138', '2023-09-04 21:13:00', '2023-09-04', 35, 2, 1, 2, '2023-09-04 16:00:00', '2023-09-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02137', '2023-09-04 19:08:00', '2023-09-04', 13, 7, 1, 10, '2023-09-04 01:00:00', '2023-09-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02136', '2023-09-04 17:45:00', '2023-09-04', 36, 1, 1, 18, '2023-09-04 17:45:00', '2023-09-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02135', '2023-09-04 17:41:00', '2023-09-04', 37, 1, 1, 15, '2023-09-04 16:00:00', '2023-09-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02134', '2023-09-04 00:02:00', '2023-09-04', 38, 6, 9, 19, '2023-09-04 00:00:00', '2023-09-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02133', '2023-09-03 20:22:00', '2023-09-03', 27, 22, 10, 7, '2023-09-03 19:50:00', '2023-09-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02131', '2023-09-03 14:12:00', '2023-09-03', 27, 4, 1, 7, '2023-09-03 12:30:00', '2023-09-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02130', '2023-09-03 13:55:00', '2023-09-03', 12, 7, 1, 10, '2023-09-02 22:00:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02126', '2023-09-03 03:22:00', '2023-09-03', 39, 22, 8, 20, '2023-09-03 03:22:00', '2023-09-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02127', '2023-09-03 02:54:00', '2023-09-03', 40, 23, 8, 2, '2023-09-03 02:45:00', '2023-09-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02125', '2023-09-03 01:28:00', '2023-09-03', 41, 7, 1, 2, '2023-09-02 22:10:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02124', '2023-09-03 00:48:00', '2023-09-03', 40, 6, 3, 2, '2023-09-03 00:48:00', '2023-09-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02123', '2023-09-03 00:01:00', '2023-09-03', 11, 7, 1, 10, '2023-09-03 00:01:00', '2023-09-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02121', '2023-09-02 21:46:00', '2023-09-02', 42, 24, 1, 7, '2023-09-02 21:46:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02120', '2023-09-02 21:37:00', '2023-09-02', 6, 2, 1, 6, '2023-09-02 21:37:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02119', '2023-09-02 20:45:00', '2023-09-02', 43, 7, 1, 10, '2023-09-02 20:45:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02116', '2023-09-02 17:14:00', '2023-09-02', 44, 8, 5, 3, '2023-09-02 17:14:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02115', '2023-09-02 12:52:00', '2023-09-02', 27, 14, 1, 7, '2023-09-02 11:00:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02113', '2023-09-02 01:07:00', '2023-09-02', 9, 7, 8, 2, '2023-09-02 01:07:00', '2023-09-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02111', '2023-09-01 23:36:00', '2023-09-01', 13, 7, 1, 10, '2023-09-01 23:36:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02112', '2023-09-01 22:54:00', '2023-09-01', 45, 14, 2, NULL, '2023-09-01 23:51:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02110', '2023-09-01 21:07:00', '2023-09-01', 46, 4, 1, 9, '2023-09-01 20:37:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02109', '2023-09-01 16:59:00', '2023-09-01', 14, 25, 1, 1, '2023-08-30 15:00:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02107', '2023-09-01 15:27:00', '2023-09-01', 14, 7, 1, 1, '2023-08-28 09:00:00', '2023-08-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02108', '2023-09-01 15:15:00', '2023-09-01', 47, 26, 1, 17, '2023-09-01 15:15:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02106', '2023-09-01 14:54:00', '2023-09-01', 48, 27, 6, 14, '2023-08-16 12:00:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02105', '2023-09-01 10:43:00', '2023-09-01', 49, 5, 1, 19, '2023-05-30 08:00:00', '2023-05-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02104', '2023-09-01 09:56:00', '2023-09-01', 50, 25, 1, 21, '2023-08-31 22:00:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02102', '2023-09-01 08:19:00', '2023-09-01', 51, 22, 8, 22, '2023-08-31 15:00:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02100', '2023-09-01 04:54:00', '2023-09-01', 27, 7, 1, 7, '2023-09-01 04:54:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02099', '2023-09-01 01:34:00', '2023-09-01', 9, 7, 1, 2, '2023-09-01 01:34:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02098', '2023-09-01 00:51:00', '2023-09-01', 29, 9, 4, 3, '2023-09-01 00:51:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02097', '2023-09-01 00:31:00', '2023-09-01', 52, 24, 5, 9, '2023-09-01 00:31:00', '2023-09-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02095', '2023-08-31 22:26:00', '2023-08-31', 15, 4, 1, NULL, '2023-08-31 22:26:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02094', '2023-08-31 21:50:00', '2023-08-31', 46, 12, 4, 9, '2023-08-31 21:50:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02093', '2023-08-31 20:10:00', '2023-08-31', 53, 24, 5, 23, '2023-08-31 20:10:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02092', '2023-08-31 20:05:00', '2023-08-31', 54, 7, 1, NULL, '2023-08-30 18:00:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02091', '2023-08-31 19:44:00', '2023-08-31', 34, 2, 11, 11, '2023-08-31 11:00:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02088', '2023-08-31 13:30:00', '2023-08-31', 55, 6, 12, 24, '2023-08-29 08:00:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02085', '2023-08-31 12:01:00', '2023-08-31', 56, 1, 1, 2, '2023-08-20 18:00:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02084', '2023-08-31 11:25:00', '2023-08-31', 57, 2, 1, 10, '2023-08-30 18:30:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02087', '2023-08-31 09:45:00', '2023-08-31', 58, 2, 1, 16, '2023-08-31 13:00:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02083', '2023-08-31 09:20:00', '2023-08-31', 59, 20, 2, 22, '2023-08-31 09:20:00', '2023-08-31');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02078', '2023-08-30 21:25:00', '2023-08-30', 54, 4, 1, NULL, '2023-08-30 20:45:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02074', '2023-08-30 17:35:00', '2023-08-30', 60, 28, 1, 25, '2023-08-30 17:35:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02072', '2023-08-30 17:14:00', '2023-08-30', 61, 29, 2, 7, '2023-08-30 17:14:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02071', '2023-08-30 17:04:00', '2023-08-30', 18, 20, 8, 7, '2023-08-30 01:56:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02070', '2023-08-30 15:48:00', '2023-08-30', 51, 24, 5, 22, '2023-08-30 15:48:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02067', '2023-08-30 12:58:00', '2023-08-30', 62, 19, 1, 8, '2023-08-30 09:15:00', '2023-08-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02066', '2023-08-29 22:51:00', '2023-08-29', 63, 7, 3, 2, '2023-08-29 22:40:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02065', '2023-08-29 22:41:00', '2023-08-29', 64, 20, 10, NULL, '2023-08-29 22:41:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02064', '2023-08-29 20:51:00', '2023-08-29', 65, 29, 5, 26, '2023-08-29 20:51:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02062', '2023-08-29 18:28:00', '2023-08-29', 66, 4, 1, 27, '2023-08-29 10:00:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02061', '2023-08-29 18:01:00', '2023-08-29', NULL, 16, 5, 28, '2023-08-29 18:01:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02060', '2023-08-29 16:45:00', '2023-08-29', 67, 17, 3, 9, '2023-08-29 16:45:00', '2023-08-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02058', '2023-08-29 11:07:00', '2023-08-29', 68, 4, 1, 26, '2023-08-26 17:00:00', '2023-08-26');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02056', '2023-08-28 23:05:00', '2023-08-28', 23, 8, 5, 14, '2023-08-28 23:05:00', '2023-08-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02051', '2023-08-28 18:17:00', '2023-08-28', 63, 7, 1, 2, '2023-08-28 06:00:00', '2023-08-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02050', '2023-08-28 17:11:00', '2023-08-28', 69, 2, 1, 25, '2023-08-28 16:00:00', '2023-08-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02049', '2023-08-28 16:42:00', '2023-08-28', 70, 2, 1, 29, '2023-08-24 16:30:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02048', '2023-08-28 15:23:00', '2023-08-28', 71, 7, 6, 22, '2023-08-28 13:39:00', '2023-08-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02045', '2023-08-28 09:12:00', '2023-08-28', 72, 3, 1, 30, '2023-08-25 17:00:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02042', '2023-08-27 21:54:00', '2023-08-27', NULL, 30, 2, 31, '2023-08-27 21:54:00', '2023-08-27');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02033', '2023-08-27 01:09:00', '2023-08-27', 46, 4, 11, 9, '2023-08-27 01:09:00', '2023-08-27');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02034', '2023-08-27 00:47:00', '2023-08-27', 73, 25, 1, 1, '2023-08-27 00:47:00', '2023-08-27');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02031', '2023-08-27 00:32:00', '2023-08-27', 74, 1, 1, 3, '2023-08-25 21:00:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02030', '2023-08-27 00:13:00', '2023-08-27', 17, 29, 5, 10, '2023-08-27 00:13:00', '2023-08-27');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02025', '2023-08-26 21:03:00', '2023-08-26', 75, 14, 11, 11, '2023-08-26 19:01:00', '2023-08-26');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02024', '2023-08-26 16:05:00', '2023-08-26', 76, 4, 1, 9, '2023-08-25 03:00:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02022', '2023-08-26 15:07:00', '2023-08-26', 46, 4, 1, 9, '2023-08-24 16:30:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02021', '2023-08-26 13:32:00', '2023-08-26', 9, 7, 1, 2, '2023-08-26 01:00:00', '2023-08-26');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02018', '2023-08-26 01:58:00', '2023-08-26', NULL, 18, 5, 19, '2023-08-26 01:58:00', '2023-08-26');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02017', '2023-08-26 01:34:00', '2023-08-26', 11, 31, 1, 10, '2023-08-26 01:34:00', '2023-08-26');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02015', '2023-08-25 23:22:00', '2023-08-25', 77, 5, 5, 11, '2023-08-25 23:22:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02014', '2023-08-25 22:33:00', '2023-08-25', 11, 32, 5, 10, '2023-08-25 22:33:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02013', '2023-08-25 22:28:00', '2023-08-25', 9, 7, 1, 2, '2023-08-25 22:19:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02011', '2023-08-25 20:46:00', '2023-08-25', 6, 4, 1, 6, '2023-08-24 16:30:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02009', '2023-08-25 16:31:00', '2023-08-25', 51, 19, 8, 22, '2023-08-25 11:30:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02007', '2023-08-25 13:44:00', '2023-08-25', 46, 19, 1, 9, '2023-08-25 13:44:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02005', '2023-08-25 11:29:00', '2023-08-25', 2, 2, 1, 2, '2023-08-25 08:30:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02004', '2023-08-25 10:16:00', '2023-08-25', 36, 29, 2, 32, '2023-08-25 10:16:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02002', '2023-08-25 09:26:00', '2023-08-25', 78, 6, 12, 33, '2023-08-24 09:00:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-02000', '2023-08-25 07:19:00', '2023-08-25', 10, 5, 13, 4, '2023-08-25 07:19:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01998', '2023-08-25 00:17:00', '2023-08-25', 39, 22, 8, 20, '2023-08-25 00:17:00', '2023-08-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01995', '2023-08-24 22:24:00', '2023-08-24', NULL, 33, 5, 10, '2023-08-24 22:24:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01994', '2023-08-24 22:02:00', '2023-08-24', 23, 8, 2, 14, '2023-08-24 22:02:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01993', '2023-08-24 21:08:00', '2023-08-24', 79, 32, 4, 4, '2023-08-24 21:08:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01990', '2023-08-24 16:49:00', '2023-08-24', 80, 14, 1, 17, '2023-08-23 13:00:00', '2023-08-23');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01987', '2023-08-24 14:55:00', '2023-08-24', 51, 30, 12, 22, '2023-08-24 14:30:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01986', '2023-08-24 13:30:00', '2023-08-24', 74, 1, 1, 3, '2023-08-24 09:00:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01985', '2023-08-24 12:51:00', '2023-08-24', 81, 34, 11, 8, '2023-08-24 11:50:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01984', '2023-08-24 11:01:00', '2023-08-24', 78, 6, 12, 33, '2023-08-24 10:00:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01983', '2023-08-24 10:09:00', '2023-08-24', 82, 1, 5, 7, '2023-08-24 05:53:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01981', '2023-08-24 02:41:00', '2023-08-24', 83, 15, 8, 34, '2023-08-24 02:41:00', '2023-08-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01979', '2023-08-23 21:52:00', '2023-08-23', 14, 7, 1, 1, '2023-08-23 19:30:00', '2023-08-23');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01978', '2023-08-23 19:55:00', '2023-08-23', 29, 1, 1, 3, '2023-08-23 08:21:00', '2023-08-23');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01977', '2023-08-23 17:54:00', '2023-08-23', 27, 4, 1, 7, '2023-08-23 16:30:00', '2023-08-23');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01976', '2023-08-23 16:28:00', '2023-08-23', 84, 2, 1, 35, '2023-08-23 12:55:00', '2023-08-23');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01975', '2023-08-23 14:51:00', '2023-08-23', 75, 2, 1, 11, '2023-08-23 11:00:00', '2023-08-23');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01974', '2023-08-23 12:40:00', '2023-08-23', 85, 2, 1, 17, '2023-08-22 16:30:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01971', '2023-08-23 09:24:00', '2023-08-23', 78, 6, 10, 33, '2023-08-22 14:15:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01968', '2023-08-23 07:27:00', '2023-08-23', 86, 3, 1, 34, '2023-08-18 17:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01965', '2023-08-22 23:48:00', '2023-08-22', 13, 7, 6, 10, '2023-08-22 23:48:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01964', '2023-08-22 23:20:00', '2023-08-22', 14, 1, 1, 1, '2023-08-21 23:00:00', '2023-08-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01963', '2023-08-22 23:00:00', '2023-08-22', 36, 5, 5, 18, '2023-08-22 23:00:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01962', '2023-08-22 22:57:00', '2023-08-22', 58, 4, 1, 16, '2023-08-22 17:00:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01961', '2023-08-22 22:37:00', '2023-08-22', 19, 14, 1, 9, '2023-08-18 18:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01958', '2023-08-22 19:11:00', '2023-08-22', NULL, 1, 1, 10, '2023-08-22 07:10:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01955', '2023-08-22 17:10:00', '2023-08-22', NULL, 1, 6, 3, '2023-08-22 08:30:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01953', '2023-08-22 12:04:00', '2023-08-22', 76, 19, 1, 9, '2023-08-14 12:40:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01952', '2023-08-22 08:54:00', '2023-08-22', 87, 19, 1, 7, '2023-08-18 20:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01951', '2023-08-22 06:54:00', '2023-08-22', 88, 18, 12, 16, '2023-08-22 04:30:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01950', '2023-08-22 05:11:00', '2023-08-22', NULL, 16, 5, 36, '2023-08-22 05:11:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01948', '2023-08-22 00:58:00', '2023-08-22', 13, 6, 5, 10, '2023-08-22 00:58:00', '2023-08-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01943', '2023-08-21 17:55:00', '2023-08-21', 89, 29, 5, 14, '2023-08-21 17:55:00', '2023-08-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01941', '2023-08-21 14:40:00', '2023-08-21', 56, 1, 1, 2, '2023-08-21 10:50:00', '2023-08-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01938', '2023-08-21 13:20:00', '2023-08-21', 90, 7, 1, 37, '2023-08-18 17:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01937', '2023-08-21 10:30:00', '2023-08-21', 36, 4, 1, 18, '2023-08-21 10:01:00', '2023-08-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01936', '2023-08-21 08:47:00', '2023-08-21', 91, 4, 1, 26, '2023-08-09 17:00:00', '2023-08-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01934', '2023-08-20 23:02:00', '2023-08-20', 38, 10, 5, 19, '2023-08-20 23:02:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01931', '2023-08-20 19:53:00', '2023-08-20', 27, 2, 1, 7, '2023-08-20 16:50:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01929', '2023-08-20 17:04:00', '2023-08-20', 92, 2, 11, 18, '2023-08-20 16:39:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01925', '2023-08-20 15:41:00', '2023-08-20', 51, 4, 1, 22, '2023-08-20 16:00:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01924', '2023-08-20 13:15:00', '2023-08-20', 93, 4, 1, 9, '2023-08-19 23:00:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01922', '2023-08-20 12:22:00', '2023-08-20', 94, 4, 1, 16, '2023-08-18 09:55:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01921', '2023-08-20 04:59:00', '2023-08-20', 27, 10, 4, 7, '2023-08-20 04:59:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01920', '2023-08-20 04:31:00', '2023-08-20', 95, 10, 4, 38, '2023-08-20 04:31:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01919', '2023-08-20 02:26:00', '2023-08-20', 9, 10, 4, 2, '2023-08-20 02:26:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01918', '2023-08-20 01:55:00', '2023-08-20', 63, 9, 5, 2, '2023-08-20 01:55:00', '2023-08-20');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01914', '2023-08-19 22:58:00', '2023-08-19', 31, 35, 4, 5, '2023-08-19 22:58:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01912', '2023-08-19 22:17:00', '2023-08-19', 9, 9, 4, 2, '2023-08-19 22:17:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01910', '2023-08-19 19:53:00', '2023-08-19', 40, 36, 4, 2, '2023-08-19 19:53:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01909', '2023-08-19 14:54:00', '2023-08-19', NULL, 4, 12, 39, '2023-08-19 14:54:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01908', '2023-08-19 13:07:00', '2023-08-19', 14, 25, 1, 1, '2023-08-16 18:20:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01907', '2023-08-19 12:44:00', '2023-08-19', 8, 4, 1, 9, '2023-08-19 00:30:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01906', '2023-08-19 12:39:00', '2023-08-19', 36, 22, 5, 18, '2023-08-19 12:39:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01905', '2023-08-19 12:22:00', '2023-08-19', 96, 14, 1, 9, '2023-08-18 00:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01899', '2023-08-19 01:45:00', '2023-08-19', 38, 10, 5, 19, '2023-08-19 01:45:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01896', '2023-08-19 00:01:00', '2023-08-19', NULL, 16, 5, 9, '2023-08-19 00:01:00', '2023-08-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01893', '2023-08-18 23:33:00', '2023-08-18', 9, 7, 1, 2, '2023-08-18 01:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01901', '2023-08-18 23:32:00', '2023-08-18', NULL, 9, 4, 10, '2023-08-18 23:32:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01892', '2023-08-18 23:14:00', '2023-08-18', 11, 9, 5, 10, '2023-08-18 23:14:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01891', '2023-08-18 22:20:00', '2023-08-18', 41, 10, 5, 2, '2023-08-18 22:20:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01890', '2023-08-18 21:36:00', '2023-08-18', NULL, 10, 4, 5, '2023-08-18 21:36:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01887', '2023-08-18 19:08:00', '2023-08-18', 46, 20, 1, 9, '2023-08-18 19:08:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01885', '2023-08-18 13:19:00', '2023-08-18', 97, 4, 1, 26, '2023-08-18 09:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01884', '2023-08-18 12:23:00', '2023-08-18', 98, 1, 1, 9, '2023-08-18 08:00:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01883', '2023-08-18 11:30:00', '2023-08-18', 8, 2, 1, 9, '2023-08-16 15:00:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01882', '2023-08-18 09:49:00', '2023-08-18', 9, 7, 1, 2, '2023-08-17 22:00:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01881', '2023-08-18 06:07:00', '2023-08-18', 33, 37, 11, 14, '2023-08-18 06:07:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01880', '2023-08-18 01:47:00', '2023-08-18', NULL, 16, 5, 40, '2023-08-18 01:47:00', '2023-08-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01878', '2023-08-17 23:50:00', '2023-08-17', 14, 10, 5, 1, '2023-08-17 23:50:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01876', '2023-08-17 22:01:00', '2023-08-17', 99, 23, 8, 41, '2023-08-17 21:45:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01873', '2023-08-17 15:30:00', '2023-08-17', 25, 1, 1, 1, '2023-08-17 15:30:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01872', '2023-08-17 13:37:00', '2023-08-17', 56, 1, 1, 2, '2023-08-17 13:37:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01871', '2023-08-17 13:02:00', '2023-08-17', 78, 6, 14, 33, '2023-08-17 09:00:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01869', '2023-08-17 12:14:00', '2023-08-17', 39, 7, 1, 20, '2023-08-07 06:00:00', '2023-08-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01866', '2023-08-17 10:18:00', '2023-08-17', 100, 1, 1, 42, '2023-08-16 14:00:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01867', '2023-08-17 10:14:00', '2023-08-17', 78, 6, 10, 33, '2023-08-11 08:00:00', '2023-08-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01863', '2023-08-17 09:01:00', '2023-08-17', 59, 22, 1, 22, '2023-08-17 08:50:00', '2023-08-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01861', '2023-08-16 23:24:00', '2023-08-16', 101, 3, 1, 7, '2023-08-16 23:24:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01859', '2023-08-16 21:33:00', '2023-08-16', 27, 14, 1, 7, '2023-08-16 21:33:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01858', '2023-08-16 18:10:00', '2023-08-16', 102, 22, 1, 25, '2022-11-01 12:00:00', '2022-11-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01857', '2023-08-16 11:21:00', '2023-08-16', 67, 12, 2, 9, '2023-08-16 11:21:00', '2023-08-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01856', '2023-08-16 10:24:00', '2023-08-16', 103, 4, 1, 26, '2023-08-10 09:00:00', '2023-08-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01854', '2023-08-16 09:04:00', '2023-08-16', 78, 6, 12, 33, '2023-08-11 09:04:00', '2023-08-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01851', '2023-08-15 23:46:00', '2023-08-15', 40, 7, 1, 2, '2023-08-15 23:46:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01850', '2023-08-15 23:13:00', '2023-08-15', 27, 10, 4, 7, '2023-08-15 23:13:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01848', '2023-08-15 18:27:00', '2023-08-15', NULL, 38, 1, 1, '2023-08-15 10:00:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01844', '2023-08-15 16:14:00', '2023-08-15', NULL, 7, 1, 2, '2023-08-14 22:00:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01845', '2023-08-15 16:09:00', '2023-08-15', NULL, 7, 1, 2, '2023-08-15 16:09:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01843', '2023-08-15 15:33:00', '2023-08-15', NULL, 7, 1, 2, '2023-08-15 05:00:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01841', '2023-08-15 11:22:00', '2023-08-15', 64, 14, 1, NULL, '2023-08-14 21:30:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01838', '2023-08-15 10:55:00', '2023-08-15', 19, 14, 1, 9, '2023-08-14 18:10:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01839', '2023-08-15 10:32:00', '2023-08-15', 104, 14, 1, 43, '2023-08-15 00:10:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01836', '2023-08-15 03:45:00', '2023-08-15', NULL, 9, 2, 5, '2023-08-15 03:45:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01837', '2023-08-15 03:41:00', '2023-08-15', 104, 14, 1, 43, '2023-08-15 03:41:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01835', '2023-08-15 00:22:00', '2023-08-15', NULL, 7, 1, 2, '2023-08-15 00:22:00', '2023-08-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01834', '2023-08-14 23:25:00', '2023-08-14', NULL, 7, 1, 2, '2023-08-14 23:10:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01831', '2023-08-14 22:55:00', '2023-08-14', 9, 7, 1, 2, '2023-08-14 22:55:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01832', '2023-08-14 22:50:00', '2023-08-14', 105, 8, 3, 42, '2023-08-14 22:50:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01830', '2023-08-14 22:47:00', '2023-08-14', 106, 10, 4, 19, '2023-08-14 22:47:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01827', '2023-08-14 16:10:00', '2023-08-14', NULL, 7, 1, 2, '2023-08-13 20:30:00', '2023-08-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01825', '2023-08-14 13:10:00', '2023-08-14', 19, 2, 1, 9, '2023-08-13 14:00:00', '2023-08-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01824', '2023-08-14 09:49:00', '2023-08-14', 78, 20, 10, 33, '2023-08-14 07:40:00', '2023-08-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01823', '2023-08-13 22:19:00', '2023-08-13', 107, 36, 3, 5, '2023-08-13 22:19:00', '2023-08-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01818', '2023-08-13 07:26:00', '2023-08-13', NULL, 9, 5, 44, '2023-08-13 07:26:00', '2023-08-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01809', '2023-08-11 20:17:00', '2023-08-11', 108, 6, 5, 7, '2023-08-11 20:17:00', '2023-08-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01811', '2023-08-11 19:54:00', '2023-08-11', 109, 39, 11, 25, '2023-08-11 19:54:00', '2023-08-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01801', '2023-08-10 23:31:00', '2023-08-10', NULL, 16, 5, 3, '2023-08-10 23:31:00', '2023-08-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01796', '2023-08-10 03:03:00', '2023-08-10', 23, 8, 3, 14, '2023-08-10 03:03:00', '2023-08-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01794', '2023-08-09 23:25:00', '2023-08-09', 110, 10, 5, 3, '2023-08-09 23:25:00', '2023-08-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01791', '2023-08-09 11:26:00', '2023-08-09', 111, 7, 10, 7, '2023-08-09 09:20:00', '2023-08-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01790', '2023-08-09 08:26:00', '2023-08-09', 112, 3, 1, 45, '2023-08-04 13:00:00', '2023-08-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01784', '2023-08-08 11:44:00', '2023-08-08', NULL, 1, 1, 3, '2023-08-08 08:30:00', '2023-08-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01777', '2023-08-06 01:55:00', '2023-08-06', NULL, 9, 5, 46, '2023-08-06 01:55:00', '2023-08-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01770', '2023-08-05 00:09:00', '2023-08-05', 113, 1, 1, 1, '2023-08-05 00:09:00', '2023-08-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01768', '2023-08-04 16:50:00', '2023-08-04', 61, 40, 1, 7, '2023-07-21 12:00:00', '2023-07-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01766', '2023-08-04 10:52:00', '2023-08-04', 56, 19, 1, 2, '2023-08-02 10:30:00', '2023-08-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01764', '2023-08-04 02:22:00', '2023-08-04', NULL, 5, 5, 5, '2023-08-04 02:22:00', '2023-08-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01757', '2023-08-02 10:50:00', '2023-08-02', 114, 4, 1, 17, '2023-07-10 10:50:00', '2023-07-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01756', '2023-08-01 22:23:00', '2023-08-01', NULL, 16, 3, 3, '2023-08-01 22:23:00', '2023-08-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01755', '2023-08-01 21:56:00', '2023-08-01', 23, 9, 2, 14, '2023-08-01 21:56:00', '2023-08-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01747', '2023-07-31 10:15:00', '2023-07-31', 115, 4, 1, 34, '2023-07-28 17:30:00', '2023-07-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01744', '2023-07-30 01:52:00', '2023-07-30', 46, 30, 2, 9, '2023-07-30 01:52:00', '2023-07-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01741', '2023-07-29 02:26:00', '2023-07-29', 100, 5, 1, 42, '2023-07-28 23:00:00', '2023-07-28');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01742', '2023-07-29 02:13:00', '2023-07-29', NULL, 41, 3, 47, '2023-07-29 02:13:00', '2023-07-29');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01732', '2023-07-27 07:04:00', '2023-07-27', 23, 8, 5, 14, '2023-07-27 07:04:00', '2023-07-27');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01727', '2023-07-25 20:49:00', '2023-07-25', 116, 42, 1, 28, '2023-07-25 20:49:00', '2023-07-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01726', '2023-07-25 20:38:00', '2023-07-25', 23, 36, 5, 14, '2023-07-25 20:38:00', '2023-07-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01724', '2023-07-25 13:42:00', '2023-07-25', 117, 43, 12, 23, '2023-07-25 13:42:00', '2023-07-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01723', '2023-07-25 13:00:00', '2023-07-25', NULL, 29, 15, 14, '2023-07-25 13:00:00', '2023-07-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01720', '2023-07-25 01:28:00', '2023-07-25', 118, 42, 1, 28, '2023-07-25 01:28:00', '2023-07-25');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01718', '2023-07-24 16:01:00', '2023-07-24', 78, 29, 1, 33, '2023-07-24 15:45:00', '2023-07-24');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01714', '2023-07-22 12:42:00', '2023-07-22', 10, 9, 2, 4, '2023-07-22 12:42:00', '2023-07-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01713', '2023-07-22 03:40:00', '2023-07-22', 119, 4, 1, 9, '2023-07-22 03:00:00', '2023-07-22');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01710', '2023-07-21 23:14:00', '2023-07-21', NULL, 41, 3, 48, '2023-07-21 23:14:00', '2023-07-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01704', '2023-07-21 10:29:00', '2023-07-21', 48, 12, 1, 14, '2023-07-21 10:29:00', '2023-07-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01703', '2023-07-21 01:36:00', '2023-07-21', NULL, 16, 5, 49, '2023-07-21 01:36:00', '2023-07-21');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01697', '2023-07-19 23:58:00', '2023-07-19', 120, 24, 5, 18, '2023-07-19 23:58:00', '2023-07-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01696', '2023-07-19 20:01:00', '2023-07-19', 5, 14, 1, 5, '2023-07-19 07:15:00', '2023-07-19');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01691', '2023-07-19 08:43:00', '2023-07-19', 121, 19, 11, 24, '2023-07-14 08:43:00', '2023-07-14');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01689', '2023-07-18 16:55:00', '2023-07-18', 58, 5, 5, 16, '2023-07-18 16:55:00', '2023-07-18');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01688', '2023-07-18 10:49:00', '2023-07-18', 92, 7, 1, 18, '2023-07-17 18:00:00', '2023-07-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01685', '2023-07-17 15:50:00', '2023-07-17', 105, 5, 5, 42, '2023-07-17 15:50:00', '2023-07-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01684', '2023-07-17 11:16:00', '2023-07-17', 121, 19, 2, 24, '2023-07-17 11:16:00', '2023-07-17');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01682', '2023-07-16 00:50:00', '2023-07-16', 36, 36, 10, 18, '2023-07-16 00:50:00', '2023-07-16');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01676', '2023-07-15 13:33:00', '2023-07-15', 122, 3, 3, 50, '2023-07-15 13:33:00', '2023-07-15');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01673', '2023-07-14 14:21:00', '2023-07-14', 123, 4, 1, 20, '2023-03-01 14:21:00', '2023-03-01');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01672', '2023-07-14 10:11:00', '2023-07-14', 14, 25, 1, 1, '2023-07-13 15:00:00', '2023-07-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01671', '2023-07-14 08:15:00', '2023-07-14', 124, 7, 1, 10, '2023-07-13 17:00:00', '2023-07-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01670', '2023-07-14 08:04:00', '2023-07-14', NULL, 7, 1, 10, '2023-07-13 17:00:00', '2023-07-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01669', '2023-07-13 12:18:00', '2023-07-13', 36, 8, 6, 18, '2023-07-13 12:18:00', '2023-07-13');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01664', '2023-07-12 10:09:00', '2023-07-12', 125, 8, 2, 22, '2023-07-12 10:09:00', '2023-07-12');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01668', '2023-07-11 17:12:00', '2023-07-11', 18, 20, 1, 7, '2023-07-10 18:00:00', '2023-07-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01660', '2023-07-11 12:59:00', '2023-07-11', 126, 5, 2, 16, '2023-07-11 12:59:00', '2023-07-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01658', '2023-07-11 11:03:00', '2023-07-11', 126, 24, 5, 16, '2023-07-11 11:03:00', '2023-07-11');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01656', '2023-07-10 17:14:00', '2023-07-10', 36, 29, 1, 18, '2023-07-10 16:30:00', '2023-07-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01652', '2023-07-10 11:28:00', '2023-07-10', 51, 12, 2, 22, '2023-07-10 11:28:00', '2023-07-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01651', '2023-07-10 10:26:00', '2023-07-10', 18, 44, 1, 7, '2023-06-27 13:35:00', '2023-06-27');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01650', '2023-07-10 08:41:00', '2023-07-10', 28, 36, 2, 16, '2023-07-10 08:41:00', '2023-07-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01649', '2023-07-10 07:07:00', '2023-07-10', 33, 7, 1, 14, '2023-07-06 16:00:00', '2023-07-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01648', '2023-07-10 00:21:00', '2023-07-10', 23, 6, 12, 14, '2023-07-10 00:21:00', '2023-07-10');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01644', '2023-07-09 07:58:00', '2023-07-09', 10, 5, 5, 4, '2023-07-09 07:58:00', '2023-07-09');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01641', '2023-07-08 19:22:00', '2023-07-08', NULL, 9, 13, 15, '2023-07-08 19:22:00', '2023-07-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01640', '2023-07-08 16:47:00', '2023-07-08', 127, 20, 1, 51, '2023-07-08 16:30:00', '2023-07-08');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01635', '2023-07-07 19:44:00', '2023-07-07', 128, 9, 6, 52, '2023-07-07 19:44:00', '2023-07-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01632', '2023-07-07 13:04:00', '2023-07-07', 126, 24, 5, 16, '2023-07-07 07:00:00', '2023-07-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01631', '2023-07-07 09:22:00', '2023-07-07', 129, 14, 1, 9, '2023-07-07 06:10:00', '2023-07-07');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01628', '2023-07-06 23:20:00', '2023-07-06', 75, 17, 13, 11, '2023-07-06 23:20:00', '2023-07-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01626', '2023-07-06 12:50:00', '2023-07-06', 67, 8, 6, 9, '2023-07-06 12:50:00', '2023-07-06');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01625', '2023-07-05 19:07:00', '2023-07-05', NULL, 16, 5, 53, '2023-07-05 19:07:00', '2023-07-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01624', '2023-07-05 14:49:00', '2023-07-05', 49, 5, 1, 19, '2023-07-03 17:00:00', '2023-07-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01621', '2023-07-05 04:20:00', '2023-07-05', 67, 14, 6, 9, '2023-07-05 04:20:00', '2023-07-05');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01618', '2023-07-04 00:54:00', '2023-07-04', 23, 8, 5, 14, '2023-07-04 00:54:00', '2023-07-04');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01613', '2023-07-03 12:36:00', '2023-07-03', 130, 12, 1, 14, '2023-07-03 12:36:00', '2023-07-03');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01612', '2023-07-03 09:33:00', '2023-07-03', 91, 4, 1, 26, '2023-06-30 17:00:00', '2023-06-30');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01611', '2023-07-02 19:18:00', '2023-07-02', 23, 9, 5, 14, '2023-07-02 19:18:00', '2023-07-02');
    

    INSERT INTO CaseFile (Number, Time_Reported, Date_Reported, Location_id, CrimeType_id, Status_id, Street_id, Time_Occurred, Date_Occurred) 
    VALUES ('DR2023-01607', '2023-07-01 07:39:00', '2023-07-01', 75, 5, 5, 11, '2023-07-01 07:39:00', '2023-07-01');
    

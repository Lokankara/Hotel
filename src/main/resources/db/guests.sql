create table if not exists guest
(
    guest_id             bigserial
        primary key,
    check_in   timestamp(6),
    arrival_date   timestamp(6),
    departure_date timestamp(6),
    passport_data  varchar(255),
    guest_status   varchar(255),
    constraint guest_guest_status_check check
        (guest_status in ('EARLY_DEPARTURE',
                          'CHECK_OUT',
                          'CHECK_IN',
                          'LOCK_OUT',
                          'OCCUPIED',
                          'RESERVED',
                          'DEPARTED',
                          'BOOKING',
                          'ARRIVAL',
                          'SKIPPER',
                          'DND',
                          'FIT',
                          'VIP')),
    feedback   varchar(1024),
    constraint guest_gender_check check
            (gender in ('MAN',
                              'WOMAN',
                              'OTHER',
                              'REFUSED'))
);

INSERT INTO guest (passport_data, check_in, arrival_date, departure_date, guest_status, feedback, gender)
VALUES
    ('Michael Angel', NOW(), '2023-08-20 15:30:00', '2023-08-23 09:30:00', 'CHECK_OUT','It’s a very comfortable twin room containing a double bed with two single beds joined by a similar headboard. It’s appropriate for small children, as it caters to their high risk of falling off the bed.', 'WOMAN'),
    ('Christopher Michael', NOW(), '2023-08-21 14:00:00', '2023-08-25 11:00:00', 'CHECK_IN', 'A twin room typically has only two single beds, while a double room has just one double bed designed for two people, also referred to as a marital bed. Two people can sleep in a twin hotel room but in different beds', 'MAN'),
    ('Jessica Kristi', NOW(), '2023-08-22 16:30:00', '2023-08-26 10:00:00', 'EARLY_DEPARTURE','Hotel suites are different in size. In most hotels, a suite contains a room separate from the offered bedroom. One room generally has a living area with a beautiful couch to convert to a bed, a kitchenette, and a separate TV.', 'WOMAN'),
    ('Matthew Caroline', NOW(), '2023-08-23 10:00:00', '2023-08-28 12:00:00', 'OCCUPIED','These hotel rooms usually contain two double beds. They can also have two queen beds. And, they are designed to accommodate two or more people. Double-double rooms are suitable for people traveling with young kids.', 'MAN'),
    ('Ashley Colin', NOW(), '2023-08-24 11:30:00', '2023-08-30 09:00:00', 'CHECK_IN','This hotel room type contains a studio bed. A studio bed is a bed that can be converted into other pieces of furniture such as a couch or a sofa. This type of room can function like a fully furnished apartment.', 'WOMAN'),
    ('Jennifer Dawn', NOW(), '2023-08-25 13:00:00', '2023-08-29 14:30:00', 'CHECK_OUT','Its advisable to understand hotel room options before booking. This ensures that you book the right room to help you enjoy your stay at your chosen hotel. Its also good to know what you are paying for in any hotel room type.', 'WOMAN'),
    ('Joshua Kari', NOW(), '2023-08-26 15:30:00', '2023-08-31 10:30:00', 'DEPARTED','As a law requirement, hotels are supposed to offer a specific number of rooms that handicapped people can access with ease. These rooms usually have enough space for wheelchairs to move without much trouble. Their bathrooms are also designed in such a manner that allows a disabled person to use them efficiently.', 'MAN'),
    ('Amanda Clayton', NOW(), '2023-08-27 16:00:00', '2023-09-01 11:00:00', 'VIP','', 'WOMAN'),
    ('Daniel Arthur', NOW(), '2023-08-28 17:30:00', '2023-09-02 12:30:00', 'CHECK_IN','', 'MAN'),
    ('David Roger', NOW(), '2023-08-29 14:00:00', '2023-09-03 13:00:00', 'DEPARTED', '', 'MAN'),
    ('James Roberto', NOW(), '2023-08-30 16:30:00', '2023-09-04 09:30:00', 'CHECK_OUT', '', 'MAN'),
    ('Robert Priscilla', NOW(), '2023-08-31 18:00:00', '2023-09-05 10:00:00', 'RESERVED', '', 'MAN'),
    ('John Darren', NOW(), '2023-09-01 12:30:00', '2023-09-06 11:30:00', 'SKIPPER', '', 'MAN'),
    ('Joseph Kelsey', NOW(), '2023-09-02 14:00:00', '2023-09-07 12:00:00', 'CHECK_OUT', '', 'MAN'),
    ('Andrew Clinton', NOW(), '2023-09-03 15:30:00', '2023-09-08 10:30:00', 'CHECK_IN', '', 'MAN'),
    ('Ryan Walter', NOW(), '2023-09-04 16:00:00', '2023-09-09 11:00:00', 'EARLY_DEPARTURE', '', 'MAN'),
    ('Brandon Louis', NOW(), '2023-09-05 17:30:00', '2023-09-10 12:30:00', 'CHECK_OUT', '', 'MAN'),
    ('Jason Barbara', NOW(), '2023-09-06 19:00:00', '2023-09-11 14:00:00', 'DEPARTED', '', 'MAN'),
    ('Justin Isaac', NOW(), '2023-09-07 14:30:00', '2023-09-12 13:30:00', 'CHECK_IN', '', 'MAN'),
    ('Sarah Cassie', NOW(), '2023-09-08 15:00:00', '2023-09-13 10:00:00', 'CHECK_OUT','', 'WOMAN'),
    ('William Grant', NOW(), '2023-09-09 16:30:00', '2023-09-14 11:30:00', 'DND', '', 'MAN'),
    ('Jonathan Cristina', NOW(), '2023-09-10 18:00:00', '2023-09-15 12:00:00', 'DEPARTED', '', 'MAN'),
    ('Stephanie Tonya', NOW(), '2023-09-11 19:30:00', '2023-09-16 09:30:00', 'CHECK_OUT', '', 'WOMAN'),
    ('Brian Rodney', NOW(), '2023-09-12 20:00:00', '2023-09-17 10:00:00', 'LOCK_OUT', '', 'MAN'),
    ('Nicole Bridget', NOW(), '2023-09-13 21:30:00', '2023-09-18 12:30:00', 'CHECK_OUT', '', 'WOMAN'),
    ('Nicholas Joe', NOW(), '2023-08-20 15:30:00', '2023-08-23 09:30:00', 'CHECK_OUT','', 'MAN'),
    ('Anthony Cindy', NOW(), '2023-08-21 14:00:00', '2023-08-25 11:00:00', 'CHECK_IN', '', 'MAN'),
    ('Heather Oscar', NOW(), '2023-08-22 16:30:00', '2023-08-26 10:00:00', 'EARLY_DEPARTURE', '', 'WOMAN'),
    ('Eric Willie', NOW(), '2023-08-23 10:00:00', '2023-08-28 12:00:00', 'OCCUPIED', '', 'MAN'),
    ('Elizabeth Maurice', NOW(), '2023-08-24 11:30:00', '2023-08-30 09:00:00', 'CHECK_IN', '', 'WOMAN'),
    ('Adam Jaime', NOW(), '2023-08-25 13:00:00', '2023-08-29 14:30:00', 'DEPARTED', '', 'MAN'),
    ('Megan Angelica', NOW(), '2023-08-26 15:30:00', '2023-08-31 10:30:00', 'CHECK_OUT', '', 'WOMAN'),
    ('Melissa Sharon', NOW(), '2023-08-27 16:00:00', '2023-09-01 11:00:00', 'CHECK_IN', '', 'WOMAN'),
    ('Michael Anderson', NOW(), '2023-08-28 17:30:00', '2023-09-02 12:30:00', 'ARRIVAL', '', 'MAN'),
    ('Sophia Martinez', NOW(), '2023-08-29 14:00:00', '2023-09-03 13:00:00', 'CHECK_OUT', '', 'WOMAN'),
    ('James Taylor', NOW(), '2023-08-30 16:30:00', '2023-09-04 09:30:00', 'BOOKING', '', 'MAN'),
    ('Emma Jackson', NOW(), '2023-08-31 18:00:00', '2023-09-05 10:00:00', 'CHECK_IN', '', 'WOMAN'),
    ('Alexander Davis', NOW(), '2023-09-01 12:30:00', '2023-09-06 11:30:00', 'VIP', '', 'MAN'),
    ('Ava Martinez', NOW(), '2023-09-02 14:00:00', '2023-09-07 12:00:00', 'CHECK_OUT', '', 'WOMAN'),
    ('William Johnson', NOW(), '2023-09-03 15:30:00', '2023-09-08 10:30:00', 'CHECK_IN', '', 'MAN'),
    ('Isabella Anderson', NOW(), '2023-09-04 16:00:00', '2023-09-09 11:00:00', 'LOCK_OUT', '', 'WOMAN'),
    ('Michael Brown', NOW(), '2023-09-05 17:30:00', '2023-09-10 12:30:00', 'CHECK_OUT', '', 'MAN'),
    ('Olivia Davis', NOW(), '2023-09-06 19:00:00', '2023-09-11 14:00:00', 'SKIPPER', '', 'WOMAN'),
    ('Ethan Taylor', NOW(), '2023-09-07 14:30:00', '2023-09-12 13:30:00', 'CHECK_IN', '', 'MAN'),
    ('Sophia Wilson', NOW(), '2023-09-08 15:00:00', '2023-09-13 10:00:00', 'DEPARTED', '', 'WOMAN'),
    ('Noah Jackson', NOW(), '2023-09-09 16:30:00', '2023-09-14 11:30:00', 'CHECK_IN', '', 'MAN'),
    ('Emma Harris', NOW(), '2023-09-10 18:00:00', '2023-09-15 12:00:00', 'CHECK_OUT', '', 'WOMAN'),
    ('Liam Martin', NOW(), '2023-09-11 19:30:00', '2023-09-16 09:30:00', 'FIT', '', 'MAN'),
    ('Ava Smith', NOW(), '2023-09-12 20:00:00', '2023-09-17 10:00:00', 'CHECK_IN', '', 'WOMAN'),
    ('Jane Smith', NOW(), '2023-08-21 16:00:00', '2023-08-24 10:00:00', 'CHECK_OUT', 'The staff was friendly and helpful.', 'WOMAN'),
    ('Bob Johnson', NOW(), '2023-08-22 14:30:00', '2023-08-25 11:30:00', 'CHECK_OUT', 'The location was convenient.', 'MAN'),
    ('Alice Brown', NOW(), '2023-09-19 13:00:00', '2023-09-22 12:00:00', 'CHECK_OUT', 'The amenities were excellent.', 'WOMAN'),
    ('James Johnson', NOW(), '2023-09-13 21:30:00', '2023-09-18 12:30:00', 'RESERVED', '', 'MAN'),
    ('Tia Dalma', NOW(), '2023-08-25', '2023-08-30', 'EARLY_DEPARTURE', 'Had to leave early', 'WOMAN'),
    ('Bootstrap Bill Turner', NOW(), '2023-08-26', '2023-08-31', 'CHECK_IN', 'First time here', 'MAN'),
    ('Cutler Beckett', NOW(), '2023-08-27', '2023-09-01', 'DEPARTED', 'Average experience', 'MAN'),
    ('Joshamee Gibbs', NOW(), '2023-08-28', '2023-09-02', 'ARRIVAL', '', 'MAN'),
    ('Anamaria',  NOW(),'2023-08-29', '2023-09-03', 'BOOKING', 'Looking forward', 'WOMAN'),
    ('Marty',  NOW(),'2023-08-30', '2023-09-04', 'CHECK_OUT', 'Will be back', 'MAN'),
    ('Cotton',  NOW(),'2023-08-31', '2023-09-05', 'LOCK_OUT', 'Lost the key', 'MAN'),
    ('Ragetti',  NOW(),'2023-09-01', '2023-09-06', 'DEPARTED', 'Not the best', 'MAN'),
    ('Pintel',  NOW(),'2023-09-02', '2023-09-07', 'EARLY_DEPARTURE', 'Family emergency', 'MAN'),
    ('Syrena',  NOW(),'2023-09-03', '2023-09-08', 'VIP', 'Absolutely amazing', 'WOMAN'),
    ('Philip Swift', NOW(), '2023-09-04', '2023-09-09', 'CHECK_IN', 'Love the ambiance', 'MAN'),
    ('Scrum',  NOW(),'2023-09-05', '2023-09-10', 'CHECK_OUT', 'Good service', 'MAN'),
    ('Gibbs',  NOW(),'2023-09-06', '2023-09-11', 'ARRIVAL', '', 'MAN'),
    ('Mullroy',  NOW(),'2023-09-07', '2023-09-12', 'CHECK_OUT', 'Enjoyed the stay', 'MAN'),
    ('Murtogg',  NOW(),'2023-09-08', '2023-09-13', 'ARRIVAL', '', 'MAN'),
    ('Clerk',  NOW(),'2023-09-09', '2023-09-14', 'CHECK_IN', 'Smooth check-in', 'MAN'),
    ('Governor Weatherby Swann', NOW(), '2023-09-10', '2023-09-15', 'VIP', 'Great amenities', 'MAN'),
    ('Mercer',  NOW(),'2023-09-11', '2023-09-16', 'CHECK_OUT', 'Average stay', 'MAN'),
    ('Angelica Teach', NOW(), '2023-09-12', '2023-09-17', 'CHECK_IN', 'Fantastic views', 'WOMAN'),
    ('Edward Teach (Blackbeard)', NOW(), '2023-09-13', '2023-09-18', 'VIP', 'Top-notch service', 'MAN'),
    ('Pirate',  NOW(),'2023-09-14', '2023-09-19', 'CHECK_OUT', 'Pleasant stay', 'MAN'),
    ('Sailor',  NOW(),'2023-09-15', '2023-09-20', 'ARRIVAL', '', 'MAN'),
    ('Navigator',  NOW(),'2023-09-16', '2023-09-21', 'CHECK_IN', 'Amazing location', 'MAN'),
    ('Captain',  NOW(),'2023-09-17', '2023-09-22', 'VIP', 'Exceeded expectations', 'MAN'),
    ('Crewman',  NOW(),'2023-09-18', '2023-09-23', 'CHECK_OUT', 'Satisfactory', 'MAN'),
    ('Mate',  NOW(),'2023-09-19', '2023-09-24', 'CHECK_IN', 'Comfortable stay', 'MAN'),
    ('Lisa Smith', NOW(), '2023-08-25', '2023-08-30', 'EARLY_DEPARTURE', 'Had to leave early', 'WOMAN'),
    ('Sarah Williams', NOW(), '2023-08-26', '2023-08-31', 'CHECK_IN', 'First time here', 'WOMAN'),
    ('John Johnson', NOW(), '2023-08-27', '2023-09-01', 'DEPARTED', 'Average experience', 'MAN'),
    ('Michael Smith', NOW(), '2023-08-28', '2023-09-02', 'ARRIVAL', NULL, 'MAN'),
    ('Emily Brown', NOW(), '2023-08-29', '2023-09-03', 'BOOKING', 'Looking forward', 'WOMAN'),
    ('David Davis', NOW(), '2023-08-30', '2023-09-04', 'CHECK_OUT', 'Will be back', 'MAN'),
    ('Jessica Wilson', NOW(), '2023-08-31', '2023-09-05', 'LOCK_OUT', 'Lost the key', 'WOMAN'),
    ('Robert Taylor', NOW(), '2023-09-01', '2023-09-06', 'DEPARTED', 'Not the best', 'MAN'),
    ('Jennifer Johnson', NOW(), '2023-09-02', '2023-09-07', 'EARLY_DEPARTURE', 'Family emergency', 'WOMAN'),
    ('William Smith', NOW(), '2023-09-03', '2023-09-08', 'VIP', 'Absolutely amazing', 'MAN'),
    ('Linda Brown', NOW(), '2023-09-04', '2023-09-09', 'CHECK_IN', 'Love the ambiance', 'WOMAN'),
    ('Charles Williams', NOW(), '2023-09-05', '2023-09-10', 'CHECK_OUT', 'Good service', 'MAN'),
    ('Patricia Smith', NOW(), '2023-09-06', '2023-09-11', 'ARRIVAL', NULL, 'WOMAN'),
    ('Richard Johnson', NOW(), '2023-09-07', '2023-09-12', 'CHECK_OUT', 'Enjoyed the stay', 'MAN'),
    ('Karen Taylor', NOW(), '2023-09-08', '2023-09-13', 'ARRIVAL', NULL, 'WOMAN'),
    ('Thomas Brown', NOW(), '2023-09-09', '2023-09-14', 'CHECK_IN', 'Smooth check-in', 'MAN'),
    ('Laura Wilson', NOW(), '2023-09-10', '2023-09-15', 'VIP', 'Great amenities', 'WOMAN');

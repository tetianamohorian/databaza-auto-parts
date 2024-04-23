use Mohorian;
show tables;

create table categories
(
  id int auto_increment primary key,
    nazva varchar(255)
);

create table producty
(
  id int auto_increment primary key,
  VIN varchar(255),
    nazva varchar(255),
    cena decimal(10,2),
    brand varchar(255),
    model varchar(255),
    rok int,
    category_id int not null,
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

create table stores
(
  id int auto_increment primary key,
  nazva varchar(255),
  adresa varchar(255)
);

create table state_product
(
  id int auto_increment primary key,
    product_id int not null,
    FOREIGN KEY (product_id) REFERENCES producty(id),
  store_id int not null,
  FOREIGN KEY (store_id) REFERENCES stores(id),
  mnozstvo int,
  stav varchar(255)
);

create table users
(
  id int auto_increment primary key,
  meno varchar(255),
    priezvisko varchar(255),
    email varchar(255),
    phone varchar(255)
);
ALTER TABLE state_product AUTO_INCREMENT = 1;

INSERT INTO categories (nazva) VALUES
('DPF Filters'),
('Engine Oil'),
('Brake Pads'),
('Spark Plugs'),
('Air Filters'),
('Brake Discs'),
('Shock Absorbers'),
('Batteries'),
('Starter Motors'),
('Alternators'),
('Ignition Coils'),
('Radiators'),
('Water Pumps'),
('Thermostats'),
('Fuel Pumps'),
('Turbochargers'),
('Catalytic Converters'),
('Wheel Bearings'),
('Timing Belts'),
('Clutch Kits'),
('Exhaust Systems'),
('Steering Racks'),
('Power Steering Pumps'),
('Camshafts'),
('Camshaft Sensors'),
('Crankshaft Sensors'),
('Oxygen Sensors'),
('MAP Sensors'),
('ABS Sensors'),
('Fuel Injectors'),
('EGR Valves'),
('Mass Air Flow Sensors'),
('Power Window Motors'),
('Window Regulators'),
('Door Lock Actuators'),
('AC Compressors'),
('Condensers'),
('Evaporators'),
('Expansion Valves'),
('Heater Cores'),
('Blower Motors'),
('Radiator Fans'),
('Coolant Temperature Sensors'),
('Engine Mounts'),
('Transmission Mounts'),
('Strut Mounts'),
('Control Arms'),
('Ball Joints'),
('Tie Rod Ends'),
('Sway Bar Links'),
('Bushings'),
('Wheel Hubs'),
('CV Joints'),
('Drive Shafts'),
('Axle Bearings'),
('Axle Shafts'),
('Differential Bearings'),
('Differential Gears'),
('Wheel Spacers'),
('Wheel Studs'),
('Brake Calipers'),
('Brake Master Cylinders'),
('Brake Wheel Cylinders'),
('Brake Hoses'),
('ABS Modules'),
('ABS Hydraulic Units'),
('Brake Booster Pumps'),
('Brake Pedal Sensors'),
('Parking Brake Cables'),
('Parking Brake Levers');

INSERT INTO producty (VIN, nazva, cena, brand, model, rok, category_id) VALUES
('VIN123456789', 'DPF Filter A', 200.00, 'Bosch', 'DPF Filter', 2018, 1),
('VIN987654321', 'DPF Filter B', 220.00, 'Mann-Filter', 'DPF Filter', 2019, 1),
('VIN567890123', 'DPF Filter C', 180.00, 'Hella', 'DPF Filter', 2020, 1),
('VIN246801357', 'Engine Oil 10W-40', 25.00, 'Castrol', 'Edge', 2017, 2),
('VIN135790246', 'Engine Oil 5W-30', 30.00, 'Mobil 1', 'ESP Formula', 2016, 2),
('VIN654321098', 'Brake Pads Front', 60.00, 'Brembo', 'Ceramic', 2015, 3),
('VIN357951753', 'Spark Plug Set', 30.00, 'NGK', 'V-Power', 2020, 4), -- Spark Plugs
('VIN864209753', 'Air Filter', 20.00, 'K&N', 'High Performance', 2019, 5), -- Air Filters
('VIN468135792', 'Brake Discs Front', 100.00, 'Brembo', 'Sport', 2018, 6), -- Brake Discs
('VIN246802579', 'Shock Absorber Set', 300.00, 'Bilstein', 'B6', 2017, 7), -- Shock Absorbers
('VIN987654321', 'Car Battery', 150.00, 'Optima', 'RedTop', 2019, 8), -- Batteries
('VIN357951357', 'Starter Motor', 200.00, 'Denso', 'Remanufactured', 2016, 9), -- Starter Motors
('VIN951753468', 'Alternator', 250.00, 'ACDelco', 'Professional', 2017, 10),
('VIN753468951', 'Ignition Coil Set', 80.00, 'Delphi', 'Ignition Coil', 2018, 11), -- Ignition Coils
('VIN468951753', 'Radiator', 150.00, 'Behr', 'OEM Replacement', 2017, 12), -- Radiators
('VIN802468135', 'Water Pump', 70.00, 'Gates', 'Heavy-Duty', 2016, 13), -- Water Pumps
('VIN357924680', 'Thermostat', 25.00, 'Stant', 'SuperStat', 2019, 14), -- Thermostats
('VIN135792468', 'Fuel Pump', 90.00, 'Airtex', 'E8834M', 2018, 15), -- Fuel Pumps
('VIN951357924', 'Turbocharger', 500.00, 'Garrett', 'GT2860RS', 2020, 16), -- Turbochargers
('VIN924680357', 'Catalytic Converter', 400.00, 'MagnaFlow', '49-State Legal', 2019, 17),
 ('VIN468135792', 'Wheel Bearing', 40.00, 'Timken', 'OEM Replacement', 2020, 18), -- Wheel Bearings
('VIN246802579', 'Timing Belt Kit', 80.00, 'Gates', 'PowerGrip', 2019, 19), -- Timing Belts
('VIN951753468', 'Clutch Kit', 300.00, 'Exedy', 'OEM Replacement', 2018, 20), -- Clutch Kits
('VIN357924680', 'Exhaust System', 500.00, 'MagnaFlow', 'Cat-Back', 2017, 21), -- Exhaust Systems
('VIN135792468', 'Steering Rack', 400.00, 'ACDelco', 'Professional', 2016, 22), -- Steering Racks
('VIN802468135', 'Power Steering Pump', 300.00, 'Cardone', 'Remanufactured', 2015, 23), -- Power Steering Pumps
('VIN357951753', 'Camshaft', 150.00, 'COMP Cams', 'XE Hydraulic Roller', 2014, 24), -- Camshafts
('VIN468951357', 'Camshaft Position Sensor', 50.00, 'Bosch', 'OEM Replacement', 2013, 25), -- Camshaft Sensors
('VIN579246801', 'Crankshaft Position Sensor', 60.00, 'Standard Motor Products', 'OEM Replacement', 2012, 26), -- Crankshaft Sensors
('VIN690357924', 'Oxygen Sensor', 80.00, 'Denso', 'OEM Replacement', 2011, 27), -- Oxygen Sensors
('VIN924680135', 'MAP Sensor', 70.00, 'ACDelco', 'Professional', 2010, 28), -- MAP Sensors
('VIN802579246', 'ABS Sensor', 60.00, 'Motorcraft', 'OEM Replacement', 2009, 29), -- ABS Sensors
('VIN951357802', 'Fuel Injector', 100.00, 'Bosch', 'Evolution', 2008, 30), -- Fuel Injectors
('VIN357924680', 'EGR Valve', 120.00, 'Standard Motor Products', 'OE Replacement', 2007, 31), -- EGR Valves
('VIN468135792', 'Mass Air Flow Sensor', 90.00, 'Spectra Premium', 'OEM Replacement', 2006, 32), -- Mass Air Flow Sensors
('VIN135792468', 'Power Window Motor', 120.00, 'Dorman', 'OEM Replacement', 2015, 33), -- Power Window Motors
('VIN802468135', 'Window Regulator', 90.00, 'ACDelco', 'Professional', 2016, 34), -- Window Regulators
('VIN357951753', 'Door Lock Actuator', 70.00, 'Standard Motor Products', 'OE Replacement', 2017, 35), -- Door Lock Actuators
('VIN468135792', 'AC Compressor', 400.00, 'Denso', 'Remanufactured', 2018, 36), -- AC Compressors
('VIN246802579', 'Condenser', 250.00, 'TYC', 'OEM Replacement', 2019, 37), -- Condensers
('VIN951753468', 'Evaporator', 300.00, 'Four Seasons', 'OEM Replacement', 2020, 38), -- Evaporators
('VIN357924680', 'Expansion Valve', 50.00, 'UAC', 'OE Replacement', 2019, 39), -- Expansion Valves
('VIN468951357', 'Heater Core', 200.00, 'Spectra Premium', 'OEM Replacement', 2018, 40), -- Heater Cores
('VIN579246801', 'Blower Motor', 150.00, 'VDO', 'OEM Replacement', 2017, 41), -- Blower Motors
('VIN690357924', 'Radiator Fan', 100.00, 'Depo', 'OEM Replacement', 2016, 42), -- Radiator Fans
('VIN924680135', 'Coolant Temperature Sensor', 30.00, 'Walker Products', 'OEM Replacement', 2015, 43), -- Coolant Temperature Sensors
('VIN802579246', 'Engine Mount', 60.00, 'Anchor', 'OEM Replacement', 2014, 44), -- Engine Mounts
('VIN951357802', 'Transmission Mount', 50.00, 'Westar', 'OEM Replacement', 2013, 45), -- Transmission Mounts
('VIN357924680', 'Strut Mount', 40.00, 'Monroe', 'OEM Replacement', 2012, 46), -- Strut Mounts
('VIN468135792', 'Control Arm', 100.00, 'Dorman', 'OEM Replacement', 2011, 47), -- Control Arms
('VIN246802579', 'Ball Joint', 40.00, 'ACDelco', 'Professional', 2010, 48), -- Ball Joints
('VIN135792468', 'Tie Rod End', 30.00, 'Mevotech', 'Supreme', 2009, 49), -- Tie Rod Ends
('VIN802468135', 'Sway Bar Link', 20.00, 'Moog', 'Problem Solver', 2008, 50), -- Sway Bar Links
('VIN357951753', 'Bushings', 15.00, 'Energy Suspension', 'Hyper-Flex', 2007, 51), -- Bushings
('VIN468135792', 'Wheel Hub', 70.00, 'Timken', 'OEM Replacement', 2006, 52), -- Wheel Hubs
('VIN246802579', 'CV Joint', 80.00, 'GSP North America', 'OEM Replacement', 2005, 53), -- CV Joints
('VIN951753468', 'Drive Shaft', 200.00, 'Cardone', 'Remanufactured', 2004, 54), -- Drive Shafts
('VIN357924680', 'Axle Bearing', 40.00, 'National', 'OEM Replacement', 2003, 55), -- Axle Bearings
('VIN468135792', 'Axle Shaft', 120.00, 'SurTrack', 'OEM Replacement', 2002, 56), -- Axle Shafts
('VIN246802579', 'Differential Bearing', 60.00, 'ACDelco', 'Professional', 2001, 57), -- Differential Bearings
('VIN135792468', 'Differential Gear Set', 200.00, 'Motive Gear', 'Performance', 2000, 58), -- Differential Gears
('VIN802468135', 'Wheel Spacer', 30.00, 'Eibach', 'Pro-Spacer', 1999, 59), -- Wheel Spacers
('VIN357951753', 'Wheel Stud', 10.00, 'Dorman', 'OE Replacement', 1998, 60), -- Wheel Studs
('VIN468135792', 'Brake Caliper', 100.00, 'Centric', 'Posi-Quiet', 1997, 61), -- Brake Calipers
('VIN246802579', 'Brake Master Cylinder', 120.00, 'A1 Cardone', 'Remanufactured', 1996, 62), -- Brake Master Cylinders
('VIN135792468', 'Brake Wheel Cylinder', 40.00, 'Raybestos', 'Element3', 1995, 63), -- Brake Wheel Cylinders
('VIN802468135', 'Brake Hose', 20.00, 'Wagner', 'ThermoQuiet', 1994, 64), -- Brake Hoses
('VIN357951753', 'ABS Module', 150.00, 'ACDelco', 'Professional', 1993, 65), -- ABS Modules
('VIN468135792', 'ABS Hydraulic Unit', 200.00, 'Bosch', 'Remanufactured', 1992, 66), -- ABS Hydraulic Units
('VIN246802579', 'Brake Booster Pump', 120.00, 'Motorcraft', 'OEM Replacement', 1991, 67), -- Brake Booster Pumps
('VIN135792468', 'Brake Pedal Sensor', 30.00, 'Standard Motor Products', 'OE Replacement', 1990, 68), -- Brake Pedal Sensors
('VIN802468135', 'Parking Brake Cable', 50.00, 'Dorman', 'OE Replacement', 1989, 69), -- Parking Brake Cables
('VIN357951753', 'Parking Brake Lever', 40.00, 'ACDelco', 'Professional', 1988, 70);

INSERT INTO stores (nazva, adresa) VALUES
('AutoParts Plus', '123 Main Street, Cityville, State, 12345'),
('Car Care Center', '456 Elm Street, Townsville, State, 67890'),
('Vehicle Solutions', '789 Oak Avenue, Villageton, State, 54321'),
('Motor Parts Mart', '101 Pine Road, Boroughburg, State, 98765'),
('Drive-In Auto Shop', '202 Maple Lane, Hamletville, State, 24680'),
('Speedy Motors', '303 Cedar Drive, Countryside, State, 13579'),
('Gearbox Garage', '404 Birch Street, Riverside, State, 02468'),
('Wheels & More', '505 Walnut Avenue, Mountainview, State, 97531'),
('Brake & Tire Center', '606 Spruce Road, Lakeside, State, 86420'),
('Performance Parts Palace', '707 Cherry Lane, Seaville, State, 46801'),
('AutoZone', '123 Oak Street, Springfield, State, 12345'),
('Advance Auto Parts', '456 Pine Avenue, Rivertown, State, 67890'),
('OReilly Auto Parts', '789 Maple Road, Hilltop, State, 54321'),
('NAPA Auto Parts', '101 Elm Drive, Lakeside, State, 98765'),
('Pep Boys', '202 Cedar Lane, Sunnyville, State, 24680'),
('Carquest Auto Parts', '303 Birch Boulevard, Meadowview, State, 13579'),
('Bridgestone Auto Care', '404 Cherry Street, Valleytown, State, 02468'),
('Firestone Complete Auto Care', '505 Walnut Avenue, Mountainview, State, 97531'),
('Jiffy Lube', '606 Spruce Road, Lakeside, State, 86420'),
('Goodyear Auto Service', '707 Oak Drive, Hillside, State, 46801'),
('Meineke Car Care Center', '808 Pine Street, Riverview, State, 35791'),
('Tire Kingdom', '909 Cedar Avenue, Sunset, State, 80246'),
('Monro Auto Service and Tire Centers', '1010 Elm Lane, Brookside, State, 62910'),
('Mr. Tire Auto Service Centers', '1111 Birch Road, Greenfield, State, 37401'),
('Valvoline Instant Oil Change', '1212 Maple Drive, Highland, State, 50892'),
('Midas', '1313 Oak Street, Willowbrook, State, 94578'),
('AAMCO Transmissions & Total Car Care', '1414 Pine Avenue, Shady Grove, State, 16273'),
('Quick Lane Tire & Auto Center', '1515 Cedar Lane, Westwood, State, 84620'),
('Precision Tune Auto Care', '1616 Birch Boulevard, Evergreen, State, 30571'),
('Grease Monkey', '1717 Cherry Street, Springdale, State, 70839'),
('Mobil 1 Lube Express', '1818 Walnut Avenue, Maplewood, State, 92467'),
('Express Oil Change & Tire Engineers', '1919 Spruce Road, Oakwood, State, 13795'),
('Big O Tires', '2020 Elm Drive, Summerville, State, 50928'),
('Discount Tire', '2121 Pine Street, Fairview, State, 40281'),
('Les Schwab Tire Centers', '2222 Cedar Avenue, Woodside, State, 78604'),
('Tires Plus', '2323 Birch Road, Oakdale, State, 25783'),
('Havoline Xpress Lube', '2424 Maple Drive, Cedarville, State, 93046'),
('Meineke Car Care', '2525 Oak Street, Elmwood, State, 40871'),
('SpeeDee Oil Change & Auto Service', '2626 Pine Avenue, Pinehurst, State, 73910'),
('Express Care', '2727 Cedar Lane, Lakeshore, State, 50283'),
('Car-X Tire & Auto', '2828 Walnut Avenue, Cedarburg, State, 72635'),
('Tuffy Tire & Auto Service Center', '2929 Spruce Road, Groveville, State, 92467'),
('Take 5 Oil Change', '3030 Elm Drive, Ridgeview, State, 30957'),
('Quick Quack Car Wash', '3131 Pine Street, Beachwood, State, 60837'),
('Mikes Car Wash', '3232 Cedar Avenue, Lakewood, State, 93724'),
('Brown Bear Car Wash', '3333 Birch Road, Riverdale, State, 83742'),
('Splash Car Wash', '3434 Maple Drive, Hillcrest, State, 40578'),
('Mister Car Wash', '3535 Oak Street, Fairbanks, State, 73829'),
('Autobell Car Wash', '3636 Pine Avenue, Northview, State, 52783'),
('Zips Car Wash', '3737 Cedar Lane, Southside, State, 92467'),
('ScrubaDub Car Wash', '3838 Walnut Avenue, Eastwood, State, 60934'),
('Blue Wave Car Wash', '3939 Spruce Road, Westside, State, 83746'),
('Autosheen Car Wash', '4040 Elm Drive, Downtown, State, 30847'),
('CarWash USA Express', '4141 Pine Street, Uptown, State, 60738'),
('Valet Auto Wash', '4242 Cedar Avenue, Midtown, State, 92467'),
('Eagle Auto Wash', '4343 Birch Road, Downtown, State, 50837'),
('Wash N Roll', '4444 Maple Drive, West End, State, 83746'),
('American Pride Car Wash', '4545 Oak Street, East End, State, 62734'),
('Shammy Shine Car Wash', '4646 Pine Avenue, North End, State, 92467'),
('Waterway Carwash', '4747 Cedar Lane, South End, State, 70829'),
('Autospa Car Wash', '4848 Walnut Avenue, Downtown, State, 60934'),
('Elephant Car Wash', '4949 Spruce Road, Eastside, State, 83746'),
('SuperSonic Car Wash', '5050 Elm Drive, Westside, State, 73839'),
('Wave Wash Car Wash', '5151 Pine Street, Downtown, State, 92467'),
('Tommys Express Car Wash', '5252 Cedar Avenue, Uptown, State, 60738'),
('Bubbles Car Wash', '5353 Birch Road, Midtown, State, 50837'),
('Speedy Shine Car Wash', '5454 Maple Drive, Hilltop, State, 83746'),
('Foam & Wash Car Wash', '5555 Oak Street, Downtown, State, 62734'),
('Raceway Car Wash', '5656 Pine Avenue, Eastside, State, 92467'),
('Shiny Car Wash', '5757 Cedar Lane, West End, State, 70829'),
('Spotless Car Wash', '5858 Walnut Avenue, Downtown, State, 60934'),
('Magic Touch Car Wash', '5959 Spruce Road, South End, State, 83746'),
('Diamond Shine Car Wash', '6060 Elm Drive, North End, State, 73839');

INSERT INTO users (meno, priezvisko, email, phone) VALUES
('Emily', 'Johnson', 'emily.johnson@gmail.com', '+1234567890'),
('Michael', 'Smith', 'michael.smith@yahoo.com', '+1987654321'),
('Sophia', 'Brown', 'sophia.brown@hotmail.com', '+1654321879'),
('William', 'Davis', 'william.davis@outlook.com', '+1324567890'),
('Emma', 'Wilson', 'emma.wilson@aol.com', '+1789654321'),
('Daniel', 'Martinez', 'daniel.martinez@icloud.com', '+1928374650'),
('Olivia', 'Anderson', 'olivia.anderson@live.com', '+1548796230'),
('James', 'Taylor', 'james.taylor@protonmail.com', '+1423659870'),
('Amelia', 'Thomas', 'amelia.thomas@yandex.com', '+1798654321'),
('Alexander', 'Hernandez', 'alexander.hernandez@mail.com', '+1357924680'),
('Charlotte', 'Garcia', 'charlotte.garcia@inbox.com', '+1234567890'),
('Benjamin', 'Brown', 'benjamin.brown@zoho.com', '+1987654321'),
('Emma', 'Rodriguez', 'emma.rodriguez@me.com', '+1654321879'),
('Ethan', 'Williams', 'ethan.williams@fastmail.com', '+1324567890'),
('Sophia', 'Jones', 'sophia.jones@protonmail.com', '+1789654321'),
('Mason', 'Taylor', 'mason.taylor@yandex.com', '+1928374650'),
('Ava', 'Lewis', 'ava.lewis@mail.com', '+1548796230'),
('Jacob', 'Hernandez', 'jacob.hernandez@gmail.com', '+1423659870'),
('Isabella', 'Walker', 'isabella.walker@yahoo.com', '+1798654321'),
('William', 'Hall', 'william.hall@hotmail.com', '+1357924680'),
('Olivia', 'Young', 'olivia.young@outlook.com', '+1234567890'),
('James', 'Allen', 'james.allen@aol.com', '+1987654321'),
('Ava', 'Clark', 'ava.clark@icloud.com', '+1654321879'),
('Noah', 'Lee', 'noah.lee@live.com', '+1324567890'),
('Emma', 'Gonzalez', 'emma.gonzalez@protonmail.com', '+1789654321'),
('Liam', 'Perez', 'liam.perez@yandex.com', '+1928374650'),
('Sophia', 'Scott', 'sophia.scott@mail.com', '+1548796230'),
('Mia', 'Green', 'mia.green@inbox.com', '+1423659870'),
('Oliver', 'Adams', 'oliver.adams@zoho.com', '+1798654321'),
('Charlotte', 'Baker', 'charlotte.baker@me.com', '+1357924680'),
('William', 'Thomas', 'william.thomas@fastmail.com', '+1234567890'),
('Amelia', 'Parker', 'amelia.parker@protonmail.com', '+1987654321'),
('Lucas', 'Evans', 'lucas.evans@yandex.com', '+1654321879'),
('Sophia', 'White', 'sophia.white@mail.com', '+1324567890'),
('Mason', 'Harris', 'mason.harris@hotmail.com', '+1789654321'),
('Harper', 'Jackson', 'harper.jackson@outlook.com', '+1928374650'),
('Evelyn', 'Diaz', 'evelyn.diaz@aol.com', '+1548796230'),
('Elijah', 'Martinez', 'elijah.martinez@icloud.com', '+1423659870'),
('Elizabeth', 'Thompson', 'elizabeth.thompson@live.com', '+1798654321'),
('Logan', 'Garcia', 'logan.garcia@protonmail.com', '+1357924680'),
('Avery', 'Roberts', 'avery.roberts@yandex.com', '+1234567890'),
('Ella', 'Smith', 'ella.smith@mail.com', '+1987654321'),
('Jackson', 'Miller', 'jackson.miller@hotmail.com', '+1654321879'),
('Scarlett', 'Young', 'scarlett.young@outlook.com', '+1324567890'),
('Leo', 'Lee', 'leo.lee@aol.com', '+1789654321'),
('Madison', 'Clark', 'madison.clark@icloud.com', '+1928374650'),
('Liam', 'Allen', 'liam.allen@live.com', '+1548796230'),
('Grace', 'Walker', 'grace.walker@protonmail.com', '+1423659870'),
('Jacob', 'Baker', 'jacob.baker@yandex.com', '+1798654321'),
('Avery', 'Adams', 'avery.adams@mail.com', '+1357924680'),
('Oliver', 'Carter', 'oliver.carter@hotmail.com', '+1234567890'),
('Emma', 'Hill', 'emma.hill@outlook.com', '+1987654321'),
('Ethan', 'King', 'ethan.king@aol.com', '+1654321879'),
('Ava', 'Wright', 'ava.wright@mail.com', '+1324567890'),
('Elijah', 'Morris', 'elijah.morris@icloud.com', '+1789654321'),
('Harper', 'Green', 'harper.green@live.com', '+1928374650'),
('Charlotte', 'Roberts', 'charlotte.roberts@protonmail.com', '+1548796230'),
('Mason', 'Jackson', 'mason.jackson@yandex.com', '+1423659870'),
('Lucas', 'Harris', 'lucas.harris@mail.com', '+1798654321'),
('Avery', 'Martinez', 'avery.martinez@hotmail.com', '+1357924680'),
('Olivia', 'Young', 'olivia.young@outlook.com', '+1234567890'),
('Liam', 'Moore', 'liam.moore@gmail.com', '+1987654321'),
('Emma', 'Kelly', 'emma.kelly@yahoo.com', '+1654321879'),
('Noah', 'Rivera', 'noah.rivera@hotmail.com', '+1324567890'),
('Ava', 'Hayes', 'ava.hayes@outlook.com', '+1789654321'),
('Oliver', 'Russell', 'oliver.russell@aol.com', '+1928374650'),
('Sophia', 'Cole', 'sophia.cole@icloud.com', '+1548796230'),
('Jackson', 'Peterson', 'jackson.peterson@live.com', '+1423659870'),
('Charlotte', 'Morgan', 'charlotte.morgan@protonmail.com', '+1798654321'),
('Amelia', 'Reed', 'amelia.reed@yandex.com', '+1357924680');



INSERT INTO state_product (product_id, store_id, mnozstvo, stav) VALUES
(1, 1, 50, 'in stock'),
(2, 2, 30, 'in stock'),
(3, 3, 8, 'available on order'),
(4, 4, 4, 'in stock'),
(5, 5, 25, 'in stock'),
(6, 6, 10, 'available on order'),
(7, 7, 40, 'in stock'),
(8, 8, 20, 'in stock'),
(9, 9, 5, 'available on order'),
(10, 10, 35, 'in stock'),
(11, 11, 25, 'in stock'),
(12, 12, 8, 'available on order'),
(13, 13, 45, 'in stock'),
(14, 14, 30, 'in stock'),
(15, 15, 10, 'available on order'),
(16, 16, 55, 'in stock'),
(17, 17, 40, 'in stock'),
(18, 18, 15, 'available on order'),
(19, 19, 60, 'in stock'),
(20, 20, 25, 'in stock'),
(21, 21, 5, 'available on order'),
(22, 22, 70, 'in stock'),
(23, 23, 45, 'in stock'),
(24, 24, 20, 'available on order'),
(25, 25, 50, 'in stock'),
(26, 26, 35, 'in stock'),
(27, 27, 10, 'available on order'),
(28, 28, 65, 'in stock'),
(29, 29, 30, 'in stock'),
(30, 30, 15, 'available on order'),
(31, 31, 40, 'in stock'),
(32, 32, 25, 'in stock'),
(33, 33, 8, 'available on order'),
(34, 34, 55, 'in stock'),
(35, 35, 40, 'in stock'),
(36, 36, 20, 'available on order'),
(37, 37, 60, 'in stock'),
(38, 38, 35, 'in stock'),
(39, 39, 10, 'available on order'),
(40, 40, 75, 'in stock'),
(41, 41, 50, 'in stock'),
(42, 42, 15, 'available on order'),
(43, 43, 80, 'in stock'),
(44, 44, 45, 'in stock'),
(45, 45, 20, 'available on order'),
(46, 46, 45, 'in stock'),
(47, 47, 30, 'in stock'),
(48, 48, 10, 'available on order'),
(49, 49, 50, 'in stock'),
(50, 50, 35, 'in stock'),
(51, 51, 15, 'available on order'),
(52, 52, 60, 'in stock'),
(53, 53, 40, 'in stock'),
(54, 54, 20, 'available on order'),
(55, 55, 65, 'in stock'),
(56, 56, 30, 'in stock'),
(57, 57, 10, 'available on order'),
(58, 58, 70, 'in stock'),
(59, 59, 25, 'in stock'),
(60, 60, 5, 'available on order'),
(61, 61, 80, 'in stock'),
(62, 62, 45, 'in stock'),
(63, 63, 15, 'available on order'),
(64, 64, 55, 'in stock'),
(65, 65, 40, 'in stock'),
(66, 66, 20, 'available on order'),
(67, 67, 60, 'in stock'),
(68, 68, 35, 'in stock'),
(69, 69, 10, 'available on order'),
(70, 70, 75, 'in stock'),
(71, 71, 50, 'in stock'),
(72, 72, 15, 'available on order'),
(73, 73, 80, 'in stock'),
(4, 1, 9, 'in stock'),
(4, 2, 12, 'available on order'),
(4, 3, 7, 'in stock'),
(4, 11, 3, 'available on order'),
(4, 5, 1, 'in stock'),
(4, 6, 32, 'available on order'),
(4, 7, 78, 'available on order'),
(4, 8, 6, 'in stock'),
(4, 9, 90, 'available on order'),
(4, 10, 3, 'in stock'),
(4, 12, 1, 'in stock'),
(4, 13, 13, 'available on order'),
(4, 14, 2, 'in stock'),
(4, 15, 35, 'available on order'),
(4, 16, 3, 'in stock'),
(4, 17, 36, 'available on order'),
(4, 18, 4, 'available on order'),
(4, 19, 7, 'in stock'),
(4, 20, 50, 'available on order'),
(4, 21, 8, 'in stock'),
(4, 22, 46, 'in stock'),
(4, 23, 3, 'available on order'),
(4, 24, 8, 'in stock'),
(4, 25, 5, 'available on order'),
(4, 26, 41, 'in stock'),
(4, 27, 2, 'available on order'),
(4, 28, 8, 'available on order'),
(4, 29, 6, 'in stock'),
(4, 30, 90, 'available on order'),
(4, 31, 35, 'in stock'),
(4, 32, 1, 'in stock'),
(4, 33, 13, 'available on order'),
(4, 34, 2, 'in stock'),
(4, 35, 35, 'available on order'),
(4, 36, 3, 'in stock'),
(4, 37, 36, 'available on order'),
(4, 38, 4, 'available on order'),
(4, 39, 7, 'in stock'),
(4, 40, 50, 'available on order'),
(4, 41, 8, 'in stock'),
(4, 42, 9, 'in stock'),
(4, 43, 12, 'available on order'),
(4, 44, 7, 'in stock'),
(4, 45, 3, 'available on order'),
(4, 46, 1, 'in stock'),
(4, 47, 32, 'available on order'),
(4, 48, 78, 'available on order'),
(4, 49, 6, 'in stock'),
(4, 50, 90, 'available on order'),
(4, 51, 3, 'in stock'),
(4, 52, 1, 'in stock'),
(4, 53, 13, 'available on order'),
(4, 54, 2, 'in stock'),
(4, 55, 35, 'available on order'),
(4, 56, 3, 'in stock'),
(4, 57, 36, 'available on order'),
(4, 58, 4, 'available on order'),
(4, 59, 7, 'in stock'),
(4, 60, 50, 'available on order'),
(4, 61, 8, 'in stock'),
(19, 62, 9, 'in stock');

create table Cart(
id int auto_increment primary key,
VIN varchar(255),
nazva varchar(255),
cena decimal (10,2),
product_id int not null,
foreign key (product_id) references producty(id));

create table orders(
faktura int(11),
meno varchar(255),
priezvisko varchar(255),
cena decimal(10,2),
datum date,
user_id int not null,
foreign key (user_id) references users(id),
product_id int not null,
foreign key (product_id) references producty(id),
id int auto_increment primary key
);


SELECT p.nazva AS DPF_Filter, s.nazva AS Store, sp.mnozstvo AS Quantity
FROM producty p
JOIN state_product sp ON p.id = sp.product_id
JOIN stores s ON sp.store_id = s.id
JOIN categories c ON p.category_id = c.id
WHERE c.nazva = 'DPF Filters' and VIN = 'VIN123456789'
ORDER BY p.nazva ASC, s.nazva ASC;

SELECT s.nazva AS Store, sp.mnozstvo AS Quantity_Available
FROM stores s
JOIN state_product sp ON s.id = sp.store_id
JOIN producty p ON sp.product_id = p.id
WHERE p.nazva = 'Engine Oil 10W-40' AND sp.mnozstvo < 10
GROUP BY s.id
ORDER BY Quantity_Available DESC;

SELECT c.nazva AS Category, AVG(p.cena) AS Average_Price
FROM categories c
JOIN producty p ON c.id = p.category_id
JOIN state_product sp ON p.id = sp.product_id
WHERE sp.stav = 'in stock'
GROUP BY c.id
ORDER BY Average_Price ASC;
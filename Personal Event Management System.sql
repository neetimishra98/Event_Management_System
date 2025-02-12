-- Create Database 
DROP DATABASE IF EXISTS EventManagement;
CREATE DATABASE IF NOT EXISTS EventManagement;

-- Using Database 
USE EventManagement;

-- Creating Tables 

-- Creating Venue Table 
DROP TABLE IF EXISTS Venues;
CREATE table IF NOT EXISTS Venues (
    VenueID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    VenueName VARCHAR(50) NOT NULL DEFAULT '',
    StreetAddress VARCHAR(50) NOT NULL DEFAULT '',
    City VARCHAR(30) NOT NULL DEFAULT '',
    State VARCHAR(50) NOT NULL DEFAULT '',
    Country VARCHAR(30) NOT NULL DEFAULT '',
    ZipCode VARCHAR(10) NOT NULL DEFAULT '',
    Capacity VARCHAR(30) NOT NULL DEFAULT '',
    Description VARCHAR(50) NOT NULL DEFAULT '',
    ContactPerson VARCHAR(20) NOT NULL DEFAULT '',
    ContactEmail VARCHAR(30) NOT NULL DEFAULT '',
    ContactPhone VARCHAR(20) NOT NULL DEFAULT '',
    Website VARCHAR(30) NOT NULL DEFAULT '',
    PRIMARY KEY (VenueID)
);

-- Insert data into venues 

INSERT INTO Venues (VenueID, VenueName, StreetAddress, City, State, Country, ZipCode, Capacity, Description, ContactPerson, ContactEmail, ContactPhone, Website)
VALUES
    (1, 'Grand Garden Pavilion', '123 Main St', 'Dallas', 'Texas', 'US', '12345', '100', 'Description 1', 'John Doe', 'john@example.com', '123-456-7890', 'www.grandgardenpavilion.com'),
    (2, 'Crystal Ballroom Suites', '456 Oak St', 'Dallas', 'Texas', 'US', '67890', '150', 'Description 2', 'Jane Smith', 'jane@example.com', '987-654-3210', 'www.crystalballroomsuites.com'),
    (3, 'Starlight Event Center', '789 Pine St', 'Dallas', 'Texas', 'US', '54321', '120', 'Description 3', 'Bob Johnson', 'bob@example.com', '555-123-4567', 'www.starlighteventcenter.com'),
    (4, 'Golden Horizon Hall', '101 Elm St', 'Dallas', 'Texas', 'US', '13579', '80', 'Description 4', 'Emily White', 'emily@example.com', '333-555-7777', 'www.goldenhorizonhall.com'),
    (5, 'Serenity Plaza', '202 Maple St', 'Dallas', 'Texas', 'US', '24680', '200', 'Description 5', 'Michael Brown', 'michael@example.com', '999-888-7777', 'www.serenityplaza.com'),
    (6, 'Majestic View Venue', '303 Birch St', 'Dallas', 'Texas', 'US', '97531', '120', 'Description 6', 'Sara Miller', 'sara@example.com', '111-222-3333', 'www.majesticviewvenue.com'),
    (7, 'Harmony Hall', '404 Cedar St', 'Dallas', 'Texas', 'US', '86420', '150', 'Description 7', 'David Taylor', 'david@example.com', '444-555-6666', 'www.harmonyhall.com'),
    (8, 'Elegant Oasis Estates', '505 Pine St', 'Dallas', 'Texas', 'US', '13579', '180', 'Description 8', 'Laura Davis', 'laura@example.com', '777-888-9999', 'www.elegantoasisestates.com'),
    (9, 'Regal Renaissance Manor', '606 Oak St', 'Dallas', 'Texas', 'US', '24680', '100', 'Description 9', 'Chris Wilson', 'chris@example.com', '222-333-4444', 'www.regalrenaissancemanor.com'),
    (10, 'Celestial Gardens', '707 Maple St', 'Dallas', 'Texas', 'US', '67890', '250', 'Description 10', 'Amanda Johnson', 'amanda@example.com', '666-777-8888', 'www.celestialgardens.com'),
    (11, 'Blissful Harbor Events', '808 Elm St', 'Dallas', 'Texas', 'US', '54321', '120', 'Description 11', 'Daniel Smith', 'daniel@example.com', '333-444-5555', 'www.blissfulharborevents.com'),
    (12, 'Radiant Skyline Pavilion', '909 Cedar St', 'Dallas', 'Texas', 'US', '97531', '150', 'Description 12', 'Emma Brown', 'emma@example.com', '888-999-1111', 'www.radiantskylinepavilion.com'),
    (13, 'Enchanting Meadows Venue', '111 Pine St', 'Dallas', 'Texas', 'US', '13579', '200', 'Description 13', 'Jason Taylor', 'jason@example.com', '111-222-3333', 'www.enchantingmeadowsvenue.com'),
    (14, 'Opulent Oasis Halls', '222 Oak St', 'Dallas', 'Texas', 'US', '24680', '120', 'Description 14', 'Olivia Wilson', 'olivia@example.com', '444-555-6666', 'www.opulentoasishalls.com'),
    (15, 'Timeless Elegance Estates', '333 Maple St', 'Dallas', 'Texas', 'US', '67890', '180', 'Description 15', 'Matthew Davis', 'matthew@example.com', '777-888-9999', 'www.timeeleganceestates.com'),
    (16, 'Whispering Woods Pavilion', '444 Birch St', 'Dallas', 'Texas', 'US', '54321', '100', 'Description 16', 'Sophia Miller', 'sophia@example.com', '222-333-4444', 'www.whisperingpavilion.com'),
    (17, 'Royal Crest Ballroom', '555 Pine St', 'Dallas', 'Texas', 'US', '86420', '120', 'Description 17', 'Christopher White', 'christopher@example.com', '666-777-8888', 'www.royalcrestballroom.com'),
    (18, 'Tranquil Waters Event Center', '666 Oak St', 'Dallas', 'Texas', 'US', '97531', '150', 'Description 18', 'Isabella Johnson', 'isabella@example.com', '333-444-5555', 'www.tranquileventcenter.com'),
    (19, 'Celestial Heights Venue', '777 Elm St', 'Dallas', 'Texas', 'US', '13579', '120', 'Description 19', 'Ethan Smith', 'ethan@example.com', '888-999-1111', 'www.celestialvenue.com'),
    (20, 'Dazzling Sunset Manor', '888 Cedar St', 'Dallas', 'Texas', 'US', '24680', '180', 'Description 20', 'Mia Brown', 'mia@example.com', '111-222-3333', 'www.dazzlingsunsetmanor.com');


-- insert into budget 
DROP TABLE IF EXISTS budget;

CREATE TABLE IF NOT EXISTS budget(
	budgetID INT UNSIGNED NOT NULL,
    decorCost INT UNSIGNED,
    caterCost INT UNSIGNED,
    travelCost INT UNSIGNED,
    performCost INT UNSIGNED,
    venueCost INT UNSIGNED,
    estmtCost INT UNSIGNED,
    actualCost INT UNSIGNED,
    PRIMARY KEY (budgetID)
);

-- Create Trigger to calculate_estmtCost
DELIMITER //
CREATE TRIGGER calculate_estmtCost
BEFORE INSERT ON budget
FOR EACH ROW
BEGIN
    SET NEW.estmtCost = NEW.decorCost + NEW.caterCost + NEW.travelCost + NEW.performCost + NEW.venueCost;
END;
//
DELIMITER ;


-- insert into budget 
INSERT INTO budget (budgetID, decorCost, caterCost, travelCost, performCost, venueCost, actualCost)
VALUES
	(1, 1000, 2000, 500, 1400, 1500, 7000),
	(2, 1500, 2500, 600, 1800, 1600, 8200),
	(3, 1200, 2200, 550, 1200, 1600, 6930),
	(4, 800, 1800, 450, 1300, 2000, 6400),
	(5, 2000, 3000, 800, 1300, 2500, 9800),
	(6, 1300, 2300, 600, 1700, 1500, 7400),
	(7, 1800, 2800, 750, 2100, 2000, 10200),
	(8, 900, 1900, 500, 1400, 2400, 8100),
	(9, 1600, 2600, 700, 1700, 1900, 8860),
	(10, 1100, 2100, 550, 1500, 1800, 7425),
	(11, 750, 1500, 400, 1600, 1200, 5860),
	(12, 900, 1800, 500, 1400, 1300, 6000),
	(13, 1100, 2100, 550, 1700, 1500, 6960),
	(14, 1400, 2400, 600, 1300, 1400, 7800),
	(15, 2000, 3000, 800, 2000, 2000, 10500);
    
SELECT * FROM budget;
    
    
-- Creating trigger to calculate the estmt cost again if the values are updated in budget table
DROP TRIGGER recalculate_estmtCost;

DELIMITER //
CREATE TRIGGER recalculate_estmtCost
BEFORE UPDATE ON budget
FOR EACH ROW
BEGIN
    SET NEW.estmtCost = NEW.decorCost + NEW.caterCost + NEW.travelCost + NEW.performCost + NEW.venueCost;
END;
//
DELIMITER ;



-- Updating the budget table
UPDATE budget
SET decorCost = 800, performCost = 1200
WHERE budgetID = 1;


-- Checking if the after update trigger works
SELECT * FROM budget;


-- Creating EventType Table 
DROP TABLE IF EXISTS eventType; 
CREATE TABLE IF NOT EXISTS eventType(
	eventTypeID INT UNSIGNED NOT NULL,
    typeName VARCHAR(100) NOT NULL,
    PRIMARY KEY (eventTypeID)
);

-- insert into event type 
INSERT INTO eventType (eventTypeID, typeName)
VALUES
	(1, 'Birthday Party'),
	(2, 'Wedding'),
	(3, 'Baby Shower'),
	(4, 'Thanksgiving'),
	(5, 'Gender Reveal'),
	(6, 'Christmas Party'),
	(7, 'Product Launch'),
	(8, 'Fundraiser'),
	(9, 'Music Concert');

-- Creating event Table 
DROP TABLE IF EXISTS event; 
CREATE TABLE IF NOT EXISTS event(
    eventID INT UNSIGNED NOT NULL,
    eventName VARCHAR(100) NOT NULL,
    eventTypeID INT UNSIGNED NOT NULL,
    VenueID INT UNSIGNED NOT NULL,
    eventDescription TEXT,
    startTime DATETIME,
    endTime DATETIME,
    no_attendees INT UNSIGNED,
    budgetID INT UNSIGNED NOT NULL,
    PRIMARY KEY (eventID),
    FOREIGN KEY (eventTypeID) REFERENCES eventType(eventTypeID),
    FOREIGN KEY (budgetID) REFERENCES budget(budgetID),
    FOREIGN KEY (VenueID) REFERENCES Venues(VenueID)
);

-- Create Trigger to set eventName
DELIMITER //
	CREATE TRIGGER set_eventName
	BEFORE INSERT ON event
	FOR EACH ROW
	BEGIN
		SET NEW.eventName = (SELECT CONCAT(NEW.eventID, ' - ', typeName) FROM eventType WHERE eventTypeID = NEW.eventTypeID);
	END;
//
DELIMITER ;


-- insert into event 
INSERT INTO event (eventID, eventTypeID, VenueID, eventDescription, startTime, endTime, no_attendees, budgetID)
VALUES
	(1, 1, 2, 'A fun birthday celebration', '2023-10-21 18:00:00', '2023-10-21 21:00:00', 50, 1),
	(2, 6, 4, 'Family Christmas Celebration', '2023-12-25 19:00:00', '2023-12-25 23:00:00', 30, 8),
	(3, 2, 5, 'A romantic wedding ceremony', '2023-12-05 16:00:00', '2023-12-05 22:00:00', 150, 3),
	(4, 9, 7, 'Two-day music extravaganza', '2023-10-28 18:00:00', '2023-10-29 23:00:00', 5000, 10),
	(5, 7, 9, 'Launch of a new product', '2024-01-10 10:00:00', '2024-01-10 14:00:00', 200, 5),
	(6, 8, 11, 'Raising funds for a local cause', '2023-11-10 18:30:00', '2023-11-10 21:30:00', 150, 12),
	(7, 1, 1, 'Birthday Celebration', '2023-11-01 20:00:00', '2023-11-01 23:30:00', 70, 7),
	(8, 5, 3, 'Gender Reveal Party', '2023-11-20 16:00:00', '2023-11-20 19:00:00', 100, 14),
	(9, 3, 8, 'Baby Shower', '2024-05-15 17:30:00', '2024-05-15 20:30:00', 70, 9),
	(10, 4, 12, 'Thanksgiving Dinner', '2023-11-23 20:00:00', '2023-11-23 23:30:00', 100, 2),
	(11, 6, 5, 'College Christmas Celebration', '2024-12-25 19:00:00', '2024-12-25 23:59:00', 300, 11),
	(12, 9, 14, 'Musical Evening', '2023-12-20 18:30:00', '2023-12-21 23:30:00', 150, 4),
	(13, 2, 13, 'Auspicious Wedding Ceremony', '2023-11-25 14:00:00', '2023-11-25 20:00:00', 200, 13),
	(14, 7, 6, 'New Start-up Launch', '2024-03-05 12:00:00', '2024-03-05 16:00:00', 100, 6),
	(15, 4, 10, 'Thanksgiving Party', '2023-11-23 17:00:00', '2023-12-15 22:00:00', 70, 15);
    
SELECT * FROM event;
    
    
-- Function to calculate event time duration in hours
DELIMITER //
CREATE FUNCTION CalculateEventDuration(event_id INT) 
RETURNS DECIMAL(8, 2)
DETERMINISTIC
BEGIN
    DECLARE start_time DATETIME;
    DECLARE end_time DATETIME;
    DECLARE duration_hours DECIMAL(8, 2);

    SELECT startTime, endTime
    INTO start_time, end_time
    FROM event
    WHERE eventID = event_id;

    SET duration_hours = TIMESTAMPDIFF(HOUR, start_time, end_time);

    RETURN duration_hours;
END //
DELIMITER ;
#Function Call
SELECT CalculateEventDuration(4) AS eventDuration;



-- Creating User Table 
DROP TABLE IF EXISTS Users;
CREATE table IF NOT EXISTS Users (
    UserID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    UserFname VARCHAR(30) NOT NULL DEFAULT '',
    UserLname VARCHAR(30) NOT NULL DEFAULT '',
    Email VARCHAR(30) NOT NULL DEFAULT '',
    Password VARCHAR(30) NOT NULL DEFAULT '',
    RegistrationDate DATE NOT NULL,
    EventID INT UNSIGNED,
    PRIMARY KEY (UserID),
    FOREIGN KEY (EventID) REFERENCES Event(EventID)
);

-- Insert data into Users table

INSERT INTO Users (UserID, UserFname, UserLname, Email, Password, RegistrationDate, EventID)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'password123', '2023-01-01', 1),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'securepass', '2023-01-02', 2),
    (3, 'Bob', 'Johnson', 'bob.johnson@example.com', 'pass123', '2023-01-03', 1),
    (4, 'Emily', 'White', 'emily.white@example.com', 'strongpassword', '2023-01-04', 3),
    (5, 'Michael', 'Brown', 'michael.brown@example.com', 'mypass', '2023-01-05', 2),
    (6, 'Sara', 'Miller', 'sara.miller@example.com', 'sara123', '2023-01-06', 3),
    (7, 'David', 'Taylor', 'david.taylor@example.com', 'davidpass', '2023-01-07', 1),
    (8, 'Laura', 'Davis', 'laura.davis@example.com', 'laurapass', '2023-01-08', 2),
    (9, 'Chris', 'Wilson', 'chris.wilson@example.com', 'chrispass', '2023-01-09', 3),
    (10, 'Amanda', 'Johnson', 'amanda.johnson@example.com', 'amandapass', '2023-01-10', 1),
    (11, 'Daniel', 'Smith', 'daniel.smith@example.com', 'danielpass', '2023-01-11', 2),
    (12, 'Emma', 'Brown', 'emma.brown@example.com', 'emmapass', '2023-01-12', 3),
    (13, 'Jason', 'Taylor', 'jason.taylor@example.com', 'jasonpass', '2023-01-13', 1),
    (14, 'Olivia', 'Wilson', 'olivia.wilson@example.com', 'oliviapass', '2023-01-14', 2),
    (15, 'Matthew', 'Davis', 'matthew.davis@example.com', 'matthewpass', '2023-01-15', 3),
    (16, 'Sophia', 'Miller', 'sophia.miller@example.com', 'sophiapass', '2023-01-16', 1),
    (17, 'Christopher', 'White', 'christopher.white@example.com', 'christopherpass', '2023-01-17', 2),
    (18, 'Isabella', 'Johnson', 'isabella.johnson@example.com', 'isabellapass', '2023-01-18', 3),
    (19, 'Ethan', 'Smith', 'ethan.smith@example.com', 'ethanpass', '2023-01-19', 1),
    (20, 'Mia', 'Brown', 'mia.brown@example.com', 'miapass', '2023-01-20', 2);


-- Creating User Details 
DROP TABLE IF EXISTS UserDetails;
CREATE table IF NOT EXISTS UserDetails (
    UserID INT UNSIGNED NOT NULL,
    DatOfBirth DATE NOT NULL,
    UserGender CHAR(3) NOT NULL DEFAULT '',
    UserPhoneNumber VARCHAR(30) NOT NULL DEFAULT '',
    StreetAddress VARCHAR(50) NOT NULL DEFAULT '',
    City VARCHAR(30) NOT NULL DEFAULT '',
    State VARCHAR(50) NOT NULL DEFAULT '',
    Country VARCHAR(30) NOT NULL DEFAULT '',
    ZipCode VARCHAR(10) NOT NULL DEFAULT '',
    AddDetails VARCHAR(50) NOT NULL DEFAULT ''
);

-- Insert data into UserDetails table

INSERT INTO UserDetails (UserID, DatOfBirth, UserGender, UserPhoneNumber, StreetAddress, City, State, Country, ZipCode, AddDetails)
VALUES
    (1, '1990-05-15', 'M', '555-1234', '123 Main St', 'Anytown', 'CA', 'US', '12345', 'Additional Details 1'),
    (2, '1985-08-22', 'F', '555-5678', '456 Oak St', 'Othertown', 'NY', 'US', '67890', 'Additional Details 2'),
    (3, '1992-02-10', 'M', '555-9876', '789 Pine St', 'Somewhere', 'TX', 'US', '54321', 'Additional Details 3'),
    (4, '1988-11-30', 'F', '555-5432', '101 Elm St', 'Anotherplace', 'FL', 'US', '13579', 'Additional Details 4'),
    (5, '1995-07-18', 'M', '555-8765', '202 Maple St', 'Randomtown', 'WA', 'US', '24680', 'Additional Details 5'),
    (6, '1987-04-25', 'F', '555-2345', '303 Birch St', 'Anytown', 'CA', 'US', '97531', 'Additional Details 6'),
    (7, '1991-09-12', 'M', '555-6789', '404 Cedar St', 'Othertown', 'NY', 'US', '86420', 'Additional Details 7'),
    (8, '1983-06-28', 'F', '555-8765', '505 Pine St', 'Somewhere', 'TX', 'US', '13579', 'Additional Details 8'),
    (9, '1994-03-05', 'M', '555-4321', '606 Oak St', 'Anotherplace', 'FL', 'US', '24680', 'Additional Details 9'),
    (10, '1989-10-20', 'F', '555-9876', '707 Maple St', 'Randomtown', 'WA', 'US', '67890', 'Additional Details 10'),
    (11, '1997-01-15', 'M', '555-2345', '808 Elm St', 'Anytown', 'CA', 'US', '54321', 'Additional Details 11'),
    (12, '1986-04-30', 'F', '555-6789', '909 Cedar St', 'Othertown', 'NY', 'US', '97531', 'Additional Details 12'),
    (13, '1993-11-17', 'M', '555-8765', '111 Pine St', 'Anotherplace', 'FL', 'US', '13579', 'Additional Details 13'),
    (14, '1984-08-03', 'F', '555-1234', '222 Oak St', 'Randomtown', 'WA', 'US', '24680', 'Additional Details 14'),
    (15, '1996-05-20', 'M', '555-5678', '333 Maple St', 'Anytown', 'CA', 'US', '12345', 'Additional Details 15'),
    (16, '1982-12-07', 'F', '555-9876', '444 Birch St', 'Othertown', 'NY', 'US', '67890', 'Additional Details 16'),
    (17, '1990-02-22', 'M', '555-2345', '555 Pine St', 'Somewhere', 'TX', 'US', '54321', 'Additional Details 17'),
    (18, '1985-09-08', 'F', '555-8765', '666 Oak St', 'Anotherplace', 'FL', 'US', '86420', 'Additional Details 18'),
    (19, '1992-04-25', 'M', '555-4321', '777 Elm St', 'Randomtown', 'WA', 'US', '97531', 'Additional Details 19'),
    (20, '1988-11-10', 'F', '555-9876', '888 Cedar St', 'Anytown', 'CA', 'US', '12345', 'Additional Details 20');


-- Creating Employee Table 
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    empid INT PRIMARY KEY,
    empfname VARCHAR(50),
    emplname VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    date_hired DATE,
    phone_number VARCHAR(15)
);

-- insert data into employees 

INSERT INTO Employee VALUES
	(1, 'John', 'Doe', 'City1', 'State1', '2023-01-01', '123-456-7890'),
	(2, 'Jane', 'Smith', 'City2', 'State2', '2023-02-01', '987-654-3210'),
	(3, 'Alice', 'Johnson', 'City3', 'State3', '2023-03-01', '555-555-5555'),
	(4, 'Bob', 'Williams', 'City4', 'State4', '2023-04-01', '111-222-3333'),
	(5, 'Charlie', 'Brown', 'City5', 'State5', '2023-05-01', '444-444-4444'),
	(6, 'David', 'Miller', 'City6', 'State6', '2023-06-01', '666-666-6666'),
	(7, 'Eva', 'Davis', 'City7', 'State7', '2023-07-01', '777-777-7777'),
	(8, 'Frank', 'Moore', 'City8', 'State8', '2023-08-01', '888-888-8888'),
	(9, 'Grace', 'Clark', 'City9', 'State9', '2023-09-01', '999-999-9999'),
	(10, 'Harry', 'Wilson', 'City10', 'State10', '2023-10-01', '000-000-0000'),
	(11, 'Isabel', 'Turner', 'City11', 'State11', '2023-11-01', '111-111-1111'),
	(12, 'Jack', 'Parker', 'City12', 'State12', '2023-12-01', '222-222-2222'),
	(13, 'Kelly', 'Hill', 'City13', 'State13', '2024-01-01', '333-333-3333'),
	(14, 'Liam', 'Baker', 'City14', 'State14', '2024-02-01', '444-444-4444'),
	(15, 'Mia', 'Fisher', 'City15', 'State15', '2024-03-01', '555-555-5555'),
	(16, 'Noah', 'Ward', 'City16', 'State16', '2024-04-01', '666-666-6666'),
	(17, 'Olivia', 'Rogers', 'City17', 'State17', '2024-05-01', '777-777-7777'),
	(18, 'Parker', 'Wright', 'City18', 'State18', '2024-06-01', '888-888-8888'),
	(19, 'Quinn', 'Carter', 'City19', 'State19', '2024-07-01', '999-999-9999'),
	(20, 'Ryan', 'Nelson', 'City20', 'State20', '2024-08-01', '000-000-0000');	


-- Creatng Procedure For Updating Employee City and State
DELIMITER //

CREATE PROCEDURE UpdateEmployeeLocation(IN emp_id INT, IN new_city VARCHAR(50), IN new_state VARCHAR(50))
BEGIN
    UPDATE Employee
    SET city = new_city, state = new_state
    WHERE empid = emp_id;
END //

DELIMITER ;

CALL UpdateEmployeeLocation(7, 'NewCity', 'NewState');

SELECT * FROM Employee;


    
-- Creating Role Table 
DROP TABLE IF EXISTS Role;
CREATE TABLE Role (
    roleid INT PRIMARY KEY,
    dept VARCHAR(50),
    roledesc VARCHAR(100)
);

-- Insert data into Role table

INSERT INTO Role VALUES
	(1, 'Department1', 'Role1'),
	(2, 'Department2', 'Role2'),
	(3, 'Department1', 'Role3'),
	(4, 'Department2', 'Role4'),
	(5, 'Department1', 'Role5'),
	(6, 'Department2', 'Role6'),
	(7, 'Department1', 'Role7'),
	(8, 'Department2', 'Role8'),
	(9, 'Department1', 'Role9'),
	(10, 'Department2', 'Role10'),
	(11, 'Department1', 'Role11'),
	(12, 'Department2', 'Role12'),
	(13, 'Department1', 'Role13'),
	(14, 'Department2', 'Role14'),
	(15, 'Department1', 'Role15'),
	(16, 'Department2', 'Role16'),
	(17, 'Department1', 'Role17'),
	(18, 'Department2', 'Role18'),
	(19, 'Department1', 'Role19'),
	(20, 'Department2', 'Role20');

-- Query to create partner_role table
create table if not exists partner_role (
	role_id int not null primary key,
	role_type varchar(500) default ''
);



-- insert into partner_role table
insert into partner_role values 
	(1,'Decorations'),
    (2,'Travels'),
    (3,'Catering'),
    (4,'Band_Performers'),
	(5,'Venues');

 -- Query to create partner table
DROP TABLE IF EXISTS partner; 
create table if not exists partner (
	partner_id int not null primary key,
	partner_name varchar(500) default '',
	contact_fname varchar(500) default '',
	contact_lname varchar(500) default '',
	contact_number varchar(50) not null,
	partner_city varchar(500) not null,
	role_id int not null,
	partner_status varchar(500) not null,
	foreign key (role_id) references partner_role(role_id)
);

-- insert into partner table
insert into partner values 
	(1,'Indigo Decos','John','Doe',7363514689,'Dallas',1,'Active'),
	(2,'Opulent','Grace','Wilson',8265380736,'Dallas',2,'Active'),
	(3,'Extravagants','Lexi','Bestral',5672534189,'Boston',3,'Inactive'),
	(4,'Eventful Elegance','Alex','Robbins',3746523745,'Michigan',4,'Active'),
	(5,'Home Depot','Mike','Holland',9273645187,'Atlanta',5,'Inactive'),
	(6,'Aspen','Newt','Daton',5672413189,'Dallas',2,'Inactive'),
	(7,'Morning Frost','Cassandra','Reed',6341908725,'Seattle',4,'Active'),
	(8,'Dancing Leaves','Reese','Miller',7162530876,'Minnesota',1,'Active'),
	(9,'Andante','Weston','Clark',9923471625,'New York',5,'Active'),
	(10,'Victorias','Jesse','Adams',7652139999,'Dallas',3,'Active');
    
-- create procedure to fetch only active partners
DELIMITER //
create procedure GetActivePartners()
begin
select * from partner where partner_status = 'Active';
end //
DELIMITER ;

call GetActivePartners();


-- Creating Has Role Table 
DROP TABLE IF EXISTS Has_Role; 
CREATE TABLE Has_role (
    roleid INT,
    empid INT,
    salary DECIMAL(10, 2), -- Assuming salary is stored as a decimal with 2 decimal places
    FOREIGN KEY (roleid) REFERENCES Role(roleid),
    FOREIGN KEY (empid) REFERENCES Employee(empid)
);

-- Insert data into Has_role table

INSERT INTO Has_role VALUES
	(1, 1, 50000.00),
	(2, 1, 60000.00),
	(3, 2, 55000.00),
	(4, 2, 65000.00),
	(5, 3, 60000.00),
	(6, 3, 70000.00),
	(7, 4, 65000.00),
	(8, 4, 75000.00),
	(9, 5, 70000.00),
	(10, 5, 80000.00),
	(11, 6, 75000.00),
	(12, 6, 85000.00),
	(13, 7, 80000.00),
	(14, 7, 90000.00),
	(15, 8, 85000.00),
	(16, 8, 95000.00),
	(17, 9, 90000.00),
	(18, 9, 100000.00),
	(19, 10, 95000.00),
	(20, 10, 110000.00);
    
    
    
-- Creating Function to Get Total Salary for an Employee
DROP FUNCTION CalculateTotalSalary;

DELIMITER //
CREATE FUNCTION CalculateTotalSalary(emp_id INT)
	RETURNS DECIMAL(10, 2)
	DETERMINISTIC
	BEGIN
		DECLARE total_salary DECIMAL(10, 2);
 
		SELECT SUM(salary) INTO total_salary
		FROM Has_role
		WHERE empid = emp_id;
 
		RETURN total_salary;
	END //
 DELIMITER ;

SELECT CalculateTotalSalary(8) AS TotalSalary;


-- Query to create is_partner table
DROP TABLE IF EXISTS is_partner;
create table if not exists is_partner (
	partner_id int not null,
	eventID int unsigned not null,
	foreign key (partner_id) references partner(partner_id),
	foreign key (eventID) references event(eventID)
);

-- insert into is_partner table
insert into is_partner values 
	(1,1),
	(2,15),
	(3,2),
	(4,4),
	(5,13),
	(6,15),
	(7,14),
	(8,11),
	(9,7),
	(4,10),
	(10,9);


-- Creating Packages Table 
DROP TABLE IF EXISTS Packages; 
CREATE TABLE Packages (
 	PackageID INT PRIMARY KEY,
 	PackageName VARCHAR(255),
 	PackageDescription TEXT,
 	PackagePrice DECIMAL(10, 2)

 );


-- insert data into packages 

INSERT INTO Packages (PackageID, PackageName, PackageDescription, PackagePrice)
VALUES
    (1, 'Basic Package', 'Includes essentials for the event', 100.00),
    (2, 'Standard Package', 'Adds some extras to the basic package', 150.00),
    (3, 'Premium Package', 'The ultimate package with all the bells and whistles', 200.00); 
    


-- Function to calculate discounted price
DELIMITER //
CREATE FUNCTION CalculateDiscountedPrice(package_id INT, discount_percentage DECIMAL(5, 2))
RETURNS DECIMAL(10, 2)
READS SQL DATA
BEGIN
    DECLARE original_price DECIMAL(10, 2);
    DECLARE discounted_price DECIMAL(10, 2);
 
    SELECT PackagePrice INTO original_price
    FROM Packages
    WHERE PackageID = package_id;
 
    SET discounted_price = original_price - (original_price * (discount_percentage / 100));
 
    RETURN discounted_price;
END //
DELIMITER ;

SELECT CalculateDiscountedPrice(2, 10) AS DiscountedPrice;


 -- Creating Engaged Table 
DROP TABLE IF EXISTS Engaged; 
CREATE TABLE Engaged (
 	EngagedID INT PRIMARY KEY,
 	EventID INT,
 	PackageID INT,
 	EngagedDate DATE,
 	EngagedLocation VARCHAR(100),
 	EngagedNotes TEXT,
	FOREIGN KEY (PackageID) REFERENCES Packages(PackageID)
);
 
-- insert data into engaged 
INSERT INTO Engaged (EngagedID, EventID, PackageID, EngagedDate, EngagedLocation, EngagedNotes )
VALUES
    (1, 1, 1, '2023-10-20', 'Venue A', 'Engagement for a corporate event.'),
    (2, 2, 3, '2023-11-15', 'Venue B', 'Engagement for a wedding.'),
    (3, 3, 2, '2023-12-05', 'Venue C', 'Engagement for a birthday party.');


-- Creating Performer Table 
DROP TABLE IF EXISTS Performer; 
CREATE TABLE Performer (
 	PerformerID INT PRIMARY KEY,
 	PerformerName VARCHAR(255),
 	PerformerType VARCHAR(100),
 	PerformerContact VARCHAR(20),
 	PerformerEmail VARCHAR(100)
 );

-- insert data into Performer
INSERT INTO Performer (PerformerID, PerformerName, PerformerType, PerformerContact, PerformerEmail)
VALUES
    (01, 'sai ', 'Musician', '1234567890', 'com'),
    (02, 'sai k', 'Dancer', '9876543210', '.com'),
    (03, 'saik', 'Magician', '5555555555', 'e.com');


-- Creating Guestlist Birthday Table 
DROP TABLE IF EXISTS GuestList_Birthday;
CREATE TABLE GuestList_Birthday(
	eventID INT UNSIGNED NOT NULL ,
    EventDate DATE,
    GuestFirstName VARCHAR(255),
    GuestLastName VARCHAR(255),
    GuestPhoneNumber VARCHAR(20),
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);

-- insert into guestlist Birthday 
INSERT INTO GuestList_Birthday (eventID, EventDate, GuestFirstName, GuestLastName, GuestPhoneNumber)
VALUES 
	(7, '2023-11-1', 'Varun', 'Doe', '123-456-7890'),
	(7, '2023-11-1', 'Jane', 'Sharma', '123-456-7890'),
	(7, '2023-11-1', 'Harshal', 'Smith', '123-456-7890'),
	(7, '2023-11-1', 'Jane', 'Thakore', '999-789-9999'),
	(7, '2023-11-1', 'Anshu', 'Johnson', '163-476-7890'),
	(7, '2023-11-1', 'Janic', 'Shah', '523-456-7890'),
	(7, '2023-11-1', 'Anne', 'Shah', '123-434-7890'),
	(7, '2023-11-1', 'Jay', 'Day', '123-456-9090'),
	(7, '2023-11-1', 'Boot', 'Shoe', '123-456-7434'),
	(7, '2023-11-1', 'Jae', 'De', '123-456-7890'),
	(7, '2023-11-1', 'Bnne', 'Tmith', '123-456-7890'),
	(7, '2023-11-1', 'Zan', 'Shiv', '999-999-9999'),
	(7, '2023-11-1', 'Ace', 'Joon', '123-456-7890'),
	(7, '2023-11-1', 'Jac', 'De', '123-478-7890'),
	(7, '2023-11-1', 'Anne', 'Shah', '123-480-7890'),
	(7, '2023-11-1', 'Jayesh', 'Day', '123-956-7890'),
	(1, '2023-10-21', 'John', 'Doe', '123-456-7890'),
	(1, '2023-10-21', 'Jane', 'Doe', '123-456-7890'),
	(1, '2023-10-21', 'Anne', 'Smith', '123-456-7890'),
	(1, '2023-10-21', 'Jane', 'Smith', '999-789-9999'),
	(1, '2023-10-21', 'Alice', 'Johnson', '163-476-7890'),
	(1, '2023-10-21', 'Janic', 'Doe', '523-456-7890'),
	(1, '2023-10-21', 'Anne', 'Shah', '123-434-7890'),
	(1, '2023-10-21', 'Jay', 'Day', '123-456-9090'),
	(1, '2023-10-21', 'Boot', 'Shoe', '123-456-7434'),
	(1, '2023-10-21', 'Jae', 'De', '123-456-7890'),
	(1, '2023-10-21', 'Bnne', 'Tmith', '123-456-7890'),
	(1, '2023-10-21', 'Zan', 'Shiv', '999-999-9999'),
	(1, '2023-10-21', 'Ace', 'Joon', '123-456-7890'),
	(1, '2023-10-21', 'Jac', 'De', '123-478-7890'),
	(1, '2023-10-21', 'Anne', 'Shah', '123-480-7890'),
	(1, '2023-10-21', 'Jay', 'Day', '123-956-7890'); 


-- Creating Guestlist Wedding Table 
DROP TABLE IF EXISTS GuestList_Weddings;
CREATE TABLE GuestList_Weddings(
	eventID INT UNSIGNED NOT NULL ,
    EventDate DATE,
    GuestFirstName VARCHAR(255),
    GuestLastName VARCHAR(255),
    GuestPhoneNumber VARCHAR(20),
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);


-- insert into Guestlist wedding
INSERT INTO GuestList_Weddings (eventID, EventDate, GuestFirstName, GuestLastName, GuestPhoneNumber)
VALUES 
	(13, '2023-11-25', 'Jaan', 'Doe', '123-456-7890'),
	(13, '2023-11-25', 'Sai', 'Sharma', '123-456-7890'),
	(13, '2023-11-25', 'Harshal', 'Smith', '123-456-7890'),
	(13, '2023-11-25', 'Rushik', 'Thakore', '999-789-9999'),
	(13, '2023-11-25', 'Anshu', 'Johnson', '163-476-7890'),
	(13, '2023-11-25', 'Jaic', 'Shah', '523-456-7890'),
	(13, '2023-11-25', 'Ayt', 'Sh', '123-434-7790'),
	(13, '2023-11-25', 'Jay', 'Day', '123-456-9090'),
	(13, '2023-11-25', 'Boot', 'Shoe', '123-456-7434'),
	(13, '2023-11-25', 'Jae', 'De', '123-456-7890'),
	(13, '2023-11-25', 'banana', 'Tmith', '123-456-7890'),
	(13, '2023-11-25', 'Zan', 'Shiv', '999-999-9999'),
	(13, '2023-11-25', 'Ace', 'Joon', '123-456-7890'),
	(13, '2023-11-25', 'Jac', 'De', '123-478-7890'),
	(13, '2023-11-25', 'Anne', 'Shah', '123-480-7890'),
	(13, '2023-11-25', 'Jayesh', 'Day', '123-956-7890');

-- Creat Guestlist Thanksgiving 
DROP TABLE IF EXISTS GuestList_Thanksgiving;
CREATE TABLE GuestList_Thanksgiving(
	eventID INT UNSIGNED NOT NULL ,
    EventDate DATE,
    GuestFirstName VARCHAR(255),
    GuestLastName VARCHAR(255),
    GuestPhoneNumber VARCHAR(20),
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);

-- insert into GuestList Thanksgiving 
INSERT INTO GuestList_Thanksgiving (eventID, EventDate, GuestFirstName, GuestLastName, GuestPhoneNumber)
VALUES 
	(10, '2023-11-23', 'Harshit', 'Divij', '123-456-7890'),
	(10, '2023-11-23', 'Beyonce', 'Sharma', '123-456-7890'),
	(10, '2023-11-23', 'Harshal', 'Smith', '123-456-7890'),
	(10, '2023-11-23', 'Ana', 'Thakore', '999-789-9999'),
	(10, '2023-11-23', 'Shreya', 'Johnson', '163-476-7890'),
	(10, '2023-11-23', 'Jaic', 'Shetty', '523-456-7890'),
	(10, '2023-11-23', 'Neeti', 'Sh', '123-434-7890'),
	(10, '2023-11-23', 'Jay', 'Mishra', '123-456-9090'),
	(10, '2023-11-23', 'Bo', 'Shoe', '123-456-7434'),
	(10, '2023-11-23', 'Jae', 'De', '123-456-7890'),
	(10, '2023-11-23', 'banana', 'Tmith', '123-456-7890'),
	(10, '2023-11-23', 'Zan', 'Shiv', '999-999-9999'),
	(10, '2023-11-23', 'Ace', 'Joon', '123-456-7890'),
	(10, '2023-11-23', 'Jac', 'De', '123-478-7890'),
	(10, '2023-11-23', 'Anne', 'Shah', '123-480-7890'),
	(10, '2023-11-23', 'Jayesh', 'Day', '123-956-7890');

-- Create GuestList Gender Reveal 
DROP TABLE IF EXISTS GuestList_Genderreveal;
CREATE TABLE GuestList_Genderreveal(
	eventID INT UNSIGNED NOT NULL ,
    EventDate DATE,
    GuestFirstName VARCHAR(255),
    GuestLastName VARCHAR(255),
    GuestPhoneNumber VARCHAR(20),
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);


-- insert into GuestList Gender Reveal 
INSERT INTO GuestList_Genderreveal (eventID, EventDate, GuestFirstName, GuestLastName, GuestPhoneNumber)
VALUES 
	(8, '2023-11-20', 'Dev', 'Doe', '123-456-7890'),
	(8, '2023-11-20', 'Jae', 'Sharma', '123-456-7890'),
	(8, '2023-11-20', 'Harshal', 'Smith', '123-456-7890'),
	(8, '2023-11-20', 'Anne', 'Thakore', '999-789-9999'),
	(8, '2023-11-20', 'Anshu', 'Johnson', '163-476-7890'),
	(8, '2023-11-20', 'Jaic', 'Shah', '523-456-7890'),
	(8, '2023-11-20', 'Ayt', 'Sh', '123-434-7890'),
	(8, '2023-11-20', 'Jay', 'Day', '123-456-9090'),
	(8, '2023-11-20', 'Boot', 'Shoe', '123-456-7434'),
	(8, '2023-11-20', 'Jae', 'De', '123-456-7890'),
	(8, '2023-11-20', 'banana', 'Tmith', '123-456-7890'),
	(8, '2023-11-20', 'Zan', 'Shiv', '999-999-9999'),
	(8, '2023-11-20', 'Ace', 'Joon', '123-456-7890'),
	(8, '2023-11-20', 'Jac', 'De', '123-478-7890'),
	(8, '2023-11-20', 'Anne', 'Shah', '123-480-7890'),
	(8, '2023-11-20', 'Jayesh', 'Day', '123-956-7890'); 
    
    
-- Create GuestList Christmas 
DROP TABLE IF EXISTS GuestList_Christmas;
CREATE TABLE GuestList_Christmas(
	eventID INT UNSIGNED NOT NULL ,
    EventDate DATE,
    GuestFirstName VARCHAR(255),
    GuestLastName VARCHAR(255),
    GuestPhoneNumber VARCHAR(20),
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);


-- insert into GuestList Christmas 
INSERT INTO GuestList_Christmas (eventID, EventDate, GuestFirstName, GuestLastName, GuestPhoneNumber)
VALUES 
	(2, '2023-12-25', 'Devi', 'Doe', '123-456-7890'),
	(2, '2023-12-25', 'Jae', 'Sharma', '123-456-7890'),
	(2, '2023-12-25', 'Harshal', 'Smith', '123-456-7890'),
	(2, '2023-12-25', 'Ana', 'Thakore', '999-789-9999'),
	(2, '2023-12-25', 'Anshu', 'Johnson', '163-476-7890'),
	(2, '2023-12-25', 'Ana', 'Kapadia', '523-456-7890'),
	(2, '2023-12-25', 'Shreya', 'Sh', '123-434-7890'),
	(2, '2023-12-25', 'Jay', 'Day', '123-456-9090'),
	(2, '2023-12-25', 'Boot', 'Shoe', '123-456-7434'),
	(2, '2023-12-25', 'Jae', 'De', '123-456-7890'),
	(2, '2023-12-25', 'Niti', 'Tmith', '123-456-7890'),
	(2, '2023-12-25', 'Zan', 'Shiv', '999-999-9999'),
	(2, '2023-12-25', 'Ace', 'Joon', '123-456-7890'),
	(2, '2023-12-25', 'Jac', 'De', '123-478-7890'),
	(2, '2023-12-25', 'Rohit', 'Shah', '123-480-7890'),
	(2, '2023-12-25', 'Jayesh', 'Day', '123-956-7890');


-- Create GuestList Babyshowers
drop table if exists GuestList_Babyshowers;
create table GuestList_Babyshowers(
eventID INT UNSIGNED NOT NULL ,
    EventDate DATE,
    GuestFirstName VARCHAR(255),
    GuestLastName VARCHAR(255),
    GuestPhoneNumber VARCHAR(20),
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);

-- insert into GuestList BabyShower 
INSERT INTO GuestList_Babyshowers (eventID, EventDate, GuestFirstName, GuestLastName, GuestPhoneNumber)
VALUES 
(9, '2024-05-15', 'Sid', 'Doe', '123-456-7890'),
(9, '2024-05-15', 'Jane', 'Ch', '123-456-7890'),
(9, '2024-05-15', 'Aeiou', 'Smith', '123-456-7890'),
(9, '2024-05-15', 'Jane','Aeiou', '999-789-9999'),
(9, '2024-05-15', 'Alec', 'Johnson', '163-476-7890'),
(9, '2024-05-15', 'Jac', 'Doe', '523-456-7890'),
(9, '2024-05-15', 'Banana', 'Shah', '123-434-7890'),
(9, '2024-05-15', 'Jay', 'Apple', '123-456-9090'),
(9, '2024-05-15', 'Peach', 'Shoe', '123-456-7434'),
(9, '2024-05-15', 'Jae', 'Melon', '123-456-7890'),
(9, '2024-05-15', 'Anne', 'Tmith', '123-456-7890'),
(9, '2024-05-15', 'Zan', 'Shiv', '999-999-9999'),
(9, '2024-05-15', 'Ace', 'Joon', '123-456-7890'),
(9, '2024-05-15', 'Jac', 'De', '123-478-7890'),
(9, '2024-05-15', 'Anne', 'Shah', '123-480-7890'),
(9, '2024-05-15', 'Jay', 'Day', '123-956-7890'); 



-- Procedure to fetch guests for a Birthday
DROP PROCEDURE get_guests;
DELIMITER $$
CREATE PROCEDURE get_guests(IN ei INT)
BEGIN
SELECT * FROM GuestList_Birthday WHERE eventID = ei; 
END $$
DELIMITER ; 

CALL get_guests(7);
CALL get_guests(1);



-- Views

-- View 1: eventID and eventName with Overbudget Information
DROP VIEW IF EXISTS overbudget_events;
CREATE VIEW overbudget_events AS
SELECT
    e.eventID,
    e.eventName,
    b.estmtCost,
    b.actualCost,
    (b.actualCost - b.estmtCost) AS overbudget_amount
FROM
    event e
JOIN budget b ON e.budgetID = b.budgetID
WHERE
    b.actualCost > b.estmtCost
ORDER BY
    e.eventID;

SELECT * FROM overbudget_events;


-- View 2: Average Attendees per Event Type
DROP VIEW IF EXISTS avg_attendees_per_event_type;
CREATE VIEW avg_attendees_per_event_type AS
SELECT
    et.typeName AS eventType,
    AVG(e.no_attendees) AS avg_attendees
FROM
    event e
JOIN eventType et ON e.eventTypeID = et.eventTypeID
GROUP BY
    et.typeName;
    
SELECT * FROM avg_attendees_per_event_type;


-- View 3: Event with their venues
DROP VIEW IF EXISTS event_with_venue;
CREATE VIEW event_with_venue AS
SELECT
    e.eventID,
    e.eventName,
    v.VenueName
FROM
    EVENT e
JOIN
    Venues v ON e.VenueID = v.VenueID
GROUP BY
    e.eventID;

SELECT * FROM event_with_venue;



-- Complex Queries

-- Query 1 Retrieve Employees with Their Roles and Salaries
SELECT
    E.empid, E.empfname, E.emplname, E.city, R.dept, R.roledesc, HR.salary
FROM
    Employee E
JOIN
    Has_role HR ON E.empid = HR.empid
JOIN
    Role R ON HR.roleid = R.roleid;

-- Query 2  Retrieve Average Salary per Department
SELECT
    R.dept, AVG(HR.salary) AS avg_salary
FROM
    Role R
JOIN
    Has_role HR ON R.roleid = HR.roleid
GROUP BY
    R.dept;

-- Query 3 Fetch the partners and their roles
select partner.partner_id, partner.partner_name, partner.role_id, partner_role.role_type
from partner
join partner_role
on partner.role_id = partner_role.role_id;

-- Query 4 Get the list of events and its partners along with the location 
select 
	partner.partner_id, 
    partner.partner_name, 
    event.eventID, 
    event.eventName, 
    event.VenueID, 
    event.no_attendees
from partner
	join 
    is_partner on partner.partner_id = is_partner.partner_id
join event 
	on event.eventID = is_partner.eventID;

-- Query 5 Fetching count of performers grouped by the performer type
SELECT
    PerformerType,
    COUNT(PerformerID) AS PerformerCount
FROM
    Performer
GROUP BY
    PerformerType;

-- Query 6  List all events along with their eventTypes
SELECT e.eventID, e.eventName, et.typeName
FROM event e
JOIN eventType et ON e.eventTypeID = et.eventTypeID;

-- Query 7   Find the event with the highest number of attendees:
SELECT eventID, eventName, no_attendees
FROM event
ORDER BY no_attendees DESC
LIMIT 1;

-- Query 8 List event types along with the average number of attendees for each type:
SELECT et.typeName, AVG(e.no_attendees) AS avgAttendees
FROM eventType et
LEFT JOIN event e ON et.eventTypeID = e.eventTypeID
GROUP BY et.typeName;

-- Query 9  Find events that exceeded their estimated budget:
SELECT e.eventID, e.eventName, b.estmtCost, b.actualCost
FROM event e
JOIN budget b ON e.budgetID = b.budgetID
WHERE b.actualCost > b.estmtCost;
 
-- Query 10  List events along with their budget details ordered by the difference between estimated and actual costs:
SELECT e.eventID, e.eventName, b.estmtCost, b.actualCost, (b.actualCost - b.estmtCost) AS costDifference
FROM event e
JOIN budget b ON e.budgetID = b.budgetID
ORDER BY costDifference DESC;

-- Query 11 Count the number of events for each event type:
SELECT et.typeName, COUNT(e.eventID) AS eventCount
FROM eventType et
LEFT JOIN event e ON et.eventTypeID = e.eventTypeID
GROUP BY et.typeName;

-- Query 12 List events with their start times within a specific date range:
SELECT eventID, eventName, startTime
FROM event
WHERE startTime BETWEEN '2023-01-01' AND '2023-12-31';

-- Query 13 Fetching engagements with future engaged dates
SELECT
    EngagedID, EngagedDate, EngagedLocation, EngagedNotes, EventID, PackageID
FROM
    Engaged
WHERE
    EngagedDate > CURDATE();
    
-- Query 14  Query to Find Available Venues for a Given Date and Capacity using SubQuery
SELECT VenueName, StreetAddress, City, State, Capacity
FROM Venues
WHERE VenueID NOT IN (
    SELECT VenueID
    FROM Event
    WHERE startTime = '2023-10-21'
)
AND Capacity >= 50;


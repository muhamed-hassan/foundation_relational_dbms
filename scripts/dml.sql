-- INSERT

-- insert 5 "departments" without manager's info
INSERT INTO `department` (`dname`) VALUES ('Software Development');
INSERT INTO `department` (`dname`) VALUES ('Accounting');
INSERT INTO `department` (`dname`) VALUES ('Legal Affairs');
INSERT INTO `department` (`dname`) VALUES ('Internal IT');
INSERT INTO `department` (`dname`) VALUES ('Operations');


-- insert 5 "dept_locations" 
INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES (1, 'Berlin');
INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES (2, 'Hamburg');
INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES (3, 'Stuttgart');
INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES (4, 'Munich');
INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES (5, 'Frankfurt');


-- insert 20 "employees"
---- 5 managers
---- 15 workers, fill super_ssn field in that case => 3 workers per mgr
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `dno`) VALUES ('James', 'A', 'Henry', '1980-01-01', 'Liverpool', 'M', 10000, 1);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `dno`) VALUES ('Anastasia', 'B', 'Vladimir', '1981-02-05', 'Mosco', 'F', 10000, 2);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `dno`) VALUES ('Friedrich', 'C', 'Leon', '1982-03-10', 'Berlin', 'M', 10000, 3);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `dno`) VALUES ('Camille', 'E', 'Antoine', '1983-04-15', 'Paris', 'F', 10000, 4);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `dno`) VALUES ('Muhammad', 'D', 'Omar', '1984-05-20', 'Riyadh', 'M', 10000, 5);

INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Michael', 'F', 'David', '1991-01-01', 'Austin', 'M', 5000, 1, 1);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Elizabeth', 'G', 'Thomas', '1992-02-01', 'San Francisco', 'F', 5000, 1, 1);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Samuel', 'V', 'Noah', '1993-03-01', 'New York', 'M', 5000, 1, 1);

INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Benjamin', 'X', 'Alexander', '1991-04-01', 'Toronto', 'M', 5000, 2, 2);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Sophia', 'Y', 'Nathan', '1992-05-01', 'Vancouver', 'F', 5000, 2, 2);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Lucas', 'Z', 'William', '1993-06-01', 'Ottawa', 'M', 5000, 2, 2);

INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Harper', 'X', 'Zoe', '1991-07-01', 'Melbourne', 'M', 5000, 3, 3);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Matilda', 'Y', 'Anthony', '1992-08-01', 'Sydney', 'F', 5000, 3, 3);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Theodore', 'Z', 'Xavier', '1993-09-01', 'Canberra', 'M', 5000, 3, 3);

INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Ivan', 'K', 'Oleg', '1991-10-01', 'Saint Petersburg', 'M', 5000, 4, 4);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Galina', 'L', 'Fyodor', '1992-11-01', 'Kazan', 'F', 5000, 4, 4);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Boris', 'M', 'Alexei', '1993-12-01', 'Vologda', 'M', 5000, 4, 4);

INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Faisal', 'P', 'Khalid', '1991-10-05', 'Jeddah', 'M', 5000, 5, 5);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Amal', 'S', 'Abdullah', '1992-11-15', 'Dammam', 'F', 5000, 5, 5);
INSERT INTO `employee` (`fname`, `minit`, `lname`, `bdate`, `address`, `sex`, `salary`, `super_ssn`, `dno`) VALUES ('Ahmad', 'J', 'Rashid', '1993-12-20', 'Mecca', 'M', 5000, 5, 5);


-- insert 5 "pojects"
INSERT INTO `project` (`pname`, `plocation`, `dnum`) VALUES ('Project A', 'Taif', 1);
INSERT INTO `project` (`pname`, `plocation`, `dnum`) VALUES ('Project B', 'Baghdad', 1);
INSERT INTO `project` (`pname`, `plocation`, `dnum`) VALUES ('Project C', 'Casablanca', 1);
INSERT INTO `project` (`pname`, `plocation`, `dnum`) VALUES ('Project D', 'Marrakesh', 1);
INSERT INTO `project` (`pname`, `plocation`, `dnum`) VALUES ('Project E', 'Irbid', 1);


-- insert 15 records in "works_on"
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (6, 1, 10);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (7, 1, 15);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (8, 1, 20);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (9, 2, 10);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (10, 2, 15);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (11, 2, 20);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (12, 3, 10);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (13, 3, 15);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (14, 3, 20);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (15, 4, 10);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (16, 4, 15);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (17, 4, 20);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (18, 5, 10);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (19, 5, 15);
INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES (20, 5, 20);


-- insert 15 records in "dependent"
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (6, 'Elizabeth', 'F', '1995-01-01', 'wife');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (7, 'Daniel', 'M', '2010-01-01', 'son');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (8, 'Emma', 'F', '2010-01-01', 'daughter');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (9, 'Ellie', 'F', '1994-01-01', 'wife');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (10, 'Nathan', 'M', '2010-01-01', 'son');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (11, 'Avery', 'F', '2010-01-01', 'daughter');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (12, 'Amelia', 'F', '1993-01-01', 'wife');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (13, 'Theodore', 'M', '2010-01-01', 'son');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (14, 'Victoria', 'F', '2010-01-01', 'daughter');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (15, 'Nikita', 'F', '1992-01-01', 'wife');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (16, 'Artyom', 'M', '2010-01-01', 'son');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (17, 'Anya', 'F', '2010-01-01', 'daughter');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (18, 'Aisha', 'F', '1996-01-01', 'wife');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (19, 'Hamza', 'M', '2010-01-01', 'son');
INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES (20, 'Nadia', 'F', '2010-01-01', 'daughter');

/* ********************************************************************************************************* */
/* ********************************************************************************************************* */

-- UPDATE

-- update all "departments" using managers info
UPDATE `department` 
SET `mgr_ssn` = 1, `mgr_start_date` = '2023-01-01'
WHERE `dnumber` = 1;

UPDATE `department` 
SET `mgr_ssn` = 2, `mgr_start_date` = '2023-01-01'
WHERE `dnumber` = 2;

UPDATE `department` 
SET `mgr_ssn` = 3, `mgr_start_date` = '2023-01-01'
WHERE `dnumber` = 3;

UPDATE `department` 
SET `mgr_ssn` = 4, `mgr_start_date` = '2023-01-01'
WHERE `dnumber` = 4;

UPDATE `department` 
SET `mgr_ssn` = 5, `mgr_start_date` = '2023-01-01'
WHERE `dnumber` = 5;

/* ********************************************************************************************************* */
/* ********************************************************************************************************* */

-- SELECT

-- select all info regarding each employee

SELECT `ssn`, `fname` AS `first name`, `minit`, `lname` AS `last name`, `bdate` AS `date of birth`, `address`, `sex`, `salary`, 
       `department`.`dname` AS 'department name',
       `dept_locations`.`dlocation` AS 'works at',
       `project`.`pname` AS 'project name', 
        `works_on`.`hours` AS 'worked hours'      
FROM `employee`
INNER JOIN `department` ON `employee`.`dno` = `department`.`dnumber`
INNER JOIN `dept_locations` ON `department`.`dnumber` = `dept_locations`.`dnumber`
INNER JOIN `works_on` ON `employee`.`ssn` = `works_on`.`essn`
INNER JOIN `project` ON `works_on`.`pno` = `project`.`pnumber`;


/* ********************************************************************************************************* */
/* ********************************************************************************************************* */

-- DELETE

-- wipe all the inserted records

DELETE FROM `dependent`;

DELETE FROM `works_on`;

DELETE FROM `project`;

DELETE FROM `dept_locations`;

UPDATE `department` 
SET `mgr_ssn` = NULL, `mgr_start_date` = NULL;

UPDATE `employee` 
SET `super_ssn` = NULL
WHERE `ssn` > 5;

DELETE FROM `employee`;

DELETE FROM `department`;
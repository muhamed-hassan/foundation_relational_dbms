CREATE SCHEMA `company`;

USE `company`;

/* ********************************************************************************************************* */
/* ********************************************************************************************************* */

-- Department that controls a project
CREATE TABLE `department` (
  `dnumber` int unsigned AUTO_INCREMENT,
  `dname` varchar(50) NOT NULL,
  `mgr_ssn` int unsigned,  
  `mgr_start_date` date,
  PRIMARY KEY (`dnumber`)
);

-- fk1: mgr_ssn -> employee:ssn


-- Location of a department that can have multiple locations
CREATE TABLE `dept_locations` (
  `dnumber` int unsigned NOT NULL,
  `dlocation` varchar(50) NOT NULL,
  PRIMARY KEY (`dnumber`, `dlocation`)
);

-- fk1: dnumber -> department:dnumber


-- Employee as a worker works for a department to be allocated on a project
-- Employee as a manager manages a department and supervises a worker
CREATE TABLE `employee` (
  `ssn` int unsigned AUTO_INCREMENT,
  `fname` varchar(25) NOT NULL,
  `minit` varchar(5) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `bdate` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `sex` char(1) NOT NULL,
  `salary` float unsigned NOT NULL,
  `super_ssn` int unsigned,
  `dno` int unsigned NOT NULL,
  PRIMARY KEY (`ssn`)
);

-- fk1: super_ssn -> employee:ssn
-- fk2: dno -> department:dnumber


-- Project located in a location which belongs to a certain department
CREATE TABLE `project` (
  `pnumber` int unsigned AUTO_INCREMENT,  
  `pname` varchar(50) NOT NULL,  
  `plocation` varchar(50) NOT NULL,
  `dnum` int unsigned NOT NULL,
  PRIMARY KEY (`pnumber`, `plocation`)
);

-- fk1: dnum -> department:dnumber


-- Employee works on a project
CREATE TABLE `works_on` (
  `essn` int unsigned NOT NULL,  
  `pno` int unsigned NOT NULL,  
  `hours` int unsigned NOT NULL,
  PRIMARY KEY (`essn`, `pno`)
);

-- fk1: essn -> employee:ssn
-- fk2: pno -> project:pnumber


-- Employee has a dependent as a son, daughter, ...
CREATE TABLE `dependent` (
  `essn` int unsigned NOT NULL,
  `dependent_name` varchar(100) NOT NULL,
  `sex` char(1) NOT NULL,
  `bdate` date NOT NULL,
  `relationship` varchar(250) NOT NULL,
  PRIMARY KEY (`essn`, `dependent_name`)
);

-- fk1: essn -> employee:ssn


/* ********************************************************************************************************* */

ALTER TABLE `dependent`
ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);


ALTER TABLE `works_on`
ADD FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

ALTER TABLE `works_on`
ADD FOREIGN KEY (`pno`) REFERENCES `project` (`pnumber`);


ALTER TABLE `project`
ADD FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);


ALTER TABLE `employee`
ADD FOREIGN KEY (`super_ssn`) REFERENCES `employee` (`ssn`);

ALTER TABLE `employee`
ADD FOREIGN KEY (`dno`) REFERENCES `department` (`dnumber`);


ALTER TABLE `dept_locations`
ADD FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);


ALTER TABLE `department`
ADD FOREIGN KEY (`mgr_ssn`) REFERENCES `employee` (`ssn`);
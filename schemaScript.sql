-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Resident`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Resident` (
  `AccountNumber` INT NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NULL,
  `Tower` VARCHAR(1) NOT NULL,
  `HouseNumber` INT NOT NULL,
  `Floor` INT NOT NULL,
  `Occupation` VARCHAR(45) NULL,
  `Gender` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`AccountNumber`))
ENGINE = InnoDB;               
               
INSERT INTO `mydb`.`Resident`(
	`AccountNumber`,
    `FirstName`,
    `LastName`,
    `Tower`,
    `HouseNumber`,
    `Floor`,
    `Occupation`,
    `Gender`
)
VALUES(
	1,
    "Arjun",
    "Singh",
    "A",
    202,
    2,
    "Civil Engineer",
    "M"
),
(
	2,
    "Prateek",
    "Kumar",
    "A",
    201,
    2,
    "Singer",
    "M"
),
(
	3,
    "Jyoti",
    "Agarwal",
    "D",
    502,
    5,
    "Chef",
    "F"
),
(
	4,
    "Prashant",
    "Singh",
    "C",
    908,
    9,
    "Mechanical Engineer",
    "M"
),
(
	5,
    "Lavanya",
    "Mishra",
    "B",
    202,
    3,
    "Anlayst",
    "F"
);
               
-- -----------------------------------------------------
-- Table `mydb`.`PhoneNumbers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PhoneNumbers` (
  `AccountNumber` INT NOT NULL,
  `PhoneNumber` VARCHAR(15) NOT NULL,
  `UserType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PhoneNumber`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`PhoneNumbers` (
	`AccountNumber`,
    `PhoneNumber`,
    `UserType`
)

VALUES 
(1, 9812678912, "resident"),
(2, 9128120932, "resident"),
(3, 9123121231, "resident"),
(1, 9119191991, "visitor"),
(2, 9111911999, "visitor"),
(4, 9120293013, "resident"),
(5, 8789389382, "resident"),
(1, 9812278912, "serviceProvider"),
(2, 9121110932, "serviceProvider"),
(3, 8812121231, "serviceProvider"),
(4, 9812371112, "serviceProvider"),
(1, 9919291921, "maintenanceStaff"),
(2, 9123391921, "maintenanceStaff"),
(3, 9919211231, "maintenanceStaff"),
(4, 8801291121, "maintenanceStaff"),
(5, 9891929321, "maintenanceStaff"),
(6, 8111291922, "maintenanceStaff"),
(1, 9919291921, "securityStaff"),
(2, 8352969221, "securityStaff"),
(3, 9919293331, "securityStaff"),
(4, 7799919121, "securityStaff"),
(5, 9797291721, "securityStaff");

-- -----------------------------------------------------
-- Table `mydb`.`LicenseNumber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LicenseNumber` (
  `AccountNumber` INT NOT NULL,
  `LicenseNumber` VARCHAR(45) NOT NULL,
  `UserType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AccountNumber`, `LicenseNumber`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`LicenseNumber`(
`AccountNumber`,
`LicenseNumber`,
`UserType`
)
VALUES
(1,9901,"visitor"),
(1,9182,"resident"),
(2,1923,"resident"),
(3,1231,"resident"),
(4,2323,"resident"),
(5,2123,"resident"),
(2,2314,"serviceProvider"),
(4,1111,"serviceProvider");
               
-- -----------------------------------------------------
-- Table `mydb`.`ServiceProvider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ServiceProvider` (
  `AccountNumber` INT NOT NULL,
  `AttendanceInformation` VARCHAR(500) NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NULL,
  PRIMARY KEY (`AccountNumber`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`ServiceProvider` (
`AccountNumber`,
`AttendanceInformation`,
`FirstName`,
`Lastname`)
VALUES
(1,"APPPAPPPPPPAPPPPPPPPPPPPAPPAPP","Lakshay","Kumar"),
(2,"PPPPPPPPAAAPPPPPPPPAPPPPPPPAPA","Pradeep","Singh"),
(3,"PAPPPAAPPPPPPPPPPPPPAPPPPPAAAA","Sumit","Gupta"),
(4,"PPPPPPAPPPPPPAPPPPPPAPPPPPPAAP","Dheeraj","Bhatia");
               
-- -----------------------------------------------------
-- Table `mydb`.`Parking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Parking` (
  `ParkingID` INT NOT NULL,
  `VehicleType` VARCHAR(45) NOT NULL,
  `BasementLevel` INT NOT NULL,
  `ParkingNumber` INT NOT NULL,
  `UserType` VARCHAR(45) NOT NULL,
  `Resident_AccountNumber` INT NULL,
  `ServiceProvider_AccountNumber` INT NULL,
  PRIMARY KEY (`ParkingID`),
  INDEX `fk_Parking_Resident1_idx` (`Resident_AccountNumber` ASC) VISIBLE,
  INDEX `fk_Parking_ServiceProvider1_idx` (`ServiceProvider_AccountNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Parking_Resident1`
    FOREIGN KEY (`Resident_AccountNumber`)
    REFERENCES `mydb`.`Resident` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Parking_ServiceProvider1`
    FOREIGN KEY (`ServiceProvider_AccountNumber`)
    REFERENCES `mydb`.`ServiceProvider` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`Parking` (
`ParkingID`,
`VehicleType`,
`BasementLevel`,
`ParkingNumber`,
`UserType`,
`Resident_AccountNumber`,
`ServiceProvider_AccountNumber`)

VALUES
(1,"car",1,23,"resident",1,NULL),
(2,"car",2,11,"resident",2,NULL),
(3,"car",1,12,"resident",3,NULL),
(4,"car",1,13,"resident",4,NULL),
(5,"car",1,14,"resident",5,NULL),
(6,"car",2,1,"serviceProvider",NULL,2),
(7,"bike",1,2,"serviceProvider",NULL,4);

-- -----------------------------------------------------
-- Table `mydb`.`Visitor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Visitor` (
  `TempAccountNumber` INT NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NULL,
  `AccountExpiryTimeStamp` TIMESTAMP(6) NOT NULL,
  `AccountStartTimeStamp` TIMESTAMP(6) NOT NULL,
  PRIMARY KEY (`TempAccountNumber`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`Visitor` (
`TempAccountNumber`,
`AccountNumber`,
`FirstName`,
`LastName`,
`AccountExpiryTimeStamp`,
`AccountStartTimeStamp`)
VALUES
(1,"Sushant", "Singh", '2020-04-02','2020-03-18'),
(2,"Ritvik", "Thakur", '2020-03-29','2020-03-25');
               
-- -----------------------------------------------------
-- Table `mydb`.`Complaint`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Complaint` (
  `ComplaintID` INT NOT NULL,
  `TimeStamp` TIMESTAMP(6) NOT NULL,
  `StaffResolutionStatus` VARCHAR(1) NOT NULL,
  `ComplaintResolutionStatus` VARCHAR(1) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `Resident_AccountNumber` INT NOT NULL,
  `ServiceProvider_AccountNumber` INT NOT NULL,
  `Visitor_TempAccountNumber` INT NOT NULL,
  PRIMARY KEY (`ComplaintID`, `Visitor_TempAccountNumber`),
  INDEX `fk_Complaint_Resident1_idx` (`Resident_AccountNumber` ASC) VISIBLE,
  INDEX `fk_Complaint_ServiceProvider1_idx` (`ServiceProvider_AccountNumber` ASC) VISIBLE,
  INDEX `fk_Complaint_Visitor1_idx` (`Visitor_TempAccountNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Complaint_Resident1`
    FOREIGN KEY (`Resident_AccountNumber`)
    REFERENCES `mydb`.`Resident` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Complaint_ServiceProvider1`
    FOREIGN KEY (`ServiceProvider_AccountNumber`)
    REFERENCES `mydb`.`ServiceProvider` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Complaint_Visitor1`
    FOREIGN KEY (`Visitor_TempAccountNumber`)
    REFERENCES `mydb`.`Visitor` (`TempAccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`Complaint`(
`ComplaintID`,
`TimeStamp`,
`StaffResolutionStatus`,
`ComplaintResolutionStatus`,
`Description`,
`Resident_AccountNumber`,
`ServiceProvider_AccountNumber`,
`Visitor_TempAccountNumber`,
`Visitor_AccountNumber`)
VALUES 
(1,'2021-03-25 11:23:00','F','F','Leaking faucet',2,NULL,NULL,NULL,NULL),
(2,'2021-03-23 18:20:00','F','F','Jammed door on 9th floor',4,NULL,NULL,NULL,NULL),
(3,'2021-04-15 18:20:00','T','T','Parking spot occupied by unknown car',NULL,2,NULL,NULL);

-- -----------------------------------------------------
-- Table `mydb`.`TargetUser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TargetUser` (
  `ID` INT NOT NULL,
  `TargetUser` VARCHAR(45) NOT NULL,
  `QueryType` VARCHAR(45) NOT NULL COMMENT 'announcements/ complaint',
  PRIMARY KEY (`ID`, `TargetUser`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`TargetUser` (
`ID`,
`TargetUser`,
`QueryType`)
VALUES
(1,"resident","announcement");
               
-- -----------------------------------------------------
-- Table `mydb`.`MaintenanceStaff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MaintenanceStaff` (
  `AccountID` INT NOT NULL,
  `PhoneNumber` VARCHAR(15) NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NULL,
  PRIMARY KEY (`AccountID`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`MaintenanceStaff` (
`AccountID`,
`PhoneNumber`,
`FirstName`,
`LastName`)
VALUES
(1,9125789990,"Mrakhar","Paurya"),
(2,7668219007,"Saurabh","Tiwari"),
(3,8212839103,"Pankaj","Nag"),
(4,9957773012,"Manish","Arora"),
(5,9999229391,"Suraj","Singh"),
(6,8878309203,"Jennifer","Lawerence");
               
-- -----------------------------------------------------
-- Table `mydb`.`SecurityStaff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SecurityStaff` (
  `AccountID` INT NOT NULL,
  `AttendanceInformation` VARCHAR(500) NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NULL,
  PRIMARY KEY (`AccountID`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`SecurityStaff` (
`AccountID`,
`AttendanceInformation`,
`FirstName`,
`LastName`)
VALUES
(1,"PPAPAPP","Rituraj","Gupta"),
(2,"PPPPPPP","Ankit","Singh"),
(3,"PPAAAAA","Rishi","Raj"),
(4,"APPPPPP","Sakshi","Saxena"),
(5,"PAPPAAP","Hariram","Singh");
               
-- -----------------------------------------------------
-- Table `mydb`.`Announcement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Announcement` (
  `AnnouncementID` INT NOT NULL,
  `TimeStamp` TIMESTAMP(6) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `MaintenanceStaff_AccountID` INT NOT NULL,
  `SecurityStaff_AccountID` INT NOT NULL,
  PRIMARY KEY (`AnnouncementID`),
  INDEX `fk_Announcement_MaintenanceStaff1_idx` (`MaintenanceStaff_AccountID` ASC) VISIBLE,
  INDEX `fk_Announcement_SecurityStaff1_idx` (`SecurityStaff_AccountID` ASC) VISIBLE,
  CONSTRAINT `fk_Announcement_MaintenanceStaff1`
    FOREIGN KEY (`MaintenanceStaff_AccountID`)
    REFERENCES `mydb`.`MaintenanceStaff` (`AccountID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Announcement_SecurityStaff1`
    FOREIGN KEY (`SecurityStaff_AccountID`)
    REFERENCES `mydb`.`SecurityStaff` (`AccountID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`Announcement` (
`AnnouncementID`,
`TimeStamp`,
`Description`,
`MaintenanceStaff_AccountID`,
`SecurityStaff_AccountID`)
VALUES
(1,'2021-03-12 13:00:00',"Club Closed today",2,NULL),
(2,'2021-03-14 11:12:00',"Holi Celebration planning at 6 in the evening",1,NULL),
(3,'2021-03-11 21:20:00',"Construction going on at Gate 3",NULL,2);
              
-- -----------------------------------------------------
-- Table `mydb`.`Resident_has_ServiceProvider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Resident_has_ServiceProvider` (
  `Resident_AccountNumber` INT NOT NULL,
  `ServiceProvider_AccountNumber` INT NOT NULL,
  PRIMARY KEY (`Resident_AccountNumber`, `ServiceProvider_AccountNumber`),
  INDEX `fk_Resident_has_ServiceProvider_ServiceProvider1_idx` (`ServiceProvider_AccountNumber` ASC) VISIBLE,
  INDEX `fk_Resident_has_ServiceProvider_Resident1_idx` (`Resident_AccountNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Resident_has_ServiceProvider_Resident1`
    FOREIGN KEY (`Resident_AccountNumber`)
    REFERENCES `mydb`.`Resident` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Resident_has_ServiceProvider_ServiceProvider1`
    FOREIGN KEY (`ServiceProvider_AccountNumber`)
    REFERENCES `mydb`.`ServiceProvider` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`Resident_has_ServiceProvider`(
`Resident_AccountNumber`,
`ServiceProvider_AccountNumber`)

VALUES
(1,1),
(2,3),
(4,3),
(3,1),
(4,4),
(5,2);
               
-- -----------------------------------------------------
-- Table `mydb`.`Visitor_has_Resident`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Visitor_has_Resident` (
  `Visitor_TempAccountNumber` INT NOT NULL,
  `Resident_AccountNumber` INT NOT NULL,
  PRIMARY KEY (`Visitor_TempAccountNumber`, `Resident_AccountNumber`),
  INDEX `fk_Visitor_has_Resident_Resident1_idx` (`Resident_AccountNumber` ASC) VISIBLE,
  INDEX `fk_Visitor_has_Resident_Visitor1_idx` (`Visitor_TempAccountNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Visitor_has_Resident_Visitor1`
    FOREIGN KEY (`Visitor_TempAccountNumber`)
    REFERENCES `mydb`.`Visitor` (`TempAccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Visitor_has_Resident_Resident1`
    FOREIGN KEY (`Resident_AccountNumber`)
    REFERENCES `mydb`.`Resident` (`AccountNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`Visitor_has_Resident`(
`Visitor_TempAccountNumber`,
`Resident_AccountNumber`)
VALUES
(1,1),
(2,3);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

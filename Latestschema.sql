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
),
(	
	6,
    "Riya",
    "Sinha",
    "C",
    208,
    2,
    "Nurse",
    "F"
),
(
	7,
    "Ishita",
    "Jain",
    "D",
    309,
    3,
    "Choreographer",
    "F"
),
(
	8,
    "Rohan",
    "Gupta",
    "A",
    101,
    1,
    "Architect",
    "M"
),
(
	9,
    "Yeonjun",
    "Aggarwal",
    "B",
    501,
    5,
    "Dancer",
    "M"
),
(
	10,
    "Kris",
    "Wang",
    "E",
    702,
    7,
    "Doctor",
    "M"
),
(
	11,
    "Layla",
    "Chauhan",
    "A",
    310,
    3,
    "Teacher",
    "F"
), 
(
	12,
    "Joseph",
    "Vincent",
    "D",
    405,
    4,
    "Technician",
    "M"
),
(	
	13,
    "Elle",
	"Chang",
    "B",
    808,
    8,
    "Psychologist",
    "F"
),
(
	14,
    "Eddie",
    "Nam",
    "E",
    290,
    2,
    "Singer",
    "M"
),
(
	15,
    "Naman",
    "Khan",
    "G",
    105,
    1,
    "Scientist",
    "M"
),
(
	16,
    "Kaira",
    "Kapoor",
    "E",
    350,
    3,
    "Civil Engineer",
    "F"
),
(
	17,
    "Jay",
    "Park",
    "B",
    121,
    1,
    "Therapist",
    "M"
),
(
	18,
    "Kai",
    "Kamal",
    "A",
    592,
    5,
    "Veterinarian",
    "M"
),
(
	19,
    "Mahira",
    "Malik",
    "G",
    450,
    4,
    "Software Developer",
    "F"
),
(
	20,
    "Jennie",
    "Kim",
    "C",
    349,
    3,
    "Artist",
    "F"
),
(
	21,
    "Elizabeth",
    "Benny",
    "D",
    510,
    5,
    "Police Officer",
    "F"
),
(
	22,
    "Surabhi",
    "Sinha",
    "F",
    608,
    6,
    "mechanic",
    "F"
),
(
	23,
    "Kavya",
    "Gupta",
    "A",
	701,
    7,
    "painter",
    "F"
),
(
	24,
    "Rick",
    "Ichijo",
    "D",
    399,
    3,
    "hairdresser",
    "M"
),
(
	25,
    "Donny",
    "Nguyen",
    "B",
    459,
    4,
    "farmer",
    "M"
),
(
	26,
    "Ken",
    "Lamar",
    "E",
    520,
    5,
    "Doctor",
    "M"
),
(
	27,
    "Reo",
    "Thomas",
    "D",
    464,
    4,
    "Scientist",
    "M"
),
(
	28,
    "Michelle",
    "Vincent",
    "G",
    399,
    3,
    "Chef",
    "F"
),
(
	29,
    "Sarita",
    "Khanna",
    "B",
    478,
    4,
    "Dentist",
    "F"
),
(
	30,
    "Brent",
    "Rivera",
    "C",
    519,
    5,
    "Baker",
    "M"
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
(5, 9797291721, "securityStaff"),
(1,9887653210,"resident"),
(4,8769905432,"securityStaff"),
(5,9997654326,"visitor"),
(3,8800665544,"serviceProvider"),
(4,9766005432,"maintencanceStaff"),
(6,9966554421,"resident"),
(7,9000765321,"visitor"),
(3,8723415678,"securityStaff"),
(5,9034215678,"serviceProvide"),
(4,9945321567,"resident"),
(3,9765432100,"maintenanceStaff"),
(2,9967543218,"securityStaff");


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
(4,1111,"serviceProvider"),
(1,8247,"resident"),
(3,2933,"visitor"),
(6,5743,"serviceProvider"),
(4,4933,"visitor"),
(5,3299,"resident"),
(2,9873,"serviceProvider"),
(3,6788,"resident"),
(1,5473,"visitor"),
(8,5894,"serviceProvider"),
(4,3678,"resident"),
(5,7789,"visitor"),
(6,4554,"serviceProvider"),
(7,8890,"visitor"),
(5,6777,"resident"),
(6,8892,"ServiceProvider"),
(4,6789,"resident"),
(3,9834,"serviceProvider"),
(6,3232,"visitor"),
(2,5656,"resident"), 
(4,6688,"serviceProvider"),
(8,8667,"visitor"),
(7,6768,"resident");




               
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
(4,"PPPPPPAPPPPPPAPPPPPPAPPPPPPAAP","Dheeraj","Bhatia"),
(5,"AAPPAAPPAPPAAPPPAPPAPPAPAPPAPA","Kshitij","Gupta"),
(6,"PAPPAAAPAPPAAAPPAPPAPPPPAPPPPA","Kartik","Kumar"),
(7,"PAPPAPAPAPPAAPPPAPAAPAPPAPPAPA","Adya","Singh"),
(8,"PAAPAPPPAPPPAPPPAPAPPAPPAAPAPA","Aditya","Garg"),
(9,"AAAPPPPPAPAPAAPPAPPPPAPPAPPPPA","Aisha","Khan"),
(10,"PPAPPAPPAPPPAAPPAPAPPAPPAPAPAA","Nishad","Ali"),
(11,"APAPAAPAAPAPAAPAAPAAPAPAAPAPAA","Ayaan","Chhabra"),
(12,"APPPAAPAPPAPAPPAPPAPPAPAPPAPAP","Anushka","Gautam"),
(13,"APPPAPPAPPAPPPPAPPAPPAPPPPAPPP","Kang","Taehyun"),
(14,"PPPPAPPAPPAPPPPAAAAPPAPPPPAPAP","Kim","Daniel"),
(15,"AAPPAPPAPPAPPPPAPAPPPAPPPPAPAP","Zarak","Khan"),
(16,"AAPAPPAPPAPPAPPAPAPPPAAAAPAPAPA","Kyle","Thomas"),
(17,"AAPPPAAPPAAAPPPPPPPPAPAAAPAAAA","Nancy","Drew"),
(18,"PPPPPAAPPAAAPPPAAPPPAPAAAPAAP","Park","Yohan"),
(19,"PPAAAAAPPAAAAAPAAPPPAPAAAPAA","Zoya","Zehra"),
(20,"APAAPAAPPAPPAAPAAPAPAPAAAPPPA","Sharon","Rose"),
(21,"PAPPPAAAPAAAPPPAAPAPAPAAAPAAPAA","Meena","Shah"),
(22,"AAPAAAAAPAAAPPPAAPAAAPAAAPAAPAAA","Richa","Gupta"),
(23,"PPPAAAAAPAPAPPPAAPAAPPAAAPPPPAAP","Kirti","Aggarwal"),
(24,"AAPAAAAAPAPAAPPAAPAAPPAAAPPPPAAAA","Rakesh","Kumar"),
(25,"AAPAAPPAPAPPAPPAAPAAPPAAAPPPPA","Ayush","Srivastav"),
(26,"PPPAPPPAPAPPPPPAAPAAPPAAAPPPPAA","Ryan","Arora"),
(27,"APAAPPPAPAPAAPPAAPAAPPPAAPPPPA","Krishna","Grover"),
(28,"PPAAPAPAPAPAAPPAPPAAPPPAAPAPPA","Suzan","Vincent"),
(29,"AAAAPAPAPAPAAPPAPAAAPPPAAPAPA","Aiden","Kelly"),
(30,"PPPPPAPAPAPPPPPAPAAAPPPAAPAPAAP","Kim","Eunbi");






               
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
(7,"bike",1,2,"serviceProvider",NULL,4),
(8,"scooty",3,15,"resident",6,NULL),
(9,"bike",4,24,"serviceProvider",NULL,6),
(10,"car",2,28,"resident",7,NULL),
(11,"scooty",3,27,"serviceProvider",NULL,8),
(12,"bike",1,17,"serviceProvider",NULL,7),
(13,"car",2,19,"resident",8,NULL),
(14,"car",4,30,"resident",9,NULL),
(15,"bike",3,22,"serviceProvider",NULL,5),
(16,"car",1,4,"resident",10,NULL),
(17,"scooty",4,5,"serviceProvider",NULL,9),
(18,"bike",3,18,"resident",11,NULL),
(19,"car",2,30,"serviceProvider",NULL,10),
(20,"scooty",3,16,"resident",12,NULL),
(21,"car",4,36,"resident",13,NULL),
(22,"scooty",5,37,"serviceProvider",NULL,11),
(23,"bike",5,38,"resident",14,NULL),
(24,"car",6,39,"resident",15,NULL),
(25,"bike",3,41,"serviceProvider",NULL,12),
(26,"scooty",4,40,"resident",16,NULL),
(27,"car",6,43,"serviceProvider",NULL,13),
(28,"car",5,45,"resident",17,NULL),
(29,"bike",3,56,"serviceProvider",NULL,14),
(30,"scooty",2,55,"resident",18,NULL);


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
(2,"Ritvik", "Thakur", '2020-03-29','2020-03-25'),
(3,"Krish","Singh",'2020-03-28','2020-03-21'),
(4,"Oliver","Moy",'2020-03-19','2020-03-15'),
(5,"Soo","Choi",'2020-04-02','2020-03-29'),
(6,"Zack","Anderson",'2020-04-14','2020-04-10'),
(7,"Ramesh","Gupta",'2020-04-22','2020-04-16'),
(8,"Ravi","Kishan",'2020-04-18','2020-04-14'),
(9,"Jackson","Wang",'2020-04-25','2020-04-20'),
(10,"Jake","Paul",'2020-04-30','2020-04-28'),
(11,"Ritika","Bisht",'2020-05-02','2020-04-27'),
(12,"Sonali","Kapoor",'2020-05-07','2020-05-02'),
(13,"Srishti","Malik",'2020-05-12','2020-05-08'),
(14,"Bhawna","Sachdeva",'2020-05-13','2020-05-09'),
(15,"Jasmine","Marie",'2020-05-18','2020-05-11'),
(16,"Anisha","Nath",'2020-05-14','2020-05-06'),
(17,"Sanya","Kansal",'2020-05-16','2020-05-10'),
(18,"Saumya","Kapoor",'2020-05-21','2020-05-17'),
(19,"Imik","Khan",'2020-05-15','2020-05-10'),
(20,"Smiti","Jones",'2020-05-26','2020-05-20'),
(21,"Tarushi","Gupta",'2020-05-29','020-05-27'),
(22,"Kareena","Khan",'2020-06-03','2020-06-01'),
(23,"Keera","Ahmed",'2020-06-07','2020-06-05'),
(24,"Meenal","Kumaari",'2020-06-10','2020-06-08'),
(25,"Hemal","Chaudhary",'2020-06-13','2020-06-11'),
(26,"Kim","Ren",'2020-06-16','2020-06-14'),
(27,"Jason","Paul",'2020-06-18','2020-06-15'),
(28,"Jeremy","Zucker",'2020-06-22','2020-06-19'),
(29,"Alec","Benjamin",'2020-06-25','2020-06-23'),
(30,"Alextina","Joseph",'2020-06-29','2020-06-27');






               
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
(1,'2021-03-25 11:23:00','F','F','Leaking faucet',2,NULL,NULL,NULL), 
(2,'2021-03-23 18:20:00','F','F','Jammed door on 9th floor',4,NULL,NULL,NULL),
(3,'2021-04-15 18:20:00','T','T','Parking spot occupied by unknown car',NULL,2,NULL,NULL),
(4,'2021-04-17 19:00:00','F','T','CCTV camera not working',NULL,5,NULL,NULL),
(5,'2021-04-20 15:00:00','T','T','Lift not working on 10th floor',6,NULL,NULL,NULL),
(6,'2021-04-23 12:05:00','T','F','gym equipment broken',NULL,4,NULL,NULL),
(7,'2021-04-25 13:01:00','F','T','Low maintenance of the open garden',NULL,NULL,3,NULL),
(8,'2021-04-28 14:08:00','T','T','too many pests',3,NULL,NULL,NULL),
(9,'2021-04-29 16:24:00','T','F','inconvinience due to construction at gate no.3',NULL,3,NULL,NULL),
(10,'2021-04-30 10:00:00','T','T','Tubelight on 3rd floor is not working',7,NULL,NULL,NULL),
(11,'2021-05-1 9:30:00','F','T','Foul smell due to improper disposal of waste',8,NULL,NULL,NULL),
(12,'2021-05-2 11:24:00','T','F','Swimming pool is too unhygenic',NULL,NULL,4,NULL),
(13,'2021-05-3 15:22:00','T','F','inconvinience due to no separate smoking rooms',NULL,6,NULL,NULL),
(14,'2021-05-4 12:19:00','F','F','Unhygenic water due to lack of water tank maintencance',9,NULL,NULL,NULL),
(15,'2021-05-5 16:09:00','F','T','No installation of sanitizer machine thereby increasing the risk',NULL,10,NULL,NULL),
(16,'2021-05-6 19:08:00','T','F','Not sufficient CCTV cameras installed',NULL,NULL,5,NULL),
(17,'2021-05-7 21:17:00','F','T','No separate dustbins for dry and wet waste',NULL,7,NULL,NULL),
(18,'2021-05-8 11:08:00','F','F','No fines for anyone who litters',NULL,8,NULL,NULL),
(19,'2021-05-9 9:14:00','T','T','Irregular money collection',10,NULL,NULL,NULL),
(20,'2021-05-10 19:45:00','F','T','No regular check done on drain holes',NULL,NULL,6,NULL),
(21,'2021-05-11 12:47:00','T','T','Lift not clean',NULL,NULL,NULL,11),
(22,'2021-05-12 13:09:00','T','F','Lobby bulbs not working',NULL,9,NULL,NULL),
(23,'2021-05-13 11:19:00','F','F','Badminton court is too slippery',13,NULL,NULL,NULL),
(24,'2021-05-14 14:40:00','F','T','Basketball court net is torn',NULL,NULL,NULL,13),
(25,'2021-05-15 8:19:00','T','T','Community center playing loud music',NULL,NULL,9,NULL),
(26,'2021-05-17 18:34:00','T','F','Parking exit is closed',12,NULL,NULL,NULL),
(27,'2021-05-18 17:09:00','F','F','Not enough racquets in the TT room',NULL,NULL,15,NULL),
(28,'2021-05-19 18:18:00','T','T','Clock in the community center not working',NULL,NULL,17,NULL),
(29,'2021-05-21 17:10:00','F','T','No fire facilities on the 2nd floor',NULL,NULL,NULL,20),
(30,'2021-05-23 21:00:00','T','T','Irregular cleaning of the common lockers',NULL,25,NULL,NULL);


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
(1,"resident","announcement"), 
(2,"visitor","announcement"),
(3,"service provider","announcement"),
(4,"maintenance staff","complaint"),
(5,"security staff","complaint"),
(1,"visitor","announcement"),
(1,"service provider","announcement"),
(2,"resident","announcement"),
(2,"service provider","announcement"),
(3,"visitor","announcement"),
(3,"resident","announcement"),
(6,"resident","announcement"),
(7,"visitor","announcement"),
(6,"visitor","announcement"),
(7,"service provider","announcement"),
(8,"visitor","announcement"),
(8,"service provider","announcement"),
(8,"resident","announcement"),
(9,"maintenance staff","complaint"),
(10,"security staff","complaint"),
(11,"service provider","announcement"),
(11,"resident","announcement"),
(11,"visitor","announcement"),
(12,"maintenance staff","complaint"),
(13,"security staff","complaint"),
(14,"resident","announcement"),
(14,"service provider","announcement"),
(14,"visitor","annoouncement"),
(15,"visitor","announcement"),
(16,"service provider","announcement");




 



               
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
(6,8878309203,"Jennifer","Lawerence"),
(7,9987564732,"Kim","Seok"),
(8,8876547321,"Sara","Ali"),
(9,9907653261,"Crystal","Dsouza"),
(10,8769543678,"Supriya","Singh"),
(11,9966554327,"Park","Jaehyung"),
(12,8877965435,"Lee","Minho"),
(13,9012546877,"Sumona","Sinha"),
(14,8855643278,"Christina","Vincent"),
(15,9945342167,"Lee","Chungha"),
(16,8213498754,"Rose","Wilson"),
(17,9975643270,"Kevin","Sebastian"),
(18,9021367845,"Maria","Chalamet"),
(19,8993245617,"Jasna","Joy"),
(20,9765320001,"Erim","Khan"),
(21,9876534214,"Luna","Ward"),
(22,8856432177,"Alexis","Bell"),
(23,9987675434,"Katelynn","Mathews"),
(24,8797965745,"Ricardo","Patterson"),
(25,9796545343,"Marlin","Hudges"),
(26,9897656453,"Phoebe","Bryant"),
(27,8834221234,"Ken","Peterson"),
(28,9904332211,"Julie","Sanders"),
(29,8775647334,"Asif","Khan"),
(30,9987342214,"Neetu","Reji");







               
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
(5,"PAPPAAP","Hariram","Singh"),
(6,"AAPAPPA","Rishi","Jain"),
(7,"PPAPAPA","Rita","Arora"),
(8,"PAPAPPA","Iman","Qureshi"),
(9,"AAPAPPA","Shahrukh","Khan"),
(10,"PPAPAAP","Kim","Lisa"),
(11,"AAPAPPP","Vidushi","Chauhan"),
(12,"PPAPAAP","Meetakshi","Mishra"),
(13,"AAPPAAP","Kenny","Joy"),
(14,"PPPPAAA","Riona","Thomas"),
(15,"AAPAPPA","Nayan","Aggarwal"),
(16,"PAPPPAA","Kesha","Grande"),
(17,"PPAAPAP","Kim","Sawol"),
(18,"AAPPAPAP","Ishani","Gupta"),
(19,"PPAPPAPP","Sujan","Rai"),
(20,"AAAAPPPP","Shalini","Sharma"),
(21,"AAPAPPP","Akino","Reji"),
(22,"PPAAPAPA","Aditya","Shroff"),
(23,"AAPAPAPA","Aaron","Lee"),
(24,"AAPPAPAP","Vikram","Sharma"),
(25,"AAAPPAPAP","Selena","Bose"),
(26,"PPAPAAPAA","Mark","Peterson"),
(27,"PPAPAPAP","Kim","Jake"),
(28,"APAPPAPPA","Ishaan","Ahmed"),
(29,"PPAPAPA","Jeon","Jackson"),
(30,"AAPAPPAPA","Sachin","Bakshi");




               
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
(1,'2021-03-12 13:00:00',"Club will be closed today",2,NULL),
(2,'2021-03-14 11:12:00',"Holi Celebration planning at 6 in the evening",1,NULL),
(3,'2021-03-11 21:20:00',"Construction going on at Gate 3",NULL,2),
(4,'2021-03-11 15:00:00' , "Water tank cleaning from 4 in the eveninng",3,NULL),
(5,'2021-03-17 16:04:00' , "Lift is broken, will be repaired by 6pm",5,NULL),
(6,'2021-03-19 10:45:00' , "Arrival of Covid-19 testing vans at 5pm",NULL,7),
(7,'2021-03-22 17:15:00' , "Electricity cut off at 6pm",4,NULL),
(8,'2021-03-24 18:10:00' , "Maintenance money collection",7,NULL),
(9,'2021-03-25 9:40:00' , "Regular sanitisation of residential premises",8,NULL),
(10,'2021-03-26 10:00:00', "To be aware of resident's guests",NULL,9),
(11,'2021-03-27 11:30:00', "Entry of pest control personnel",NULL,10),
(12,'2021-03-28 12:00:00', "Prevent entry of unnecessary people",NULL,11),
(13,'2021-03-29 16:24:00' "Prevent the entry of stray dogs",NULL,13),
(14,'2021-03-30 8:30:00' "Regular watering of plants growing in the residential garden",10,NULL), 
(15,'2021-04-02 13:05:00' "Leakage of water",11,NULL),
(16,'2021-04-03 14:29:00' "Gym closed due to broken exercise equipment",12,NULL),
(17,'2021-04-05 19:45:00' "Prevent escape of Covid effected people",NULL,14),
(18,'2021-04-06 18:20:00' "Regular check on any open drain hole",13,NULL),
(19,'2021-04-09 10:45:00' "Repair of broken CCTV camera",14,NULL),
(20,'2021-04-10 7:00:00' "Covid vaccine registration notice",NULL,15),
(21,'2021-04-11 9:12:00',"Street light in the playground not working",15,NULL),
(22,'2021-04-13 15:28:00',"Cleaning of water filter on the ground floor",16,NULL),
(23,'2021-04-15 18:09:00',"Arrival of water tank at 7 pm",NULL,16),
(24,'2021-04-17 14:30:00',"Installment of fire extinguisher on 7th floor",17,NULL),
(25,'2021-04-18 5:00:00',"Arrival of scrap dealer today at 7 am",NULL,17),
(26,'2021-04-19 12:10:00',"Broken tile on 3rd floor",18,NULL),
(27,'2021-04-20 11:00:00',"Cleaning of pool today at 12pm",19,NULL),
(28,'2021-04-21 10:00:00',"Installation of a hand sanitiser machine outside the lift",20,NULL),
(29,'2021-04-22 19:55:00',"Discussion regarding improvements done in Sports block at 8:30pm",21,NULL),
(30,'2021-04-26 21:16:00',"Entry of an outsider only after proper sanitisation",NULL,23);


              
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
(5,2),
(6,5),
(7,6),
(8,9),
(9,7),
(10,8),
(11,10),
(12,12),
(13,11),
(15,13),
(6,15),
(7,14),
(8,16),
(14,18),
(16,17),
(18,19),
(2,20),
(15,21),
(13,22),
(10,24),
(4,23),
(9,27),
(10,25),
(11,26),
(12,29),
(20,28),
(3,30);










               
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
(2,3),
(3,4),
(4,6),
(5,5),
(6,7),
(7,8),
(8,10),
(9,11),
(10,5),
(11,14),
(12,6),
(13,10),
(14,11),
(15,3),
(16,17),
(17,9),
(18,8),
(19,19),
(20,18),
(21,19),
(22,15),
(23,11),
(24,21),
(25,4),
(26,10),
(27,9),
(28,14),
(29,18),
(30,5);






SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

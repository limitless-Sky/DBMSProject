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
(1, "9999231000", "resident"),
(2, "9999231001", "resident"),
(3, "9999231002", "resident"),
(4, "9999231003", "resident"),
(5, "9999231004", "resident"),
(6, "9999231005", "resident"),
(7, "9999231006", "resident"),
(8, "9999231007", "resident"),
(9, "9999231008", "resident"),
(10, "9999231009", "resident"),
(11, "9999231010", "resident"),
(12, "9999231011", "resident"),
(13, "9999231012", "resident"),
(14, "9999231013", "resident"),
(15, "9999231014", "resident"),
(16, "9999231015", "resident"),
(17, "9999231016", "resident"),
(18, "9999231017", "resident"),
(19, "9999231018", "resident"),
(20, "9999231019", "resident"),
(21, "9999231020", "resident"),
(22, "9999231021", "resident"),
(23, "9999231022", "resident"),
(24, "9999231023", "resident"),
(25, "9999231024", "resident"),
(26, "9999231025", "resident"),
(27, "9999231026", "resident"),
(28, "9999231027", "resident"),
(29, "9999231028", "resident"),
(30, "9999231029", "resident"),
(1, "9999231030", "visitor"),
(2, "9999231031", "visitor"),
(3, "9999231032", "visitor"),
(4, "9999231033", "visitor"),
(5, "9999231034", "visitor"),
(6, "9999231035", "visitor"),
(7, "9999231036", "visitor"),
(8, "9999231037", "visitor"),
(9, "9999231038", "visitor"),
(10, "9999231039", "visitor"),
(11, "9999231040", "visitor"),
(12, "9999231041", "visitor"),
(13, "9999231042", "visitor"),
(14, "9999231043", "visitor"),
(15, "9999231044", "visitor"),
(16, "9999231045", "visitor"),
(17, "9999231046", "visitor"),
(18, "9999231047", "visitor"),
(19, "9999231048", "visitor"),
(20, "9999231049", "visitor"),
(21, "9999231050", "visitor"),
(22, "9999231051", "visitor"),
(23, "9999231052", "visitor"),
(24, "9999231053", "visitor"),
(25, "9999231054", "visitor"),
(26, "9999231055", "visitor"),
(27, "9999231056", "visitor"),
(28, "9999231057", "visitor"),
(29, "9999231058", "visitor"),
(30, "9999231059", "visitor"),
(1, "9999231060", "serviceProvider"),
(2, "9999231061", "serviceProvider"),
(3, "9999231062", "serviceProvider"),
(4, "9999231063", "serviceProvider"),
(5, "9999231064", "serviceProvider"),
(6, "9999231065", "serviceProvider"),
(7, "9999231066", "serviceProvider"),
(8, "9999231067", "serviceProvider"),
(9, "9999231068", "serviceProvider"),
(10, "9999231069", "serviceProvider"),
(11, "9999231070", "serviceProvider"),
(12, "9999231071", "serviceProvider"),
(13, "9999231072", "serviceProvider"),
(14, "9999231073", "serviceProvider"),
(15, "9999231074", "serviceProvider"),
(16, "9999231075", "serviceProvider"),
(17, "9999231076", "serviceProvider"),
(18, "9999231077", "serviceProvider"),
(19, "9999231078", "serviceProvider"),
(20, "9999231079", "serviceProvider"),
(21, "9999231080", "serviceProvider"),
(22, "9999231081", "serviceProvider"),
(23, "9999231082", "serviceProvider"),
(24, "9999231083", "serviceProvider"),
(25, "9999231084", "serviceProvider"),
(26, "9999231085", "serviceProvider"),
(27, "9999231086", "serviceProvider"),
(28, "9999231087", "serviceProvider"),
(29, "9999231088", "serviceProvider"),
(30, "9999231089", "serviceProvider"),
(1, "9999231090", "maintenanceStaff"),
(2, "9999231091", "maintenanceStaff"),
(3, "9999231092", "maintenanceStaff"),
(4, "9999231093", "maintenanceStaff"),
(5, "9999231094", "maintenanceStaff"),
(6, "9999231095", "maintenanceStaff"),
(7, "9999231096", "maintenanceStaff"),
(8, "9999231097", "maintenanceStaff"),
(9, "9999231098", "maintenanceStaff"),
(10, "9999231099", "maintenanceStaff"),
(11, "9999231100", "maintenanceStaff"),
(12, "9999231101", "maintenanceStaff"),
(13, "9999231102", "maintenanceStaff"),
(14, "9999231103", "maintenanceStaff"),
(15, "9999231104", "maintenanceStaff"),
(16, "9999231105", "maintenanceStaff"),
(17, "9999231106", "maintenanceStaff"),
(18, "9999231107", "maintenanceStaff"),
(19, "9999231108", "maintenanceStaff"),
(20, "9999231109", "maintenanceStaff"),
(21, "9999231110", "maintenanceStaff"),
(22, "9999231111", "maintenanceStaff"),
(23, "9999231112", "maintenanceStaff"),
(24, "9999231113", "maintenanceStaff"),
(25, "9999231114", "maintenanceStaff"),
(26, "9999231115", "maintenanceStaff"),
(27, "9999231116", "maintenanceStaff"),
(28, "9999231117", "maintenanceStaff"),
(29, "9999231118", "maintenanceStaff"),
(30, "9999231119", "maintenanceStaff"),
(1, "9999231120", "securityStaff"),
(2, "9999231121", "securityStaff"),
(3, "9999231122", "securityStaff"),
(4, "9999231123", "securityStaff"),
(5, "9999231124", "securityStaff"),
(6, "9999231125", "securityStaff"),
(7, "9999231126", "securityStaff"),
(8, "9999231127", "securityStaff"),
(9, "9999231128", "securityStaff"),
(10, "9999231129", "securityStaff"),
(11, "9999231130", "securityStaff"),
(12, "9999231131", "securityStaff"),
(13, "9999231132", "securityStaff"),
(14, "9999231133", "securityStaff"),
(15, "9999231134", "securityStaff"),
(16, "9999231135", "securityStaff"),
(17, "9999231136", "securityStaff"),
(18, "9999231137", "securityStaff"),
(19, "9999231138", "securityStaff"),
(20, "9999231139", "securityStaff"),
(21, "9999231140", "securityStaff"),
(22, "9999231141", "securityStaff"),
(23, "9999231142", "securityStaff"),
(24, "9999231143", "securityStaff"),
(25, "9999231144", "securityStaff"),
(26, "9999231145", "securityStaff"),
(27, "9999231146", "securityStaff"),
(28, "9999231147", "securityStaff"),
(29, "9999231148", "securityStaff"),
(30, "9999231149", "securityStaff");


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
(1,"DL4CY2341","visitor"),
(1,"DL5CY1234","resident"),
(2,"DL6CY3456","resident"),
(3,"DL7CY8977","resident"),
(4,"DL8CY9822","resident"),
(5,"DL9CY2123","resident"),
(2,"DL7EX3211","serviceProvider"),
(4,"DL8EX9731","serviceProvider"),
(1,"DL9EX8001","resident"),
(3,"DL4EX3021","visitor"),
(6,"DL2EX5112","serviceProvider"),
(4,"DL1EX4233","visitor"),
(5,"DL3FB4501","resident"),
(2,"DL5FB8801","serviceProvider"),
(3,"DL6FB5342","resident"),
(1,"DL7FB2100","visitor"),
(8,"DL9FB3678","serviceProvider"),
(4,"DL3CD7789","resident"),
(5,"DL2CD4554","visitor"),
(6,"DL4CD8890","serviceProvider"),
(7,"DL5CD6777","visitor"),
(5,"DL6CD6775","resident"),
(6,"DL7CD6779","ServiceProvider"),
(4,"DL8CD6789","resident"),
(3,"DL9CD9834","serviceProvider"),
(6,"DL2XY6565","visitor"),
(2,"DL3XY5656","resident"), 
(4,"DL4XY6688","serviceProvider"),
(8,"DL5XY8667","visitor"),
(7,"DL6XY6768","resident");



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
(6,"PAPPAAAPAPPAAAPPAPPAPPPPAPPPP","Kartik","Kumar"),
(7,"PAPPAPAPAPPAAPPPAPAAPAPPAPPAPA","Adya","Singh"),
(8,"PAAPAPPPAPPPAPPPAPAPPAPPAAPAPA","Aditya","Garg"),
(9,"AAAPPPPPAPAPAAPPAPPPPAPPAPPPPA","Aisha","Khan"),
(10,"PPAPPAPPAPPPAAPPAPAPPAPPAPAPAA","Nishad","Ali"),
(11,"APAPAAPAAPAPAAPAAPAAPAPAAPAPAA","Ayaan","Chhabra"),
(12,"APPPAAPAPPAPAPPAPPAPPAPAPPAPAP","Anushka","Gautam"),
(13,"APPPAPPAPPAPPPPAPPAPPAPPPPAPPP","Kang","Taehyun"),
(14,"PPPPAPPAPPAPPPPAAAAPPAPPPPAPAP","Kim","Daniel"),
(15,"AAPPAPPAPPAPPPPAPAPPPAPPPPAPAP","Zarak","Khan"),
(16,"AAPAPPAPPAPPAPPAPAPPPAAAAPAPAP","Kyle","Thomas"),
(17,"AAPPPAAPPAAAPPPPPPPPAPAAAPAAAA","Nancy","Drew"),
(18,"PPPPPAAPPAAAPPPAAPPPAPAAAPAAPA","Park","Yohan"),
(19,"PPAAAAAPPAAAAAPAAPPPAPAAAPAAPA","Zoya","Zehra"),
(20,"APAAPAAPPAPPAAPAAPAPAPAAAPPPAA","Sharon","Rose"),
(21,"PAPPPAAAPAAAPPPAAPAPAPAAAPAAPA","Meena","Shah"),
(22,"AAPAAAAAPAAAPPPAAPAAAPAAAPAAPA","Richa","Gupta"),
(23,"PPPAAAAAPAPAPPPAAPAAPPAAAPPPPA","Kirti","Aggarwal"),
(24,"AAPAAAAAPAPAAPPAAPAAPPAAAPPPPA","Rakesh","Kumar"),
(25,"AAPAAPPAPAPPAPPAAPAAPPAAAPPPPA","Ayush","Srivastav"),
(26,"PPPAPPPAPAPPPPPAAPAAPPAAAPPPPAA","Ryan","Arora"),
(27,"APAAPPPAPAPAAPPAAPAAPPPAAPPPPA","Krishna","Grover"),
(28,"PPAAPAPAPAPAAPPAPPAAPPPAAPAPPA","Suzan","Vincent"),
(29,"AAAAPAPAPAPAAPPAPAAAPPPAAPAPAP","Aiden","Kelly"),
(30,"PPPPPAPAPAPPPPPAPAAAPPPAAPAPAA","Kim","Eunbi");



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
(1,"4 wheeler",1,23,"resident",1,NULL),
(2,"4 wheeler",2,11,"resident",2,NULL),
(3,"4 wheeler",1,12,"resident",3,NULL),
(4,"4 wheeler",1,13,"resident",4,NULL),
(5,"4 wheeler",1,14,"resident",5,NULL),
(6,"4 wheeler",2,1,"serviceProvider",NULL,2),
(7,"4 wheeler",1,2,"serviceProvider",NULL,4),
(8,"2 wheeler",3,15,"resident",6,NULL),
(9,"2 wheeler",4,24,"serviceProvider",NULL,6),
(10,"4 wheeler",2,28,"resident",7,NULL),
(11,"2 wheeler",3,27,"serviceProvider",NULL,8),
(12,"2 wheeler",1,17,"serviceProvider",NULL,7),
(13,"4 wheeler",2,19,"resident",8,NULL),
(14,"4 wheeler",4,30,"resident",9,NULL),
(15,"2 wheeler",3,22,"serviceProvider",NULL,5),
(16,"4 wheeler",1,4,"resident",10,NULL),
(17,"2 wheeler",4,5,"serviceProvider",NULL,9),
(18,"2 wheeler",3,18,"resident",11,NULL),
(19,"4 wheeler",2,30,"serviceProvider",NULL,10),
(20,"2 wheeler",3,16,"resident",12,NULL),
(21,"4 wheeler",4,36,"resident",13,NULL),
(22,"2 wheeler",5,37,"serviceProvider",NULL,11),
(23,"2 wheeler",5,38,"resident",14,NULL),
(24,"4 wheeler",6,39,"resident",15,NULL),
(25,"2 wheeler",3,41,"serviceProvider",NULL,12),
(26,"2 wheeler",4,40,"resident",16,NULL),
(27,"4 wheeler",6,43,"serviceProvider",NULL,13),
(28,"4 wheeler",5,45,"resident",17,NULL),
(29,"2 wheeler",3,56,"serviceProvider",NULL,14),
(30,"2 wheeler",2,55,"resident",18,NULL);



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
  `AccountType` VARCHAR(45) NOT NULL,
  `AccountNumber` INT NOT NULL,
  PRIMARY KEY (`ComplaintID`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`Complaint` (
`ComplaintID`,
`TimeStamp`,
`StaffResolutionStatus`,
`ComplaintResolutionStatus`,
`Description`,
`AccountType`,
`AccountNumber`)
VALUES 
(1,'2021-03-25 11:23:00','F','F','Leaking faucet',"resident",3), 
(2,'2021-03-23 18:20:00','F','F','Jammed door on 9th floor',"resident",4),
(3,'2021-04-15 18:20:00','T','T','Parking spot occupied by unknown car',"resident",5),
(4,'2021-04-17 19:00:00','F','T','CCTV camera not working',"resident",6),
(5,'2021-04-20 15:00:00','T','T','Lift not working on 10th floor',"resident",7),
(6,'2021-04-23 12:05:00','T','F','gym equipment broken',"resident",8),
(7,'2021-04-25 13:01:00','F','T','Low maintenance of the open garden',"resident",9),
(8,'2021-04-28 14:08:00','T','T','too many pests',"resident",10),
(9,'2021-04-29 16:24:00','T','F','inconvinience due to construction at gate no.3',"visitor",3),
(10,'2021-04-30 10:00:00','T','T','Improper telephone assistance done',"visitor",4),
(11,'2021-05-1 9:30:00','F','T','Foul smell due to improper disposal of waste',"visitor",5),
(12,'2021-05-2 11:24:00','T','F','Swimming pool is too unhygenic',"visitor",6),
(13,'2021-05-3 15:22:00','T','F','inconvinience due to no separate smoking rooms',"visitor",7),
(14,'2021-05-4 12:19:00','F','F','Unhygenic water due to lack of water tank maintencance',"visitor",8),
(15,'2021-05-5 16:09:00','F','T','No installation of sanitizer machine thereby increasing the risk',"visitor",9),
(16,'2021-05-6 19:08:00','T','F','Not sufficient CCTV cameras installed',"visitor",11),
(17,'2021-05-7 21:17:00','F','T','No separate dustbins for dry and wet waste',"serviceProvider",3),
(18,'2021-05-8 11:08:00','F','F','No fines for anyone who litters',"serviceProvider",4),
(19,'2021-05-9 9:14:00','T','T','Irregular money collection',"serviceProvider",5),
(20,'2021-05-10 19:45:00','F','T','No regular check done on drain holes',"serviceProvider",6),
(21,'2021-05-11 12:47:00','T','T','Lift not clean',"serviceProvider",7),
(22,'2021-05-12 13:09:00','T','F','no assistance given to the guests',"resident",8),
(23,'2021-05-13 11:19:00','F','F','Badminton court is too slippery',"serviceProvider",9),
(24,'2021-05-14 14:40:00','F','T','Basketball court net is torn',"visitor",19),
(25,'2021-05-15 8:19:00','T','T','Community center playing loud music',"visitor",20),
(26,'2021-05-17 18:34:00','T','F','Parking exit is closed',"visitor",21),
(27,'2021-05-18 17:09:00','F','F','Not enough racquets in the TT room',"visitor",22),
(28,'2021-05-19 18:18:00','T','T','Clock in the community center not working',"serviceProvider",23),
(29,'2021-05-21 17:10:00','F','T','No fire facilities on the 2nd floor',"resident",25),
(30,'2021-05-23 21:00:00','T','T','Irregular cleaning of the common lockers',"resident",27);

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
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NULL,
  PRIMARY KEY (`AccountID`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`MaintenanceStaff` (
`AccountID`,
`FirstName`,
`LastName`)
VALUES
(1,"Mrakhar","Paurya"),
(2,"Saurabh","Tiwari"),
(3,"Pankaj","Nag"),
(4,"Manish","Arora"),
(5,"Suraj","Singh"),
(6,"Jennifer","Lawerence"),
(7,"Kim","Seok"),
(8,"Sara","Ali"),
(9,"Crystal","Dsouza"),
(10,"Supriya","Singh"),
(11,"Park","Jaehyung"),
(12,"Lee","Minho"),
(13,"Sumona","Sinha"),
(14,"Christina","Vincent"),
(15,"Lee","Chungha"),
(16,"Rose","Wilson"),
(17,"Kevin","Sebastian"),
(18,"Maria","Chalamet"),
(19,"Jasna","Joy"),
(20,"Erim","Khan"),
(21,"Luna","Ward"),
(22,"Alexis","Bell"),
(23,"Katelynn","Mathews"),
(24,"Ricardo","Patterson"),
(25,"Marlin","Hudges"),
(26,"Phoebe","Bryant"),
(27,"Ken","Peterson"),
(28,"Julie","Sanders"),
(29,"Asif","Khan"),
(30,"Neetu","Reji");



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
(19,"PPAPPAP","Sujan","Rai"),
(20,"AAAAPPP","Shalini","Sharma"),
(21,"AAPAPPP","Akino","Reji"),
(22,"PPAAPAP","Aditya","Shroff"),
(23,"AAPAPAP","Aaron","Lee"),
(24,"AAPPAPA","Vikram","Sharma"),
(25,"AAAPPAP","Selena","Bose"),
(26,"PPAPAAP","Mark","Peterson"),
(27,"PPAPAPA","Kim","Jake"),
(28,"APAPPAP","Ishaan","Ahmed"),
(29,"PPAPAPA","Jeon","Jackson"),
(30,"AAPAPPA","Sachin","Bakshi");

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
(4,'2021-03-11 15:00:00',"Water tank cleaning from 4 in the eveninng",3,NULL),
(5,'2021-03-17 16:04:00',"Lift is broken, will be repaired by 6pm",5,NULL),
(6,'2021-03-19 10:45:00',"Arrival of Covid-19 testing vans at 5pm",NULL,7),
(7,'2021-03-22 17:15:00',"Electricity cut off at 6pm",4,NULL),
(8,'2021-03-24 18:10:00',"Maintenance money collection",7,NULL),
(9,'2021-03-25 9:40:00',"Regular sanitisation of residential premises",8,NULL),
(10,'2021-03-26 10:00:00',"To be aware of resident's guests",NULL,9),
(11,'2021-03-27 11:30:00',"Entry of pest control personnel",NULL,10),
(12,'2021-03-28 12:00:00',"Prevent entry of unnecessary people",NULL,11),
(13,'2021-03-29 16:24:00',"Prevent the entry of stray dogs",NULL,13),
(14,'2021-03-30 8:30:00',"Regular watering of plants growing in the residential garden",10,NULL), 
(15,'2021-04-02 13:05:00',"Leakage of water",11,NULL),
(16,'2021-04-03 14:29:00',"Gym closed due to broken exercise equipment",12,NULL),
(17,'2021-04-05 19:45:00',"Prevent escape of Covid effected people",NULL,14),
(18,'2021-04-06 18:20:00',"Regular check on any open drain hole",13,NULL),
(19,'2021-04-09 10:45:00',"Repair of broken CCTV camera",14,NULL),
(20,'2021-04-10 7:00:00',"Covid vaccine registration notice",NULL,15),
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

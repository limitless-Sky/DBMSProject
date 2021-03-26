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


-- -----------------------------------------------------
-- Table `mydb`.`PhoneNumbers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PhoneNumbers` (
  `AccountNumber` INT NOT NULL,
  `PhoneNumber` VARCHAR(15) NOT NULL,
  `UserType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PhoneNumber`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LicenseNumber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LicenseNumber` (
  `AccountNumber` INT NOT NULL,
  `LicenseNumber` VARCHAR(45) NOT NULL,
  `UserType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AccountNumber`, `LicenseNumber`))
ENGINE = InnoDB;


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


-- -----------------------------------------------------
-- Table `mydb`.`TargetUser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TargetUser` (
  `ID` INT NOT NULL,
  `TargetUser` VARCHAR(45) NOT NULL,
  `QueryType` VARCHAR(45) NOT NULL COMMENT 'announcements/ complaint',
  PRIMARY KEY (`ID`, `TargetUser`))
ENGINE = InnoDB;


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


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

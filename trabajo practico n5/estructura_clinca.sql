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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medico` (
  `matricula` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `especialidad` VARCHAR(45) NULL DEFAULT NULL,
  `observaciones` TINYTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`paciente` (
  `nss` BIGINT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `domicilio` VARCHAR(45) NULL DEFAULT NULL,
  `codigo_postal` SMALLINT NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `nro_historial_clinico` INT NOT NULL,
  `observaciones` TINYTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`nro_historial_clinico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`ingreso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ingreso` (
  `id_ingreso` INT NOT NULL,
  `fecha_ingreso` DATE NOT NULL,
  `nro_habitacion` SMALLINT NULL DEFAULT NULL,
  `nro_cama` SMALLINT NULL DEFAULT NULL,
  `observaciones` TINYTEXT NULL DEFAULT NULL,
  `ingresocol` VARCHAR(45) NULL DEFAULT NULL,
  `paciente_nro_historial_clinico` INT NOT NULL,
  `medico_matricula` INT NOT NULL,
  PRIMARY KEY (`id_ingreso`),
  INDEX `fk_ingreso_paciente_idx` (`paciente_nro_historial_clinico` ASC) ,
  INDEX `fk_ingreso_medico1_idx` (`medico_matricula` ASC) ,
  CONSTRAINT `fk_ingreso_medico1`
    FOREIGN KEY (`medico_matricula`)
    REFERENCES `mydb`.`medico` (`matricula`),
  CONSTRAINT `fk_ingreso_paciente`
    FOREIGN KEY (`paciente_nro_historial_clinico`)
    REFERENCES `mydb`.`paciente` (`nro_historial_clinico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

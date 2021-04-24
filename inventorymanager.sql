DROP SCHEMA IF EXISTS `inventorymanager` ;

CREATE SCHEMA IF NOT EXISTS `inventorymanager` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

USE `inventorymanager` ;

-- -----------------------------------------------------
-- Table `inventorymanager`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `gender` VARCHAR(50) NULL DEFAULT NULL,
  `spending_total` VARCHAR(50) NULL DEFAULT NULL,
  `register_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`customerorder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`customerorder` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NULL DEFAULT NULL,
  `product_id` INT NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `store` VARCHAR(4) NOT NULL,
  `purchase_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`employee` (
  `ssn` VARCHAR(50) NULL DEFAULT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `gender` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR(60) NOT NULL,
  `role` VARCHAR(50) NULL DEFAULT NULL,
  `salary` INT NULL DEFAULT NULL);


-- -----------------------------------------------------
-- Table `inventorymanager`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `description` VARCHAR(250) NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `stock` INT NULL DEFAULT NULL,
  `location` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`producttransfer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`producttransfer` (
  `transfer_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NULL DEFAULT NULL,
  `source` VARCHAR(4) NOT NULL,
  `destination` VARCHAR(4) NOT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `transfer_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`transfer_id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`store` (
  `store_id` VARCHAR(4) NOT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `address` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`supplier` (
  `supplier_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `company` VARCHAR(50) NULL DEFAULT NULL,
  `address` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`supplierorder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`supplierorder` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `supplier_id` INT NULL DEFAULT NULL,
  `product_id` INT NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `location_id` VARCHAR(4) NOT NULL,
  `order_date` DATE NULL DEFAULT NULL,
  `arrival_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`));


-- -----------------------------------------------------
-- Table `inventorymanager`.`warehouse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventorymanager`.`warehouse` (
  `warehouse_id` VARCHAR(4) NOT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `address` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`));


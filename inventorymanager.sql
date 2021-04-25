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


INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (1,'Arron','Cobelli','Male','500','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (2,'Stepha','Camilleri','Female','300','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (3,'Andrew','Gammidge','Male','500','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (4,'Any	','Peeters','Female','30','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (5,'Marlena','Scneider','Female','30','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (6,'Saul	','Eynald','Male','350','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (7,'Justin','Scotcher','Male','500','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (8,'Merrile','Cosely','Female','30','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (9,'Dimitri','Lared','Male','500','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (10,'Jesse','Gittus','Female','69','2021-04-22');
INSERT INTO customer (`id`,`first_name`,`last_name`,`gender`,`spending_total`,`register_date`) VALUES (11,'Amelia','Berka','Female','270','2021-04-22');


INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (1,1,1,1,500,'s1','2021-04-20');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (2,3,1,1,500,'s2','2021-04-20');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (3,2,5,1,300,'s1','2021-04-21');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (4,4,26,2,30,'s1','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (5,5,29,3,30,'s1','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (6,6,13,1,350,'s2','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (7,7,21,1,500,'s2','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (8,8,25,2,30,'s1','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (9,9,1,1,500,'s2','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (10,10,29,3,30,'s2','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (11,11,33,1,270,'s1','2021-04-22');
INSERT INTO customerorder (`order_id`,`customer_id`,`product_id`,`quantity`,`price`,`store`,`purchase_date`) VALUES (12,10,37,3,39,'s1','2021-04-22');

INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('571-82-8948','Shaheen','Rahimani','Male','shaheensr@outlook.com','TestPassword','Owner',123015);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('516-42-7074','Harlene','New','Agender','hnew1@nih.gov','yHbM8Xv','Manager',115303);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('793-52-1215','Min','Wipfler','Bigender','mwipfler2@scribd.com','TRVTVMp4','Manager',136487);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('629-53-9882','Tabbie','Scoles','Agender','tscoles3@spiegel.de','HsDE9mz31','Cashier',62790);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('162-61-2660','Lucita','Denys','Female','ldenys4@google.com.br','k3nrie1OLR','Cashier',44309);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('847-20-2461','Sharai','Dainter','Bigender','sdainter5@mozilla.com','hnCxLZ2H08','Cashier',45792);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('198-34-2912','Isadora','Paolicchi','Agender','ipaolicchi6@istockphoto.com','Kp298gMHY6','Cashier',98930);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('242-42-5875','Odilia','Smaridge','Bigender','osmaridge7@stumbleupon.com','AVOCtNmyTqD','Software Engineer',168863);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('201-41-8656','Ddene','Brunstan','Polygender','dbrunstan8@marriott.com','jCleEQJij69R','Stock Associate',93488);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('483-22-9203','Jules','Boyn','Non-binary','jboyn9@jiathis.com','zxOsuhWq','Stock Associate',152277);
INSERT INTO employee (`ssn`,`first_name`,`last_name`,`gender`,`email`,`password`,`role`,`salary`) VALUES ('181-22-1723','Toni','Klich','Male','tklich@gmail.com','testpassword1','Software Engineer',60000);

INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (1,'PlayStation 5','A Video Game console made by Sony.',500,6,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (2,'PlayStation 5','A Video Game console made by Sony.',500,5,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (3,'PlayStation 5','A Video Game console made by Sony.',500,0,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (4,'PlayStation 5','A Video Game console made by Sony.',500,6,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (5,'Nintendo Switch Gray','A Video Game console by Nintendo.',300,7,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (6,'Nintendo Switch Gray','A Video Game console by Nintendo.',300,4,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (7,'Nintendo Switch Gray','A Video Game console by Nintendo.',300,0,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (8,'Nintendo Switch Gray','A Video Game console by Nintendo.',300,4,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (9,'Calvin Klein Perfume','A perfume for women made by Calvin Klein.',30,3,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (10,'Calvin Klein Perfume','A perfume for women made by Calvin Klein.',30,4,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (11,'Calvin Klein Perfume','A perfume for women made by Calvin Klein.',30,3,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (12,'Calvin Klein Perfume','A perfume for women made by Calvin Klein.',30,0,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (13,'Chanel Maxi Flap 19 Bag','A luxurious bag made by Chanel.',350,3,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (14,'Chanel Maxi Flap 19 Bag','A luxurious bag made by Chanel.',350,2,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (15,'Chanel Maxi Flap 19 Bag','A luxurious bag made by Chanel.',350,4,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (16,'Chanel Maxi Flap 19 Bag','A luxurious bag made by Chanel.',350,0,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (17,'Huawei Mate 20 Lite','The Mate 20 Lite is a smartphone made by Huawei.',320,3,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (18,'Huawei Mate 20 Lite','The Mate 20 Lite is a smartphone made by Huawei.',320,3,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (19,'Huawei Mate 20 Lite','The Mate 20 Lite is a smartphone made by Huawei.',320,0,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (20,'Huawei Mate 20 Lite','The Mate 20 Lite is a smartphone made by Huawei.',320,4,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (21,'Xbox Series X','A Video Game console by Microsoft.',500,3,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (22,'Xbox Series X','A Video Game console by Microsoft.',500,2,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (23,'Xbox Series X','A Video Game console by Microsoft.',500,0,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (24,'Xbox Series X','A Video Game console by Microsoft.',500,4,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (25,'Uniqlo Reglan Half-Sleeve T-Shirt','A half-sleeve t-shirt made by Uniqlo.',15,3,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (26,'Uniqlo Reglan Half-Sleeve T-Shirt','A half-sleeve t-shirt made by Uniqlo.',15,5,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (27,'Uniqlo Reglan Half-Sleeve T-Shirt','A half-sleeve t-shirt made by Uniqlo.',15,8,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (28,'Uniqlo Reglan Half-Sleeve T-Shirt','A half-sleeve t-shirt made by Uniqlo.',15,0,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (29,'Cadbury Milk Chocolate Bar (150g)','A 150g Cadbury Milk Chocolate bar.',10,7,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (30,'Cadbury Milk Chocolate Bar (150g)','A 150g Cadbury Milk Chocolate bar.',10,12,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (31,'Cadbury Milk Chocolate Bar (150g)','A 150g Cadbury Milk Chocolate bar.',10,15,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (32,'Cadbury Milk Chocolate Bar (150g)','A 150g Cadbury Milk Chocolate bar.',10,0,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (33,'Monogram Canvas Pochette Clefs','An affordable wallet made by Louis Vuitton.',270,1,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (34,'Monogram Canvas Pochette Clefs','An affordable wallet made by Louis Vuitton.',270,2,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (35,'Monogram Canvas Pochette Clefs','An affordable wallet made by Louis Vuitton.',270,2,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (36,'Monogram Canvas Pochette Clefs','An affordable wallet made by Louis Vuitton.',270,0,'w2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (37,'Cadbury Milk Chocolate Bar With Nuts(150g)','A milk chocolate bar with nuts made by Cadbury.',13,9,'s1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (38,'Cadbury Milk Chocolate Bar With Nuts(150g)','A milk chocolate bar with nuts made by Cadbury.',13,0,'s2');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (39,'Cadbury Milk Chocolate Bar With Nuts(150g)','A milk chocolate bar with nuts made by Cadbury.',13,13,'w1');
INSERT INTO product (`product_id`,`name`,`description`,`price`,`stock`,`location`) VALUES (40,'Cadbury Milk Chocolate Bar With Nuts(150g)','A milk chocolate bar with nuts made by Cadbury.',13,0,'w2');

INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (1,1,'w2','s1',7,'2021-04-19');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (2,1,'w2','s2',7,'2021-04-19');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (3,5,'w2','s1',8,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (4,5,'w2','s2',4,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (5,9,'w1','s1',3,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (6,17,'w2','s2',3,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (7,21,'w2','s1',3,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (8,25,'w1','s1',7,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (9,21,'w2','s2',3,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (10,17,'w2','s1',3,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (11,25,'w1','s2',5,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (12,29,'w1','s1',10,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (13,29,'w1','s2',5,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (14,29,'w1','s2',10,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (15,33,'w1','s1',2,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (16,33,'w1','s2',2,'2021-04-22');
INSERT INTO producttransfer (`transfer_id`,`product_id`,`source`,`destination`,`quantity`,`transfer_date`) VALUES (26,37,'w1','s1',12,'2021-04-22');

INSERT INTO store (`store_id`,`name`,`address`) VALUES ('s1','King of Imports - Downtown','33 Gilmer St SE');
INSERT INTO store (`store_id`,`name`,`address`) VALUES ('s2','King of Imports - Decatur','400 Church St.');

INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (1,'Jeane','Veschi','Sony','2207 Bridgepointe Pkwy.');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (2,'Michel	','Simons','Nintendo of America Inc.',' 4600 150th Ave NE Redmond, WA');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (3,'Fred','Ousley','Chanel','1 Bruton St, London, United Kingdom');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (4,'Willette','Paris','Calvin Klein','205 W 39th St, New York, USA');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (5,'Shirlene','Leveridge','Cadbury','Sanderson Rd, London, United Kingdom');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (6,'Tadashi','Yanai','Uniqlo','Midtown Tower, Tokyo, Japan');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (7,'Joel','Strangman','Microsoft','One Microsoft Way, Redmond, WA, USA');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (8,'Ren','Zhengfei','Huwei','Chongzhi Ave, Shenzhen, Guangdong Province, China');
INSERT INTO supplier (`supplier_id`,`first_name`,`last_name`,`company`,`address`) VALUES (9,'Michael','Burke','Louis Vuitton','2 Rue du Pont Neuf, Paris, France');

INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (1,6,1,20,6000,'w2','2021-04-21','2021-04-19');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (2,5,29,40,320,'w1','2021-04-15','2021-04-20');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (3,6,25,20,260,'w1','2021-04-14','2021-04-21');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (4,7,21,10,4500,'w2','2021-04-08','2021-04-19');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (5,8,17,10,3000,'w2','2021-04-07','2021-04-16');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (6,9,33,6,1200,'w1','2021-04-15','2021-04-20');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (7,2,5,16,4000,'w2','2021-04-15','2021-04-22');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (8,4,9,10,200,'w1','2021-04-15','2021-04-21');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (9,3,13,10,3000,'w1','2021-04-15','2021-04-22');
INSERT INTO supplierorder (`order_id`,`supplier_id`,`product_id`,`quantity`,`price`,`location_id`,`order_date`,`arrival_date`) VALUES (10,5,37,25,250,'w1','2021-04-15','2021-04-21');

INSERT INTO warehouse (`warehouse_id`,`name`,`address`) VALUES ('w1','General Warehouse ','68 Princess Ave.');
INSERT INTO warehouse (`warehouse_id`,`name`,`address`) VALUES ('w2','Electronics Warehouse','946 Harvard Ave.');



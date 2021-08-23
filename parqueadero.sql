/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.14-MariaDB : Database - parqueadero
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`parqueadero` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `parqueadero`;

/*Table structure for table `color` */

DROP TABLE IF EXISTS `color`;

CREATE TABLE `color` (
  `id_color` int(11) NOT NULL AUTO_INCREMENT,
  `n_color` varchar(50) NOT NULL,
  `estado_color` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

/*Data for the table `color` */

insert  into `color`(`id_color`,`n_color`,`estado_color`) values (1,'Absenta','Activo'),(2,'Aguamarina','Activo'),(3,'Alabastro','Activo'),(5,'Almendra','Activo'),(6,'Almendra pálido','Activo'),(7,'Alazán','Activo'),(8,'Albaricoque','Activo'),(9,'Amaranto','Activo'),(10,'Amarillo','Activo'),(11,'Amarillo de cromo','Activo'),(12,'Amarillo de quinoleína','Activo'),(13,'Amarillo ocaso','Activo'),(14,'Amarillo verdoso','Activo'),(15,'Amatista','Activo'),(16,'Ámbar','Activo'),(17,'Ambrosía','Activo'),(19,'Annato','Activo'),(20,'Añil','Activo'),(21,'Argén','Activo'),(22,'Arsénico','Activo'),(23,'Azafrán','Activo'),(24,'Azul','Activo'),(25,'Azul acero','Activo'),(26,'Azul Alicia','Activo'),(27,'Azul Bondi','Activo'),(28,'Azul cadete','Activo'),(29,'Azul cobalto','Activo'),(30,'Azul egipcio','Activo'),(31,'Azul de Prusia','Activo'),(32,'Azul marino','Activo'),(33,'Azul maya','Activo'),(34,'Azul real','Activo'),(35,'Azul sulfán','Activo'),(36,'Azur','Activo'),(37,'Beige','Activo'),(38,'Berenjena','Activo'),(39,'Bermellón','Activo'),(40,'Bisque','Activo'),(41,'Bistre','Activo'),(42,'Blanco','Activo'),(43,'Blanco de España','Activo'),(44,'Borgoña','Activo'),(45,'Bronce','Activo'),(48,'Calabaza','Activo'),(49,'Canario','Activo'),(50,'Canelo','Activo'),(51,'Caoba','Activo'),(52,'Caqui','Activo'),(53,'Caramelo','Activo'),(54,'Cardo','Activo'),(55,'Carmesí','Activo'),(56,'Carmín','Activo'),(57,'Carmín de alizarina','Activo'),(58,'Carnación','Activo'),(60,'Castaño rojizo','Activo'),(61,'Castor','Activo'),(62,'Celeste','Activo'),(63,'Cerceta','Activo'),(64,'Cereza','Activo'),(65,'Cerúleo','Activo'),(66,'Chartreuse','Activo'),(67,'Chocolate','Activo'),(68,'Cian','Activo'),(69,'Cinzolino','Activo'),(70,'Ciruela','Activo'),(71,'Clorofila','Activo'),(72,'Cobre','Activo'),(74,'Coral','Activo'),(75,'Crema','Activo'),(76,'Crudo','Activo'),(77,'Denim','Activo'),(78,'Diente de león','Activo'),(79,'Dióxido de hierro','Activo'),(80,'Dulcamara','Activo'),(81,'Encaje antiguo','Activo'),(82,'Escarlata','Activo'),(83,'Esmeralda','Activo'),(84,'Espárrago','Activo'),(85,'Frambuesa','Activo'),(86,'Fresa','Activo'),(87,'Fucsia','Activo'),(88,'Gamboge','Activo'),(89,'Granate','Activo'),(90,'Gris','Activo'),(91,'Gris antracita','Activo'),(92,'Gris de Payne','Activo'),(93,'Gris oscuro','Activo'),(94,'Gris pizarra','Activo'),(95,'Gris plomo','Activo'),(96,'Helecho','Activo'),(97,'Jade','Activo'),(98,'Ladrillo','Activo'),(99,'Latón','Activo'),(100,'Latón antiguo','Activo'),(101,'Lavanda','Activo'),(102,'Lavanda azulado','Activo'),(103,'Leonado','Activo'),(104,'Lila','Activo'),(105,'Lima','Activo'),(106,'Limón','Activo'),(107,'Lino','Activo'),(108,'Madera','Activo'),(109,'Magenta','Activo'),(110,'Magnolia','Activo'),(111,'Maíz','Activo'),(112,'Malva','Activo'),(113,'Mandarina','Activo'),(114,'Marfil','Activo'),(115,'Melocotón','Activo'),(116,'Menta','Activo'),(117,'Miel','Activo'),(118,'Marrón','Activo'),(119,'Marrón topo','Activo'),(120,'Mostaza','Activo'),(121,'Nácar','Activo'),(122,'Naranja','Activo'),(123,'Negro','Activo'),(124,'Negro de humo','Activo'),(125,'Nieve','Activo'),(126,'Ocre','Activo'),(127,'Ocre amarillo','Activo'),(128,'Ocre rojo','Activo'),(129,'Oliva','Activo'),(130,'Opalino','Activo'),(131,'Oro','Activo'),(132,'Oro viejo','Activo'),(133,'Orquídea','Activo'),(134,'Óxido','Activo'),(135,'Papaya','Activo'),(136,'Pera','Activo'),(137,'Peridot','Activo'),(138,'Persimonio','Activo'),(139,'Pistacho','Activo'),(140,'Púrpura','Activo'),(141,'Púrpura de Tiro','Activo'),(142,'Riboflavina','Activo'),(143,'Rojo','Activo'),(144,'Rojo cadmio','Activo'),(145,'Rojo de Venecia','Activo'),(146,'Rojo indio','Activo'),(147,'Rojo remolacha','Activo'),(148,'Rosa','Activo'),(149,'Rosa fucsia','Activo'),(150,'Rubí','Activo'),(151,'Salmón','Activo'),(152,'Sangría','Activo'),(153,'Sepia','Activo'),(154,'Siena','Activo'),(155,'Solidago','Activo'),(156,'Tartracina','Activo'),(157,'Té verde','Activo'),(158,'Terracota','Activo'),(159,'Tomate','Activo'),(160,'Trigo','Activo'),(161,'Turquesa','Activo'),(162,'Turqui','Activo'),(163,'Verde','Activo'),(164,'Verde amarillento','Activo'),(165,'Verde bosque','Activo'),(166,'Verde camuflaje','Activo'),(167,'Verde Caribe','Activo'),(168,'Verde cazador','Activo'),(169,'Verde esmeralda','Activo'),(170,'Verde lima','Activo'),(171,'Verde malaquita','Activo'),(172,'Verde musgo','Activo'),(173,'Verde manzana','Activo'),(174,'Verde oscuro','Activo'),(175,'Verde veronés','Activo'),(176,'Violeta','Activo'),(177,'Violeta claro','Activo'),(178,'Violín','Activo'),(179,'Wisteria','Activo'),(180,'Zafiro','Activo'),(181,'Zanahoria','Activo'),(182,'Zinnwaldita','Activo');

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `n_marca` varchar(50) NOT NULL,
  `id_tipovehiculo` int(11) NOT NULL,
  `estado_marca` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_marca`),
  KEY `id_tipovehiculo` (`id_tipovehiculo`),
  CONSTRAINT `marca_ibfk_1` FOREIGN KEY (`id_tipovehiculo`) REFERENCES `tipo_vehiculo` (`id_tipovehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `marca` */

insert  into `marca`(`id_marca`,`n_marca`,`id_tipovehiculo`,`estado_marca`) values (1,'ABARTH',1,'Activo'),(2,'ALFA ROMEO',1,'Activo'),(3,'ALFA ROMEO (FIAT)',1,'Activo'),(4,'ASTON MARTIN',1,'Activo'),(5,'AUDI',1,'Activo'),(6,'BENTLEY',1,'Activo'),(7,'BMW',1,'Activo'),(8,'BYD',1,'Activo'),(9,'CHEVROLET',1,'Activo'),(10,'CITROEN',1,'Activo'),(11,'DACIA',1,'Activo'),(12,'DFSK',1,'Activo'),(13,'DS',1,'Activo'),(14,'FERRARI',1,'Activo'),(15,'FERRARI (FCA)',1,'Activo'),(16,'FIAT',1,'Activo'),(17,'FORD',1,'Activo'),(18,'HONDA',1,'Activo'),(19,'HYUNDAI',1,'Activo'),(20,'INFINITI',1,'Activo'),(21,'ISUZU',1,'Activo'),(22,'JAGUAR',1,'Activo'),(23,'JEEP',1,'Activo'),(24,'KIA',1,'Activo'),(25,'LADA',1,'Activo'),(26,'LAMBORGHINI',1,'Activo'),(27,'LANCIA',1,'Activo'),(28,'LAND ROVER',1,'Activo'),(29,'LEXUS',1,'Activo'),(30,'MAHINDRA',1,'Activo'),(31,'MASERATI',1,'Activo'),(32,'MAZDA',1,'Activo'),(34,'MERCEDES',1,'Activo'),(35,'MINI',1,'Activo');

/*Table structure for table `modelo` */

DROP TABLE IF EXISTS `modelo`;

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca` int(11) NOT NULL,
  `n_modelo` varchar(50) NOT NULL,
  `estado_modelo` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_modelo`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

/*Data for the table `modelo` */

insert  into `modelo`(`id_modelo`,`id_marca`,`n_modelo`,`estado_modelo`) values (1,1,'500C','Activo'),(2,1,'124 Spider','Activo'),(3,1,'500','Activo'),(4,2,'4C','Activo'),(5,2,'Giulia','Activo'),(6,2,'Giulietta','Activo'),(7,2,'MiTo','Activo'),(8,2,'Stelvio','Activo'),(9,3,'4C','Activo'),(10,4,'DB9','Activo'),(11,4,'Vantage V8','Activo'),(12,4,'Vanquish','Activo'),(13,4,'Vantage V12','Activo'),(14,4,'Rapide','Activo'),(15,5,'A3','Activo'),(16,5,'TT','Activo'),(17,5,'A5','Activo'),(18,5,'S5','Activo'),(19,5,'RS5','Activo'),(20,5,'R8','Activo'),(21,5,'S3','Activo'),(22,5,'TTS','Activo'),(23,5,'A4','Activo'),(24,5,'A8','Activo'),(25,5,'A6','Activo'),(26,5,'S6','Activo'),(27,5,'S8','Activo'),(28,5,'S4','Activo'),(29,5,'A7','Activo'),(30,5,'A1','Activo'),(31,5,'S7','Activo'),(32,5,'RS3','Activo'),(33,5,'RS7','Activo'),(34,5,'Q3','Activo'),(35,5,'Q5','Activo'),(36,5,'SQ5','Activo'),(37,5,'Q7','Activo'),(38,5,'RS Q3','Activo'),(39,5,'SQ7','Activo'),(40,5,'Q2','Activo'),(41,5,'A4 Allroad Quattro','Activo'),(42,5,'RS4','Activo'),(43,5,'RS6','Activo'),(44,6,'Continental GT','Activo'),(45,6,'Mulsanne','Activo'),(46,6,'Flying Spur','Activo'),(47,6,'Continental GTC','Activo'),(48,6,'Bentayga','Activo'),(49,7,'Serie 3','Activo'),(50,7,'Serie 5','Activo'),(51,7,'Serie 4','Activo'),(52,7,'Serie 7','Activo'),(53,7,'Z4','Activo'),(54,7,'X5','Activo'),(55,7,'Serie 1','Activo'),(56,7,'X3','Activo'),(57,7,'Serie 6','Activo'),(58,7,'X1','Activo'),(59,7,'X6','Activo'),(60,7,'I3','Activo'),(61,7,'Serie 2','Activo'),(62,7,'X4','Activo'),(63,7,'I8','Activo'),(64,7,'Serie 2 Gran Tourer','Activo'),(65,7,'Serie 2 Active Tourer','Activo'),(66,7,'X2','Activo'),(67,8,'E6','Activo'),(68,9,'Cruze','Activo'),(69,9,'Aveo','Activo'),(70,9,'Trax','Activo'),(71,9,'Orlando','Activo'),(72,9,'Spark','Activo'),(73,9,'Camaro','Activo'),(74,10,'C4','Activo'),(75,10,'C3','Activo'),(76,10,'C5','Activo'),(77,10,'C3 Picasso','Activo'),(78,10,'C4 Picasso','Activo'),(79,10,'Grand C4 Picasso','Activo'),(80,10,'C4 Aircross','Activo'),(81,10,'Nemo','Activo'),(82,10,'Berlingo','Activo'),(83,10,'C-Elysée','Activo'),(84,10,'C4 Cactus','Activo'),(85,10,'C1','Activo'),(86,10,'C-Zero','Activo'),(87,10,'C-Elysée','Activo'),(88,10,'Spacetourer','Activo'),(89,10,'E-Mehari','Activo'),(90,10,'C3 Aircross','Activo'),(91,11,'Logan','Activo'),(92,11,'Lodgy','Activo'),(93,11,'Sandero','Activo'),(94,11,'Duster','Activo'),(95,11,'Dokker','Activo'),(96,12,'Serie V','Activo'),(97,12,'Serie K','Activo'),(98,13,'DS 4','Activo'),(99,13,'DS 5','Activo'),(100,13,'DS 3','Activo'),(101,13,'DS 4 Crossback','Activo'),(102,13,'DS 7 Crossback','Activo'),(103,14,'488','Activo'),(104,14,'GTC4','Activo'),(105,14,'California','Activo'),(106,14,'F12','Activo'),(107,14,'Portofino','Activo'),(108,14,'812','Activo'),(109,15,'458','Activo'),(110,15,'FF','Activo'),(111,16,'Freemont','Activo'),(112,16,'Doblò','Activo'),(113,16,'Punto','Activo'),(114,16,'Panda','Activo'),(115,16,'500','Activo'),(116,16,'500L','Activo'),(117,16,'500X','Activo'),(118,16,'Qubo','Activo'),(119,16,'Fiorino','Activo'),(120,16,'Bravo','Activo'),(121,16,'500C','Activo'),(122,16,'Tipo','Activo'),(123,16,'124 Spider','Activo'),(124,17,'C-Max','Activo'),(125,17,'Fiesta','Activo'),(126,17,'Focus','Activo'),(127,17,'Mondeo','Activo'),(128,17,'Ka','Activo'),(129,17,'S-MAX','Activo'),(130,17,'B-MAX','Activo'),(131,17,'Grand C-Max','Activo'),(132,17,'Tourneo Custom','Activo'),(133,17,'Kuga','Activo'),(134,17,'Galaxy','Activo'),(135,17,'Grand Tourneo Connect','Activo'),(136,17,'Tourneo Connect','Activo'),(137,17,'EcoSport','Activo'),(138,17,'Tourneo Courier','Activo'),(139,17,'Mustang','Activo'),(140,17,'Transit Connect','Activo'),(141,17,'Edge','Activo'),(142,17,'Ka+','Activo'),(143,18,'Accord','Activo'),(144,18,'Jazz','Activo'),(145,18,'Civic','Activo'),(146,18,'CR-V','Activo'),(147,18,'HR-V','Activo'),(148,19,'I20','Activo'),(149,19,'Ix35','Activo'),(150,19,'Ix20','Activo'),(151,19,'I10','Activo'),(152,19,'Santa Fe','Activo'),(153,19,'Veloster','Activo'),(154,19,'I40','Activo'),(155,19,'Elantra','Activo'),(156,19,'I30','Activo'),(157,19,'Grand Santa Fe','Activo'),(158,19,'Genesis','Activo'),(159,19,'H-1 Travel','Activo'),(160,19,'Tucson','Activo'),(161,19,'I20 Active','Activo'),(162,19,'IONIQ','Activo'),(163,19,'Kona','Activo'),(164,20,'Q70','Activo'),(165,20,'Q50','Activo'),(166,20,'QX70','Activo'),(167,20,'QX50','Activo'),(168,20,'Q60','Activo'),(169,20,'Q30','Activo'),(170,20,'QX30','Activo'),(171,21,'D-Max','Activo'),(172,22,'XF','Activo'),(173,22,'Serie XK','Activo'),(174,22,'F-Type','Activo'),(175,22,'XJ','Activo'),(176,22,'XE','Activo'),(177,22,'F-Pace','Activo'),(178,22,'E-Pace','Activo'),(179,23,'Grand Cherokee','Activo'),(180,23,'Wrangler Unlimited','Activo'),(181,23,'Cherokee','Activo'),(182,23,'Wrangler','Activo'),(183,23,'Renegade','Activo'),(184,23,'Compass','Activo'),(185,24,'Picanto','Activo'),(186,24,'Rio','Activo'),(187,24,'Sportage','Activo'),(188,24,'Venga','Activo'),(189,24,'Optima','Activo'),(190,24,'Cee\'d','Activo'),(191,24,'Cee\'d Sportswagon','Activo'),(192,24,'Carens','Activo'),(193,24,'Pro_cee\'d','Activo'),(194,24,'Sorento','Activo'),(195,24,'Soul','Activo'),(196,24,'Niro','Activo'),(197,24,'Soul EV','Activo'),(198,24,'Pro_cee\'d GT','Activo'),(199,24,'Stonic','Activo'),(200,24,'Optima SW','Activo'),(201,24,'Optima PHEV','Activo'),(202,24,'Optima Híbrido Enchufable','Activo'),(203,24,'Optima SW GT','Activo'),(204,24,'Optima GT','Activo'),(205,24,'Niro Híbrido Enchufable','Activo'),(206,24,'Optima SW Híbrido Enchufable','Activo'),(207,24,'Stinger','Activo'),(208,25,'4X4','Activo'),(209,25,'Priora','Activo'),(210,26,'Aventador','Activo'),(211,26,'Huracán','Activo'),(212,27,'Ypsilon','Activo'),(213,27,'Voyager','Activo'),(214,27,'Delta','Activo'),(215,28,'Defender','Activo'),(216,28,'Discovery 4','Activo'),(217,28,'Range Rover','Activo'),(218,28,'Range Rover Evoque','Activo'),(219,28,'Freelander','Activo'),(220,28,'Range Rover Sport','Activo'),(221,28,'Discovery Sport','Activo'),(222,28,'Discovery','Activo'),(223,28,'Range Rover Velar','Activo'),(224,29,'GS','Activo'),(225,29,'RX','Activo'),(226,29,'CT','Activo'),(227,29,'IS','Activo'),(228,29,'NX','Activo'),(229,29,'RC','Activo'),(230,29,'LS','Activo'),(231,29,'LC','Activo'),(232,30,'XUV500','Activo'),(233,32,'Mazda2','Activo'),(234,32,'CX-5','Activo');

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipodocumento` int(11) NOT NULL,
  `n_documento` varchar(25) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_tipodocumento` (`id_tipodocumento`),
  KEY `id_rol` (`id_rol`),
  KEY `id_sede` (`id_sede`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_tipodocumento`) REFERENCES `tipo_documento` (`id_tipodocumento`),
  CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `persona` */

insert  into `persona`(`id_persona`,`id_tipodocumento`,`n_documento`,`nombre`,`apellido`,`correo`,`telefono`,`id_rol`,`id_sede`,`password`,`estado`) values (1,1,'1001349482','Juan Diego','Ordoñez Murillo','juanorrdonez@gmail.com','3202596553',1,1,'26813dfd4dfdf45b306084f9ab2716d9d96ad454','Activo');

/*Table structure for table `reporte` */

DROP TABLE IF EXISTS `reporte`;

CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `tabla` varchar(50) NOT NULL,
  `accion` varchar(20) NOT NULL,
  `registro_nuevo` varchar(100) NOT NULL,
  `registro_anterior` varchar(100) NOT NULL,
  `usuario_creacion` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `usuario_modificacion` varchar(100) NOT NULL,
  `fecha_modificacion` date NOT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8;

/*Data for the table `reporte` */

insert  into `reporte`(`id_reporte`,`tabla`,`accion`,`registro_nuevo`,`registro_anterior`,`usuario_creacion`,`fecha_creacion`,`usuario_modificacion`,`fecha_modificacion`) values (1,'Color','Insertar','Absenta','','root@localhost','2020-09-29','','0000-00-00'),(2,'Color','Insertar','Aguamarina','','root@localhost','2020-09-29','','0000-00-00'),(3,'Color','Insertar','Alabastro','','root@localhost','2020-09-29','','0000-00-00'),(4,'Color','Insertar','Almagro','','root@localhost','2020-09-29','','0000-00-00'),(5,'Color','Insertar','Almendra','','root@localhost','2020-09-29','','0000-00-00'),(6,'Color','Insertar','Almendra pálido','','root@localhost','2020-09-29','','0000-00-00'),(7,'Color','Insertar','Alazán','','root@localhost','2020-09-29','','0000-00-00'),(8,'Color','Insertar','Albaricoque','','root@localhost','2020-09-29','','0000-00-00'),(9,'Color','Insertar','Amaranto','','root@localhost','2020-09-29','','0000-00-00'),(10,'Color','Insertar','Amarillo','','root@localhost','2020-09-29','','0000-00-00'),(11,'Color','Insertar','Amarillo de cromo','','root@localhost','2020-09-29','','0000-00-00'),(12,'Color','Insertar','Amarillo de quinoleína','','root@localhost','2020-09-29','','0000-00-00'),(13,'Color','Insertar','Amarillo ocaso','','root@localhost','2020-09-29','','0000-00-00'),(14,'Color','Insertar','Amarillo verdoso','','root@localhost','2020-09-29','','0000-00-00'),(15,'Color','Insertar','Amatista','','root@localhost','2020-09-29','','0000-00-00'),(16,'Color','Insertar','Ámbar','','root@localhost','2020-09-29','','0000-00-00'),(17,'Color','Insertar','Ambrosía','','root@localhost','2020-09-29','','0000-00-00'),(18,'Color','Insertar','Ampo','','root@localhost','2020-09-29','','0000-00-00'),(19,'Color','Insertar','Annato','','root@localhost','2020-09-29','','0000-00-00'),(20,'Color','Insertar','Añil','','root@localhost','2020-09-29','','0000-00-00'),(21,'Color','Insertar','Argén','','root@localhost','2020-09-29','','0000-00-00'),(22,'Color','Insertar','Arsénico','','root@localhost','2020-09-29','','0000-00-00'),(23,'Color','Insertar','Azafrán','','root@localhost','2020-09-29','','0000-00-00'),(24,'Color','Insertar','Azul','','root@localhost','2020-09-29','','0000-00-00'),(25,'Color','Insertar','Azul acero','','root@localhost','2020-09-29','','0000-00-00'),(26,'Color','Insertar','Azul Alicia','','root@localhost','2020-09-29','','0000-00-00'),(27,'Color','Insertar','Azul Bondi','','root@localhost','2020-09-29','','0000-00-00'),(28,'Color','Insertar','Azul cadete','','root@localhost','2020-09-29','','0000-00-00'),(29,'Color','Insertar','Azul cobalto','','root@localhost','2020-09-29','','0000-00-00'),(30,'Color','Insertar','Azul egipcio','','root@localhost','2020-09-29','','0000-00-00'),(31,'Color','Insertar','Azul de Prusia','','root@localhost','2020-09-29','','0000-00-00'),(32,'Color','Insertar','Azul marino','','root@localhost','2020-09-29','','0000-00-00'),(33,'Color','Insertar','Azul maya','','root@localhost','2020-09-29','','0000-00-00'),(34,'Color','Insertar','Azul real','','root@localhost','2020-09-29','','0000-00-00'),(35,'Color','Insertar','Azul sulfán','','root@localhost','2020-09-29','','0000-00-00'),(36,'Color','Insertar','Azur','','root@localhost','2020-09-29','','0000-00-00'),(37,'Color','Insertar','Beige','','root@localhost','2020-09-29','','0000-00-00'),(38,'Color','Insertar','Berenjena','','root@localhost','2020-09-29','','0000-00-00'),(39,'Color','Insertar','Bermellón','','root@localhost','2020-09-29','','0000-00-00'),(40,'Color','Insertar','Bisque','','root@localhost','2020-09-29','','0000-00-00'),(41,'Color','Insertar','Bistre','','root@localhost','2020-09-29','','0000-00-00'),(42,'Color','Insertar','Blanco','','root@localhost','2020-09-29','','0000-00-00'),(43,'Color','Insertar','Blanco de España','','root@localhost','2020-09-29','','0000-00-00'),(44,'Color','Insertar','Borgoña','','root@localhost','2020-09-29','','0000-00-00'),(45,'Color','Insertar','Bronce','','root@localhost','2020-09-29','','0000-00-00'),(46,'Color','Insertar','Burdeo','','root@localhost','2020-09-29','','0000-00-00'),(47,'Color','Insertar','Café','','root@localhost','2020-09-29','','0000-00-00'),(48,'Color','Insertar','Calabaza','','root@localhost','2020-09-29','','0000-00-00'),(49,'Color','Insertar','Canario','','root@localhost','2020-09-29','','0000-00-00'),(50,'Color','Insertar','Canelo','','root@localhost','2020-09-29','','0000-00-00'),(51,'Color','Insertar','Caoba','','root@localhost','2020-09-29','','0000-00-00'),(52,'Color','Insertar','Caqui','','root@localhost','2020-09-29','','0000-00-00'),(53,'Color','Insertar','Caramelo','','root@localhost','2020-09-29','','0000-00-00'),(54,'Color','Insertar','Cardo','','root@localhost','2020-09-29','','0000-00-00'),(55,'Color','Insertar','Carmesí','','root@localhost','2020-09-29','','0000-00-00'),(56,'Color','Insertar','Carmín','','root@localhost','2020-09-29','','0000-00-00'),(57,'Color','Insertar','Carmín de alizarina','','root@localhost','2020-09-29','','0000-00-00'),(58,'Color','Insertar','Carnación','','root@localhost','2020-09-29','','0000-00-00'),(59,'Color','Insertar','Castaño','','root@localhost','2020-09-29','','0000-00-00'),(60,'Color','Insertar','Castaño rojizo','','root@localhost','2020-09-29','','0000-00-00'),(61,'Color','Insertar','Castor','','root@localhost','2020-09-29','','0000-00-00'),(62,'Color','Insertar','Celeste','','root@localhost','2020-09-29','','0000-00-00'),(63,'Color','Insertar','Cerceta','','root@localhost','2020-09-29','','0000-00-00'),(64,'Color','Insertar','Cereza','','root@localhost','2020-09-29','','0000-00-00'),(65,'Color','Insertar','Cerúleo','','root@localhost','2020-09-29','','0000-00-00'),(66,'Color','Insertar','Chartreuse','','root@localhost','2020-09-29','','0000-00-00'),(67,'Color','Insertar','Chocolate','','root@localhost','2020-09-29','','0000-00-00'),(68,'Color','Insertar','Cian','','root@localhost','2020-09-29','','0000-00-00'),(69,'Color','Insertar','Cinzolino','','root@localhost','2020-09-29','','0000-00-00'),(70,'Color','Insertar','Ciruela','','root@localhost','2020-09-29','','0000-00-00'),(71,'Color','Insertar','Clorofila','','root@localhost','2020-09-29','','0000-00-00'),(72,'Color','Insertar','Cobre','','root@localhost','2020-09-29','','0000-00-00'),(73,'Color','Insertar','Colorado','','root@localhost','2020-09-29','','0000-00-00'),(74,'Color','Insertar','Coral','','root@localhost','2020-09-29','','0000-00-00'),(75,'Color','Insertar','Crema','','root@localhost','2020-09-29','','0000-00-00'),(76,'Color','Insertar','Crudo','','root@localhost','2020-09-29','','0000-00-00'),(77,'Color','Insertar','Denim','','root@localhost','2020-09-29','','0000-00-00'),(78,'Color','Insertar','Diente de león','','root@localhost','2020-09-29','','0000-00-00'),(79,'Color','Insertar','Dióxido de hierro','','root@localhost','2020-09-29','','0000-00-00'),(80,'Color','Insertar','Dulcamara','','root@localhost','2020-09-29','','0000-00-00'),(81,'Color','Insertar','Encaje antiguo','','root@localhost','2020-09-29','','0000-00-00'),(82,'Color','Insertar','Escarlata','','root@localhost','2020-09-29','','0000-00-00'),(83,'Color','Insertar','Esmeralda','','root@localhost','2020-09-29','','0000-00-00'),(84,'Color','Insertar','Espárrago','','root@localhost','2020-09-29','','0000-00-00'),(85,'Color','Insertar','Frambuesa','','root@localhost','2020-09-29','','0000-00-00'),(86,'Color','Insertar','Fresa','','root@localhost','2020-09-29','','0000-00-00'),(87,'Color','Insertar','Fucsia','','root@localhost','2020-09-29','','0000-00-00'),(88,'Color','Insertar','Gamboge','','root@localhost','2020-09-29','','0000-00-00'),(89,'Color','Insertar','Granate','','root@localhost','2020-09-29','','0000-00-00'),(90,'Color','Insertar','Gris','','root@localhost','2020-09-29','','0000-00-00'),(91,'Color','Insertar','Gris antracita','','root@localhost','2020-09-29','','0000-00-00'),(92,'Color','Insertar','Gris de Payne','','root@localhost','2020-09-29','','0000-00-00'),(93,'Color','Insertar','Gris oscuro','','root@localhost','2020-09-29','','0000-00-00'),(94,'Color','Insertar','Gris pizarra','','root@localhost','2020-09-29','','0000-00-00'),(95,'Color','Insertar','Gris plomo','','root@localhost','2020-09-29','','0000-00-00'),(96,'Color','Insertar','Helecho','','root@localhost','2020-09-29','','0000-00-00'),(97,'Color','Insertar','Jade','','root@localhost','2020-09-29','','0000-00-00'),(98,'Color','Insertar','Ladrillo','','root@localhost','2020-09-29','','0000-00-00'),(99,'Color','Insertar','Latón','','root@localhost','2020-09-29','','0000-00-00'),(100,'Color','Insertar','Latón antiguo','','root@localhost','2020-09-29','','0000-00-00'),(101,'Color','Insertar','Lavanda','','root@localhost','2020-09-29','','0000-00-00'),(102,'Color','Insertar','Lavanda azulado','','root@localhost','2020-09-29','','0000-00-00'),(103,'Color','Insertar','Leonado','','root@localhost','2020-09-29','','0000-00-00'),(104,'Color','Insertar','Lila','','root@localhost','2020-09-29','','0000-00-00'),(105,'Color','Insertar','Lima','','root@localhost','2020-09-29','','0000-00-00'),(106,'Color','Insertar','Limón','','root@localhost','2020-09-29','','0000-00-00'),(107,'Color','Insertar','Lino','','root@localhost','2020-09-29','','0000-00-00'),(108,'Color','Insertar','Madera','','root@localhost','2020-09-29','','0000-00-00'),(109,'Color','Insertar','Magenta','','root@localhost','2020-09-29','','0000-00-00'),(110,'Color','Insertar','Magnolia','','root@localhost','2020-09-29','','0000-00-00'),(111,'Color','Insertar','Maíz','','root@localhost','2020-09-29','','0000-00-00'),(112,'Color','Insertar','Malva','','root@localhost','2020-09-29','','0000-00-00'),(113,'Color','Insertar','Mandarina','','root@localhost','2020-09-29','','0000-00-00'),(114,'Color','Insertar','Marfil','','root@localhost','2020-09-29','','0000-00-00'),(115,'Color','Insertar','Melocotón','','root@localhost','2020-09-29','','0000-00-00'),(116,'Color','Insertar','Menta','','root@localhost','2020-09-29','','0000-00-00'),(117,'Color','Insertar','Miel','','root@localhost','2020-09-29','','0000-00-00'),(118,'Color','Insertar','Marrón','','root@localhost','2020-09-29','','0000-00-00'),(119,'Color','Insertar','Marrón topo','','root@localhost','2020-09-29','','0000-00-00'),(120,'Color','Insertar','Mostaza','','root@localhost','2020-09-29','','0000-00-00'),(121,'Color','Insertar','Nácar','','root@localhost','2020-09-29','','0000-00-00'),(122,'Color','Insertar','Naranja','','root@localhost','2020-09-29','','0000-00-00'),(123,'Color','Insertar','Negro','','root@localhost','2020-09-29','','0000-00-00'),(124,'Color','Insertar','Negro de humo','','root@localhost','2020-09-29','','0000-00-00'),(125,'Color','Insertar','Nieve','','root@localhost','2020-09-29','','0000-00-00'),(126,'Color','Insertar','Ocre','','root@localhost','2020-09-29','','0000-00-00'),(127,'Color','Insertar','Ocre amarillo','','root@localhost','2020-09-29','','0000-00-00'),(128,'Color','Insertar','Ocre rojo','','root@localhost','2020-09-29','','0000-00-00'),(129,'Color','Insertar','Oliva','','root@localhost','2020-09-29','','0000-00-00'),(130,'Color','Insertar','Opalino','','root@localhost','2020-09-29','','0000-00-00'),(131,'Color','Insertar','Oro','','root@localhost','2020-09-29','','0000-00-00'),(132,'Color','Insertar','Oro viejo','','root@localhost','2020-09-29','','0000-00-00'),(133,'Color','Insertar','Orquídea','','root@localhost','2020-09-29','','0000-00-00'),(134,'Color','Insertar','Óxido','','root@localhost','2020-09-29','','0000-00-00'),(135,'Color','Insertar','Papaya','','root@localhost','2020-09-29','','0000-00-00'),(136,'Color','Insertar','Pera','','root@localhost','2020-09-29','','0000-00-00'),(137,'Color','Insertar','Peridot','','root@localhost','2020-09-29','','0000-00-00'),(138,'Color','Insertar','Persimonio','','root@localhost','2020-09-29','','0000-00-00'),(139,'Color','Insertar','Pistacho','','root@localhost','2020-09-29','','0000-00-00'),(140,'Color','Insertar','Púrpura','','root@localhost','2020-09-29','','0000-00-00'),(141,'Color','Insertar','Púrpura de Tiro','','root@localhost','2020-09-29','','0000-00-00'),(142,'Color','Insertar','Riboflavina','','root@localhost','2020-09-29','','0000-00-00'),(143,'Color','Insertar','Rojo','','root@localhost','2020-09-29','','0000-00-00'),(144,'Color','Insertar','Rojo cadmio','','root@localhost','2020-09-29','','0000-00-00'),(145,'Color','Insertar','Rojo de Venecia','','root@localhost','2020-09-29','','0000-00-00'),(146,'Color','Insertar','Rojo indio','','root@localhost','2020-09-29','','0000-00-00'),(147,'Color','Insertar','Rojo remolacha','','root@localhost','2020-09-29','','0000-00-00'),(148,'Color','Insertar','Rosa','','root@localhost','2020-09-29','','0000-00-00'),(149,'Color','Insertar','Rosa fucsia','','root@localhost','2020-09-29','','0000-00-00'),(150,'Color','Insertar','Rubí','','root@localhost','2020-09-29','','0000-00-00'),(151,'Color','Insertar','Salmón','','root@localhost','2020-09-29','','0000-00-00'),(152,'Color','Insertar','Sangría','','root@localhost','2020-09-29','','0000-00-00'),(153,'Color','Insertar','Sepia','','root@localhost','2020-09-29','','0000-00-00'),(154,'Color','Insertar','Siena','','root@localhost','2020-09-29','','0000-00-00'),(155,'Color','Insertar','Solidago','','root@localhost','2020-09-29','','0000-00-00'),(156,'Color','Insertar','Tartracina','','root@localhost','2020-09-29','','0000-00-00'),(157,'Color','Insertar','Té verde','','root@localhost','2020-09-29','','0000-00-00'),(158,'Color','Insertar','Terracota','','root@localhost','2020-09-29','','0000-00-00'),(159,'Color','Insertar','Tomate','','root@localhost','2020-09-29','','0000-00-00'),(160,'Color','Insertar','Trigo','','root@localhost','2020-09-29','','0000-00-00'),(161,'Color','Insertar','Turquesa','','root@localhost','2020-09-29','','0000-00-00'),(162,'Color','Insertar','Turqui','','root@localhost','2020-09-29','','0000-00-00'),(163,'Color','Insertar','Verde','','root@localhost','2020-09-29','','0000-00-00'),(164,'Color','Insertar','Verde amarillento','','root@localhost','2020-09-29','','0000-00-00'),(165,'Color','Insertar','Verde bosque','','root@localhost','2020-09-29','','0000-00-00'),(166,'Color','Insertar','Verde camuflaje','','root@localhost','2020-09-29','','0000-00-00'),(167,'Color','Insertar','Verde Caribe','','root@localhost','2020-09-29','','0000-00-00'),(168,'Color','Insertar','Verde cazador','','root@localhost','2020-09-29','','0000-00-00'),(169,'Color','Insertar','Verde esmeralda','','root@localhost','2020-09-29','','0000-00-00'),(170,'Color','Insertar','Verde lima','','root@localhost','2020-09-29','','0000-00-00'),(171,'Color','Insertar','Verde malaquita','','root@localhost','2020-09-29','','0000-00-00'),(172,'Color','Insertar','Verde musgo','','root@localhost','2020-09-29','','0000-00-00'),(173,'Color','Insertar','Verde manzana','','root@localhost','2020-09-29','','0000-00-00'),(174,'Color','Insertar','Verde oscuro','','root@localhost','2020-09-29','','0000-00-00'),(175,'Color','Insertar','Verde veronés','','root@localhost','2020-09-29','','0000-00-00'),(176,'Color','Insertar','Violeta','','root@localhost','2020-09-29','','0000-00-00'),(177,'Color','Insertar','Violeta claro','','root@localhost','2020-09-29','','0000-00-00'),(178,'Color','Insertar','Violín','','root@localhost','2020-09-29','','0000-00-00'),(179,'Color','Insertar','Wisteria','','root@localhost','2020-09-29','','0000-00-00'),(180,'Color','Insertar','Zafiro','','root@localhost','2020-09-29','','0000-00-00'),(181,'Color','Insertar','Zanahoria','','root@localhost','2020-09-29','','0000-00-00'),(182,'Color','Insertar','Zinnwaldita','','root@localhost','2020-09-29','','0000-00-00'),(183,'Color','Eliminar','','Almagro','','0000-00-00','root@localhost','2020-09-29'),(184,'Color','Eliminar','','Ampo','','0000-00-00','root@localhost','2020-09-29'),(185,'Color','Eliminar','','Burdeo','','0000-00-00','root@localhost','2020-09-29'),(186,'Color','Eliminar','','Café','','0000-00-00','root@localhost','2020-09-29'),(187,'Color','Eliminar','','Castaño','','0000-00-00','root@localhost','2020-09-29'),(188,'Color','Eliminar','','Colorado','','0000-00-00','root@localhost','2020-09-29'),(189,'Tipo Valor','Insertar','Hora','','root@localhost','2020-09-30','','0000-00-00'),(190,'Tipo Valor','Insertar','Día','','root@localhost','2020-09-30','','0000-00-00'),(191,'Tipo Valor','Insertar','Mes','','root@localhost','2020-09-30','','0000-00-00'),(192,'Tipo Vehiculo','Insertar','Automovil','','root@localhost','2020-09-30','','0000-00-00'),(193,'Tipo Vehiculo','Insertar','Buseta','','root@localhost','2020-09-30','','0000-00-00'),(194,'Tipo Vehiculo','Insertar','Moto','','root@localhost','2020-09-30','','0000-00-00'),(195,'Tipo Tarifa','Insertar','Cuota fija','','root@localhost','2020-09-30','','0000-00-00'),(196,'Tipo Tarifa','Insertar','Tarifas de precio fijo','','root@localhost','2020-09-30','','0000-00-00'),(197,'Tipo Tarifa','Insertar','Tarifas planas','','root@localhost','2020-09-30','','0000-00-00'),(198,'Marca','Insertar','ABARTH','','root@localhost','2020-10-03','','0000-00-00'),(199,'Modelo','Insertar','500C (Cabrio)','','root@localhost','2020-10-03','','0000-00-00'),(200,'Modelo','Insertar','124 Spider','','root@localhost','2020-10-03','','0000-00-00'),(201,'Modelo','Insertar','500','','root@localhost','2020-10-03','','0000-00-00'),(202,'Marca','Insertar','ALFA ROMEO','','root@localhost','2020-10-03','','0000-00-00'),(203,'Modelo','Insertar','4C','','root@localhost','2020-10-03','','0000-00-00'),(204,'Modelo','Insertar','Giulia','','root@localhost','2020-10-03','','0000-00-00'),(205,'Modelo','Insertar','Giulietta','','root@localhost','2020-10-03','','0000-00-00'),(206,'Modelo','Insertar','MiTo','','root@localhost','2020-10-03','','0000-00-00'),(207,'Modelo','Insertar','Stelvio','','root@localhost','2020-10-03','','0000-00-00'),(208,'Marca','Insertar','ALFA ROMEO (FIAT)','','root@localhost','2020-10-03','','0000-00-00'),(209,'Modelo','Insertar','4C','','root@localhost','2020-10-03','','0000-00-00'),(210,'Marca','Insertar','ASTON MARTIN','','root@localhost','2020-10-03','','0000-00-00'),(211,'Modelo','Insertar','DB9','','root@localhost','2020-10-03','','0000-00-00'),(212,'Modelo','Insertar','Vantage V8','','root@localhost','2020-10-03','','0000-00-00'),(213,'Modelo','Insertar','Vanquish','','root@localhost','2020-10-03','','0000-00-00'),(214,'Modelo','Insertar','Vantage V12','','root@localhost','2020-10-03','','0000-00-00'),(215,'Modelo','Insertar','Rapide','','root@localhost','2020-10-03','','0000-00-00'),(216,'Marca','Insertar','AUDI','','root@localhost','2020-10-03','','0000-00-00'),(217,'Modelo','Insertar','A3','','root@localhost','2020-10-03','','0000-00-00'),(218,'Modelo','Insertar','TT','','root@localhost','2020-10-03','','0000-00-00'),(219,'Modelo','Insertar','A5','','root@localhost','2020-10-03','','0000-00-00'),(220,'Modelo','Insertar','S5','','root@localhost','2020-10-03','','0000-00-00'),(221,'Modelo','Insertar','RS5','','root@localhost','2020-10-03','','0000-00-00'),(222,'Modelo','Insertar','R8','','root@localhost','2020-10-03','','0000-00-00'),(223,'Modelo','Insertar','S3','','root@localhost','2020-10-03','','0000-00-00'),(224,'Modelo','Insertar','TTS','','root@localhost','2020-10-03','','0000-00-00'),(225,'Modelo','Insertar','A4','','root@localhost','2020-10-03','','0000-00-00'),(226,'Modelo','Insertar','A8','','root@localhost','2020-10-03','','0000-00-00'),(227,'Modelo','Insertar','A6','','root@localhost','2020-10-03','','0000-00-00'),(228,'Modelo','Insertar','S6','','root@localhost','2020-10-03','','0000-00-00'),(229,'Modelo','Insertar','S8','','root@localhost','2020-10-03','','0000-00-00'),(230,'Modelo','Insertar','S4','','root@localhost','2020-10-03','','0000-00-00'),(231,'Modelo','Insertar','A7','','root@localhost','2020-10-03','','0000-00-00'),(232,'Modelo','Insertar','A1','','root@localhost','2020-10-03','','0000-00-00'),(233,'Modelo','Insertar','S7','','root@localhost','2020-10-03','','0000-00-00'),(234,'Modelo','Insertar','RS3','','root@localhost','2020-10-03','','0000-00-00'),(235,'Modelo','Insertar','RS7','','root@localhost','2020-10-03','','0000-00-00'),(236,'Modelo','Insertar','Q3','','root@localhost','2020-10-03','','0000-00-00'),(237,'Modelo','Insertar','Q5','','root@localhost','2020-10-03','','0000-00-00'),(238,'Modelo','Insertar','SQ5','','root@localhost','2020-10-03','','0000-00-00'),(239,'Modelo','Insertar','Q7','','root@localhost','2020-10-03','','0000-00-00'),(240,'Modelo','Insertar','RS','','root@localhost','2020-10-03','','0000-00-00'),(241,'Modelo','Insertar','SQ7','','root@localhost','2020-10-03','','0000-00-00'),(242,'Modelo','Insertar','Q2','','root@localhost','2020-10-03','','0000-00-00'),(243,'Modelo','Insertar','A4 Allroad Quattro','','root@localhost','2020-10-03','','0000-00-00'),(244,'Modelo','Insertar','RS4','','root@localhost','2020-10-03','','0000-00-00'),(245,'Modelo','Insertar','RS6','','root@localhost','2020-10-03','','0000-00-00'),(246,'Marca','Insertar','BENTLEY','','root@localhost','2020-10-03','','0000-00-00'),(247,'Modelo','Insertar','Continental GT','','root@localhost','2020-10-03','','0000-00-00'),(248,'Modelo','Insertar','Mulsanne','','root@localhost','2020-10-03','','0000-00-00'),(249,'Modelo','Insertar','Flying Spur','','root@localhost','2020-10-03','','0000-00-00'),(250,'Modelo','Insertar','Continental GTC','','root@localhost','2020-10-03','','0000-00-00'),(251,'Modelo','Insertar','Bentayga','','root@localhost','2020-10-03','','0000-00-00'),(252,'Marca','Insertar','BMW','','root@localhost','2020-10-03','','0000-00-00'),(253,'Modelo','Insertar','Serie 3','','root@localhost','2020-10-03','','0000-00-00'),(254,'Modelo','Insertar','Serie 5','','root@localhost','2020-10-03','','0000-00-00'),(255,'Modelo','Insertar','Serie 4','','root@localhost','2020-10-03','','0000-00-00'),(256,'Modelo','Insertar','Serie 7','','root@localhost','2020-10-03','','0000-00-00'),(257,'Modelo','Insertar','Z4','','root@localhost','2020-10-03','','0000-00-00'),(258,'Modelo','Insertar','X5','','root@localhost','2020-10-03','','0000-00-00'),(259,'Modelo','Insertar','Serie 1','','root@localhost','2020-10-03','','0000-00-00'),(260,'Modelo','Insertar','X3','','root@localhost','2020-10-03','','0000-00-00'),(261,'Modelo','Insertar','Serie 6','','root@localhost','2020-10-03','','0000-00-00'),(262,'Modelo','Insertar','X1','','root@localhost','2020-10-03','','0000-00-00'),(263,'Modelo','Insertar','X6','','root@localhost','2020-10-03','','0000-00-00'),(264,'Modelo','Insertar','I3','','root@localhost','2020-10-03','','0000-00-00'),(265,'Modelo','Insertar','Serie 2','','root@localhost','2020-10-03','','0000-00-00'),(266,'Modelo','Insertar','X4','','root@localhost','2020-10-03','','0000-00-00'),(267,'Modelo','Insertar','I8','','root@localhost','2020-10-03','','0000-00-00'),(268,'Modelo','Insertar','Serie 2 Gran Tourer','','root@localhost','2020-10-03','','0000-00-00'),(269,'Modelo','Insertar','Serie 2 Active Tourer','','root@localhost','2020-10-03','','0000-00-00'),(270,'Modelo','Insertar','X2','','root@localhost','2020-10-03','','0000-00-00'),(271,'Marca','Insertar','BYD','','root@localhost','2020-10-03','','0000-00-00'),(272,'Modelo','Insertar','E6','','root@localhost','2020-10-03','','0000-00-00'),(273,'Marca','Insertar','CHEVROLET','','root@localhost','2020-10-03','','0000-00-00'),(274,'Modelo','Insertar','Cruze','','root@localhost','2020-10-03','','0000-00-00'),(275,'Modelo','Insertar','Aveo','','root@localhost','2020-10-03','','0000-00-00'),(276,'Modelo','Insertar','Trax','','root@localhost','2020-10-03','','0000-00-00'),(277,'Modelo','Insertar','Orlando','','root@localhost','2020-10-03','','0000-00-00'),(278,'Modelo','Insertar','Spark','','root@localhost','2020-10-03','','0000-00-00'),(279,'Modelo','Insertar','Camaro','','root@localhost','2020-10-03','','0000-00-00'),(280,'Marca','Insertar','CITROEN','','root@localhost','2020-10-03','','0000-00-00'),(281,'Modelo','Insertar','C4','','root@localhost','2020-10-03','','0000-00-00'),(282,'Modelo','Insertar','C3','','root@localhost','2020-10-03','','0000-00-00'),(283,'Modelo','Insertar','C5','','root@localhost','2020-10-03','','0000-00-00'),(284,'Modelo','Insertar','C3 Picasso','','root@localhost','2020-10-03','','0000-00-00'),(285,'Modelo','Insertar','C4 Picasso','','root@localhost','2020-10-03','','0000-00-00'),(286,'Modelo','Insertar','Grand C4 Picasso','','root@localhost','2020-10-03','','0000-00-00'),(287,'Modelo','Insertar','C4 Aircross','','root@localhost','2020-10-03','','0000-00-00'),(288,'Modelo','Insertar','Nemo','','root@localhost','2020-10-03','','0000-00-00'),(289,'Modelo','Insertar','Berlingo','','root@localhost','2020-10-03','','0000-00-00'),(290,'Modelo','Insertar','C-Elysée','','root@localhost','2020-10-03','','0000-00-00'),(291,'Modelo','Insertar','C4 Cactus','','root@localhost','2020-10-03','','0000-00-00'),(292,'Modelo','Insertar','C1','','root@localhost','2020-10-03','','0000-00-00'),(293,'Modelo','Insertar','C-Zero','','root@localhost','2020-10-03','','0000-00-00'),(294,'Modelo','Insertar','C-Elysée','','root@localhost','2020-10-03','','0000-00-00'),(295,'Modelo','Insertar','Spacetourer','','root@localhost','2020-10-03','','0000-00-00'),(296,'Modelo','Insertar','E-Mehari','','root@localhost','2020-10-03','','0000-00-00'),(297,'Modelo','Insertar','C3 Aircross','','root@localhost','2020-10-03','','0000-00-00'),(298,'Marca','Insertar','DACIA','','root@localhost','2020-10-03','','0000-00-00'),(299,'Modelo','Insertar','Logan','','root@localhost','2020-10-03','','0000-00-00'),(300,'Modelo','Insertar','Lodgy','','root@localhost','2020-10-03','','0000-00-00'),(301,'Modelo','Insertar','Sandero','','root@localhost','2020-10-03','','0000-00-00'),(302,'Modelo','Insertar','Duster','','root@localhost','2020-10-03','','0000-00-00'),(303,'Modelo','Insertar','Dokker','','root@localhost','2020-10-03','','0000-00-00'),(304,'Marca','Insertar','DFSK','','root@localhost','2020-10-03','','0000-00-00'),(305,'Modelo','Insertar','Serie V','','root@localhost','2020-10-03','','0000-00-00'),(306,'Modelo','Insertar','Serie K','','root@localhost','2020-10-03','','0000-00-00'),(307,'Marca','Insertar','DS','','root@localhost','2020-10-03','','0000-00-00'),(308,'Modelo','Insertar','DS 4','','root@localhost','2020-10-03','','0000-00-00'),(309,'Modelo','Insertar','DS 5','','root@localhost','2020-10-03','','0000-00-00'),(310,'Modelo','Insertar','DS 3','','root@localhost','2020-10-03','','0000-00-00'),(311,'Modelo','Insertar','DS 4 Crossback','','root@localhost','2020-10-03','','0000-00-00'),(312,'Modelo','Insertar','DS 7 Crossback','','root@localhost','2020-10-03','','0000-00-00'),(313,'Marca','Insertar','FERRARI','','root@localhost','2020-10-03','','0000-00-00'),(314,'Modelo','Insertar','488','','root@localhost','2020-10-03','','0000-00-00'),(315,'Modelo','Insertar','GTC4','','root@localhost','2020-10-03','','0000-00-00'),(316,'Modelo','Insertar','California','','root@localhost','2020-10-03','','0000-00-00'),(317,'Modelo','Insertar','F12','','root@localhost','2020-10-03','','0000-00-00'),(318,'Modelo','Insertar','Portofino','','root@localhost','2020-10-03','','0000-00-00'),(319,'Modelo','Insertar','812','','root@localhost','2020-10-03','','0000-00-00'),(320,'Marca','Insertar','FERRARI (FCA)','','root@localhost','2020-10-03','','0000-00-00'),(321,'Modelo','Insertar','458','','root@localhost','2020-10-03','','0000-00-00'),(322,'Modelo','Insertar','FF','','root@localhost','2020-10-03','','0000-00-00'),(323,'Marca','Insertar','FIAT','','root@localhost','2020-10-03','','0000-00-00'),(324,'Modelo','Insertar','Freemont','','root@localhost','2020-10-03','','0000-00-00'),(325,'Modelo','Insertar','Doblò','','root@localhost','2020-10-03','','0000-00-00'),(326,'Modelo','Insertar','Punto','','root@localhost','2020-10-03','','0000-00-00'),(327,'Modelo','Insertar','Panda','','root@localhost','2020-10-03','','0000-00-00'),(328,'Modelo','Insertar','500','','root@localhost','2020-10-03','','0000-00-00'),(329,'Modelo','Insertar','500L','','root@localhost','2020-10-03','','0000-00-00'),(330,'Modelo','Insertar','500X','','root@localhost','2020-10-03','','0000-00-00'),(331,'Modelo','Insertar','Qubo','','root@localhost','2020-10-03','','0000-00-00'),(332,'Modelo','Insertar','Fiorino','','root@localhost','2020-10-03','','0000-00-00'),(333,'Modelo','Insertar','Bravo','','root@localhost','2020-10-03','','0000-00-00'),(334,'Modelo','Insertar','500C','','root@localhost','2020-10-03','','0000-00-00'),(335,'Modelo','Insertar','Tipo','','root@localhost','2020-10-03','','0000-00-00'),(336,'Modelo','Insertar','124 Spider','','root@localhost','2020-10-03','','0000-00-00'),(337,'Marca','Insertar','FORD','','root@localhost','2020-10-03','','0000-00-00'),(338,'Modelo','Insertar','C-Max','','root@localhost','2020-10-03','','0000-00-00'),(339,'Modelo','Insertar','Fiesta','','root@localhost','2020-10-03','','0000-00-00'),(340,'Modelo','Insertar','Focus','','root@localhost','2020-10-03','','0000-00-00'),(341,'Modelo','Insertar','Mondeo','','root@localhost','2020-10-03','','0000-00-00'),(342,'Modelo','Insertar','Ka','','root@localhost','2020-10-03','','0000-00-00'),(343,'Modelo','Insertar','S-MAX','','root@localhost','2020-10-03','','0000-00-00'),(344,'Modelo','Insertar','B-MAX','','root@localhost','2020-10-03','','0000-00-00'),(345,'Modelo','Insertar','Grand C-Max','','root@localhost','2020-10-03','','0000-00-00'),(346,'Modelo','Insertar','Tourneo Custom','','root@localhost','2020-10-03','','0000-00-00'),(347,'Modelo','Insertar','Kuga','','root@localhost','2020-10-03','','0000-00-00'),(348,'Modelo','Insertar','Galaxy','','root@localhost','2020-10-03','','0000-00-00'),(349,'Modelo','Insertar','Grand Tourneo Connect','','root@localhost','2020-10-03','','0000-00-00'),(350,'Modelo','Insertar','Tourneo Connect','','root@localhost','2020-10-03','','0000-00-00'),(351,'Modelo','Insertar','EcoSport','','root@localhost','2020-10-03','','0000-00-00'),(352,'Modelo','Insertar','Tourneo Courier','','root@localhost','2020-10-03','','0000-00-00'),(353,'Modelo','Insertar','Mustang','','root@localhost','2020-10-03','','0000-00-00'),(354,'Modelo','Insertar','Transit Connect','','root@localhost','2020-10-03','','0000-00-00'),(355,'Modelo','Insertar','Edge','','root@localhost','2020-10-03','','0000-00-00'),(356,'Modelo','Insertar','Ka+','','root@localhost','2020-10-03','','0000-00-00'),(357,'Marca','Insertar','HONDA','','root@localhost','2020-10-03','','0000-00-00'),(358,'Modelo','Insertar','Accord','','root@localhost','2020-10-03','','0000-00-00'),(359,'Modelo','Insertar','Jazz','','root@localhost','2020-10-03','','0000-00-00'),(360,'Modelo','Insertar','Civic','','root@localhost','2020-10-03','','0000-00-00'),(361,'Modelo','Insertar','CR-V','','root@localhost','2020-10-03','','0000-00-00'),(362,'Modelo','Insertar','HR-V','','root@localhost','2020-10-03','','0000-00-00'),(363,'Marca','Insertar','HYUNDAI','','root@localhost','2020-10-03','','0000-00-00'),(364,'Modelo','Insertar','I20','','root@localhost','2020-10-03','','0000-00-00'),(365,'Modelo','Insertar','Ix35','','root@localhost','2020-10-03','','0000-00-00'),(366,'Modelo','Insertar','Ix20','','root@localhost','2020-10-03','','0000-00-00'),(367,'Modelo','Insertar','I10','','root@localhost','2020-10-03','','0000-00-00'),(368,'Modelo','Insertar','Santa Fe','','root@localhost','2020-10-03','','0000-00-00'),(369,'Modelo','Insertar','Veloster','','root@localhost','2020-10-03','','0000-00-00'),(370,'Modelo','Insertar','I40','','root@localhost','2020-10-03','','0000-00-00'),(371,'Modelo','Insertar','Elantra','','root@localhost','2020-10-03','','0000-00-00'),(372,'Modelo','Insertar','I30','','root@localhost','2020-10-03','','0000-00-00'),(373,'Modelo','Insertar','Grand Santa Fe','','root@localhost','2020-10-03','','0000-00-00'),(374,'Modelo','Insertar','Genesis','','root@localhost','2020-10-03','','0000-00-00'),(375,'Modelo','Insertar','H-1 Travel','','root@localhost','2020-10-03','','0000-00-00'),(376,'Modelo','Insertar','Tucson','','root@localhost','2020-10-03','','0000-00-00'),(377,'Modelo','Insertar','I20 Active','','root@localhost','2020-10-03','','0000-00-00'),(378,'Modelo','Insertar','IONIQ','','root@localhost','2020-10-03','','0000-00-00'),(379,'Modelo','Insertar','Kona','','root@localhost','2020-10-03','','0000-00-00'),(380,'Marca','Insertar','INFINITI','','root@localhost','2020-10-03','','0000-00-00'),(381,'Modelo','Insertar','Q70','','root@localhost','2020-10-03','','0000-00-00'),(382,'Modelo','Insertar','Q50','','root@localhost','2020-10-03','','0000-00-00'),(383,'Modelo','Insertar','QX70','','root@localhost','2020-10-03','','0000-00-00'),(384,'Modelo','Insertar','QX50','','root@localhost','2020-10-03','','0000-00-00'),(385,'Modelo','Insertar','Q60','','root@localhost','2020-10-03','','0000-00-00'),(386,'Modelo','Insertar','Q30','','root@localhost','2020-10-03','','0000-00-00'),(387,'Modelo','Insertar','QX30','','root@localhost','2020-10-03','','0000-00-00'),(388,'Marca','Insertar','ISUZU','','root@localhost','2020-10-03','','0000-00-00'),(389,'Modelo','Insertar','D-Max','','root@localhost','2020-10-03','','0000-00-00'),(390,'Marca','Insertar','JAGUAR','','root@localhost','2020-10-03','','0000-00-00'),(391,'Modelo','Insertar','XF','','root@localhost','2020-10-03','','0000-00-00'),(392,'Modelo','Insertar','Serie XK','','root@localhost','2020-10-03','','0000-00-00'),(393,'Modelo','Insertar','F-Type','','root@localhost','2020-10-03','','0000-00-00'),(394,'Modelo','Insertar','XJ','','root@localhost','2020-10-03','','0000-00-00'),(395,'Modelo','Insertar','XE','','root@localhost','2020-10-03','','0000-00-00'),(396,'Modelo','Insertar','F-Pace','','root@localhost','2020-10-03','','0000-00-00'),(397,'Modelo','Insertar','E-Pace','','root@localhost','2020-10-03','','0000-00-00'),(398,'Marca','Insertar','JEEP','','root@localhost','2020-10-03','','0000-00-00'),(399,'Modelo','Insertar','Grand Cherokee','','root@localhost','2020-10-03','','0000-00-00'),(400,'Modelo','Insertar','Wrangler Unlimited','','root@localhost','2020-10-03','','0000-00-00'),(401,'Modelo','Insertar','Cherokee','','root@localhost','2020-10-03','','0000-00-00'),(402,'Modelo','Insertar','Wrangler','','root@localhost','2020-10-03','','0000-00-00'),(403,'Modelo','Insertar','Renegade','','root@localhost','2020-10-03','','0000-00-00'),(404,'Modelo','Insertar','Compass','','root@localhost','2020-10-03','','0000-00-00'),(405,'Marca','Insertar','KIA','','root@localhost','2020-10-03','','0000-00-00'),(406,'Modelo','Insertar','Picanto','','root@localhost','2020-10-03','','0000-00-00'),(407,'Modelo','Insertar','Rio','','root@localhost','2020-10-03','','0000-00-00'),(408,'Modelo','Insertar','Sportage','','root@localhost','2020-10-03','','0000-00-00'),(409,'Modelo','Insertar','Venga','','root@localhost','2020-10-03','','0000-00-00'),(410,'Modelo','Insertar','Optima','','root@localhost','2020-10-03','','0000-00-00'),(411,'Modelo','Insertar','Cee\'d','','root@localhost','2020-10-03','','0000-00-00'),(412,'Modelo','Insertar','Cee\'d Sportswagon','','root@localhost','2020-10-03','','0000-00-00'),(413,'Modelo','Insertar','Carens','','root@localhost','2020-10-03','','0000-00-00'),(414,'Modelo','Insertar','Pro_cee\'d','','root@localhost','2020-10-03','','0000-00-00'),(415,'Modelo','Insertar','Sorento','','root@localhost','2020-10-03','','0000-00-00'),(416,'Modelo','Insertar','Soul','','root@localhost','2020-10-03','','0000-00-00'),(417,'Modelo','Insertar','Niro','','root@localhost','2020-10-03','','0000-00-00'),(418,'Modelo','Insertar','Soul EV','','root@localhost','2020-10-03','','0000-00-00'),(419,'Modelo','Insertar','Pro_cee\'d GT','','root@localhost','2020-10-03','','0000-00-00'),(420,'Modelo','Insertar','Stonic','','root@localhost','2020-10-03','','0000-00-00'),(421,'Modelo','Insertar','Optima SW','','root@localhost','2020-10-03','','0000-00-00'),(422,'Modelo','Insertar','Optima PHEV','','root@localhost','2020-10-03','','0000-00-00'),(423,'Modelo','Insertar','Optima Híbrido Enchufable','','root@localhost','2020-10-03','','0000-00-00'),(424,'Modelo','Insertar','Optima SW GT','','root@localhost','2020-10-03','','0000-00-00'),(425,'Modelo','Insertar','Optima GT','','root@localhost','2020-10-03','','0000-00-00'),(427,'Modelo','Insertar','Optima SW Híbrido Enchufable','','root@localhost','2020-10-03','','0000-00-00'),(428,'Modelo','Insertar','Stinger','','root@localhost','2020-10-03','','0000-00-00'),(429,'Marca','Insertar','LADA','','root@localhost','2020-10-03','','0000-00-00'),(430,'Modelo','Insertar','4X4','','root@localhost','2020-10-03','','0000-00-00'),(431,'Modelo','Insertar','Priora','','root@localhost','2020-10-03','','0000-00-00'),(432,'Marca','Insertar','LAMBORGHINI','','root@localhost','2020-10-03','','0000-00-00'),(433,'Modelo','Insertar','Aventador','','root@localhost','2020-10-03','','0000-00-00'),(434,'Modelo','Insertar','Huracán','','root@localhost','2020-10-03','','0000-00-00'),(435,'Marca','Insertar','LANCIA','','root@localhost','2020-10-03','','0000-00-00'),(436,'Modelo','Insertar','Ypsilon','','root@localhost','2020-10-03','','0000-00-00'),(437,'Modelo','Insertar','Voyager','','root@localhost','2020-10-03','','0000-00-00'),(438,'Modelo','Insertar','Delta','','root@localhost','2020-10-03','','0000-00-00'),(439,'Marca','Insertar','LAND ROVER','','root@localhost','2020-10-03','','0000-00-00'),(440,'Modelo','Insertar','Defender','','root@localhost','2020-10-03','','0000-00-00'),(441,'Modelo','Insertar','Discovery 4','','root@localhost','2020-10-03','','0000-00-00'),(442,'Modelo','Insertar','Range Rover','','root@localhost','2020-10-03','','0000-00-00'),(443,'Modelo','Insertar','Range Rover Evoque','','root@localhost','2020-10-03','','0000-00-00'),(444,'Modelo','Insertar','Freelander','','root@localhost','2020-10-03','','0000-00-00'),(445,'Modelo','Insertar','Range Rover Sport','','root@localhost','2020-10-03','','0000-00-00'),(446,'Modelo','Insertar','Discovery Sport','','root@localhost','2020-10-03','','0000-00-00'),(447,'Modelo','Insertar','Discovery','','root@localhost','2020-10-03','','0000-00-00'),(448,'Modelo','Insertar','Range Rover Velar','','root@localhost','2020-10-03','','0000-00-00'),(449,'Marca','Insertar','LEXUS','','root@localhost','2020-10-03','','0000-00-00'),(450,'Modelo','Insertar','GS','','root@localhost','2020-10-03','','0000-00-00'),(451,'Modelo','Insertar','RX','','root@localhost','2020-10-03','','0000-00-00'),(452,'Modelo','Insertar','CT','','root@localhost','2020-10-03','','0000-00-00'),(453,'Modelo','Insertar','IS','','root@localhost','2020-10-03','','0000-00-00'),(454,'Modelo','Insertar','NX','','root@localhost','2020-10-03','','0000-00-00'),(455,'Modelo','Insertar','RC','','root@localhost','2020-10-03','','0000-00-00'),(456,'Modelo','Insertar','LS','','root@localhost','2020-10-03','','0000-00-00'),(457,'Modelo','Insertar','LC','','root@localhost','2020-10-03','','0000-00-00'),(458,'Marca','Insertar','MAHINDRA','','root@localhost','2020-10-03','','0000-00-00'),(459,'Modelo','Insertar','XUV500','','root@localhost','2020-10-03','','0000-00-00'),(460,'Rol','Insertar','Superadministrador','','root@localhost','2020-10-07','','0000-00-00'),(461,'Rol','Insertar','Administrador','','root@localhost','2020-10-07','','0000-00-00'),(462,'Rol','Insertar','Empleado','','root@localhost','2020-10-07','','0000-00-00'),(463,'Tipo Documento','Insertar','Cédula de Ciudadanía','','root@localhost','2020-10-07','','0000-00-00'),(464,'Sede','Insertar','Sede Norte','','root@localhost','2020-10-07','','0000-00-00'),(465,'Persona','Insertar','Juan Diego','','root@localhost','2020-10-07','','0000-00-00'),(466,'Tipo Documento','Insertar','Cédula de Extranjería','','root@localhost','2020-10-08','','0000-00-00'),(467,'Tipo Pago','Insertar','Efectivo','','root@localhost','2020-10-10','','0000-00-00'),(468,'Tipo Pago','Insertar','Cheque','','root@localhost','2020-10-10','','0000-00-00'),(469,'Tipo Pago','Insertar','Tarjeta Crédito','','root@localhost','2020-10-10','','0000-00-00'),(470,'Tipo Pago','Insertar','Tarjeta Débito','','root@localhost','2020-10-10','','0000-00-00'),(471,'Marca','Insertar','MASERATI','','root@localhost','2020-10-12','','0000-00-00'),(472,'Sede','Insertar','Sede Sur','','root@localhost','2020-10-20','','0000-00-00'),(473,'Sede','Insertar','Sede Oriente','','root@localhost','2020-10-20','','0000-00-00'),(474,'Marca','Insertar','MAZDA','','root@localhost','2020-10-21','','0000-00-00'),(475,'Modelo','Insertar','Mazda2','','root@localhost','2020-10-21','','0000-00-00'),(476,'Vehiculo','Insertar','ABC-123','','root@localhost','2020-10-24','','0000-00-00'),(477,'Vehiculo','Insertar','DEF-456','','root@localhost','2020-10-24','','0000-00-00'),(478,'Tipo Documento','Insertar','Pasaporte','','root@localhost','2020-10-25','','0000-00-00'),(479,'Modelo','Insertar','CX-5','','root@localhost','2020-10-25','','0000-00-00'),(480,'Marca','Insertar','MERCEDES','','root@localhost','2020-10-25','','0000-00-00'),(481,'Marca','Actualizar','MERCEDEz','MERCEDES','','0000-00-00','root@localhost','2020-10-25'),(482,'Marca','Actualizar','MERCEDES','MERCEDEz','','0000-00-00','root@localhost','2020-10-25'),(483,'Marca','Insertar','MINI','','root@localhost','2020-10-25','','0000-00-00'),(484,'Marca','Actualizar','ABARTH','ABARTH','','0000-00-00','root@localhost','2020-10-25'),(485,'Marca','Actualizar','ABARTH','ABARTH','','0000-00-00','root@localhost','2020-10-25');

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `n_rol` varchar(50) NOT NULL,
  `estado_rol` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `rol` */

insert  into `rol`(`id_rol`,`n_rol`,`estado_rol`) values (1,'Superadministrador','Activo'),(2,'Administrador','Activo'),(3,'Empleado','Activo');

/*Table structure for table `sede` */

DROP TABLE IF EXISTS `sede`;

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL AUTO_INCREMENT,
  `n_sede` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `estado_sede` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `sede` */

insert  into `sede`(`id_sede`,`n_sede`,`telefono`,`direccion`,`estado_sede`) values (1,'Sede Norte','774 2589','Cra. 9 Este #36-89','Activo'),(2,'Sede Sur','478 2669','Cll. 26 #74-15','Activo'),(3,'Sede Oriente','475 9633','Dig. 2a #28','Activo');

/*Table structure for table `tarifa` */

DROP TABLE IF EXISTS `tarifa`;

CREATE TABLE `tarifa` (
  `id_tarifa` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipotarifa` int(11) NOT NULL,
  `id_tipovehiculo` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_tarifa`),
  KEY `id_tipovehiculo` (`id_tipovehiculo`),
  KEY `id_tipotarifa` (`id_tipotarifa`),
  CONSTRAINT `tarifa_ibfk_1` FOREIGN KEY (`id_tipovehiculo`) REFERENCES `tipo_vehiculo` (`id_tipovehiculo`),
  CONSTRAINT `tarifa_ibfk_2` FOREIGN KEY (`id_tipotarifa`) REFERENCES `tipo_tarifa` (`id_tipotarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tarifa` */

/*Table structure for table `tipo_documento` */

DROP TABLE IF EXISTS `tipo_documento`;

CREATE TABLE `tipo_documento` (
  `id_tipodocumento` int(11) NOT NULL AUTO_INCREMENT,
  `n_tipodocumento` varchar(5) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado_tipodocumento` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_tipodocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_documento` */

insert  into `tipo_documento`(`id_tipodocumento`,`n_tipodocumento`,`descripcion`,`estado_tipodocumento`) values (1,'CC','Cédula de Ciudadanía','Activo'),(2,'CE','Cédula de Extranjería','Activo'),(3,'PA','Pasaporte','Activo');

/*Table structure for table `tipo_pago` */

DROP TABLE IF EXISTS `tipo_pago`;

CREATE TABLE `tipo_pago` (
  `id_tipopago` int(11) NOT NULL AUTO_INCREMENT,
  `n_tipopago` varchar(50) NOT NULL,
  `estado_tipopago` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_tipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_pago` */

insert  into `tipo_pago`(`id_tipopago`,`n_tipopago`,`estado_tipopago`) values (1,'Efectivo','Activo'),(2,'Cheque','Activo'),(3,'Tarjeta Crédito','Activo'),(4,'Tarjeta Débito','Activo');

/*Table structure for table `tipo_tarifa` */

DROP TABLE IF EXISTS `tipo_tarifa`;

CREATE TABLE `tipo_tarifa` (
  `id_tipotarifa` int(11) NOT NULL AUTO_INCREMENT,
  `n_tipotarifa` varchar(50) NOT NULL,
  `estado_tipotarifa` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_tipotarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_tarifa` */

insert  into `tipo_tarifa`(`id_tipotarifa`,`n_tipotarifa`,`estado_tipotarifa`) values (1,'Cuota fija','Activo'),(2,'Tarifas de precio fijo','Activo'),(3,'Tarifas planas','Activo');

/*Table structure for table `tipo_valor` */

DROP TABLE IF EXISTS `tipo_valor`;

CREATE TABLE `tipo_valor` (
  `id_tipovalor` int(11) NOT NULL AUTO_INCREMENT,
  `n_tipovalor` varchar(10) NOT NULL,
  `estado_tipovalor` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_tipovalor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_valor` */

insert  into `tipo_valor`(`id_tipovalor`,`n_tipovalor`,`estado_tipovalor`) values (1,'Hora','Activo'),(2,'Día','Activo'),(3,'Mes','Activo');

/*Table structure for table `tipo_vehiculo` */

DROP TABLE IF EXISTS `tipo_vehiculo`;

CREATE TABLE `tipo_vehiculo` (
  `id_tipovehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `n_tipovehiculo` varchar(50) NOT NULL,
  `estado_tipovehiculo` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_tipovehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_vehiculo` */

insert  into `tipo_vehiculo`(`id_tipovehiculo`,`n_tipovehiculo`,`estado_tipovehiculo`) values (1,'Automovil','Activo'),(2,'Buseta','Activo'),(3,'Moto','Activo');

/*Table structure for table `vehiculo` */

DROP TABLE IF EXISTS `vehiculo`;

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(10) NOT NULL,
  `id_tipovehiculo` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `estado_vehiculo` enum('Activo','Inactivo') NOT NULL,
  PRIMARY KEY (`id_vehiculo`),
  KEY `id_tipovehiculo` (`id_tipovehiculo`),
  KEY `id_marca` (`id_marca`),
  KEY `id_color` (`id_color`),
  KEY `id_sede` (`id_sede`),
  KEY `id_modelo` (`id_modelo`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_tipovehiculo`) REFERENCES `tipo_vehiculo` (`id_tipovehiculo`),
  CONSTRAINT `vehiculo_ibfk_2` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  CONSTRAINT `vehiculo_ibfk_3` FOREIGN KEY (`id_color`) REFERENCES `color` (`id_color`),
  CONSTRAINT `vehiculo_ibfk_4` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`),
  CONSTRAINT `vehiculo_ibfk_5` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `vehiculo` */

insert  into `vehiculo`(`id_vehiculo`,`placa`,`id_tipovehiculo`,`id_marca`,`id_modelo`,`id_color`,`id_sede`,`estado_vehiculo`) values (1,'ABC-123',1,1,1,5,1,'Activo'),(2,'DEF-456',1,2,4,25,1,'Activo');

/* Trigger structure for table `color` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Color` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Color` AFTER INSERT ON `color` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Color","Insertar",new.n_color,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `marca` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Marca` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Marca` AFTER INSERT ON `marca` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Marca","Insertar",new.n_marca,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `marca` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Actualizar_Marca` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Actualizar_Marca` AFTER UPDATE ON `marca` FOR EACH ROW BEGIN
	INSERT INTO reporte(tabla,accion,registro_nuevo,registro_anterior,usuario_modificacion,fecha_modificacion)
	VALUES ("Marca","Actualizar",new.n_marca,old.n_marca,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `modelo` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Modelo` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Modelo` AFTER INSERT ON `modelo` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Modelo","Insertar",new.n_modelo,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `persona` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Persona` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Persona` AFTER INSERT ON `persona` FOR EACH ROW BEGIN
	INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	VALUES ("Persona","Insertar",new.nombre,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `rol` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Rol` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Rol` AFTER INSERT ON `rol` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Rol","Insertar",new.n_rol,User(),now());
    END */$$


DELIMITER ;

/* Trigger structure for table `sede` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Sede` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Sede` AFTER INSERT ON `sede` FOR EACH ROW BEGIN
	INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	VALUES ("Sede","Insertar",new.n_sede,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `tipo_documento` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Tipo_Documento` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Tipo_Documento` AFTER INSERT ON `tipo_documento` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Tipo Documento","Insertar",new.descripcion,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `tipo_pago` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Tipo_Pago` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Tipo_Pago` AFTER INSERT ON `tipo_pago` FOR EACH ROW BEGIN
	INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	VALUES ("Tipo Pago","Insertar",new.n_tipopago,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `tipo_tarifa` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Tipo_Tarifa` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Tipo_Tarifa` AFTER INSERT ON `tipo_tarifa` FOR EACH ROW BEGIN
	INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	VALUES ("Tipo Tarifa","Insertar",new.n_tipotarifa,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `tipo_valor` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Tipo_Valor` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Tipo_Valor` AFTER INSERT ON `tipo_valor` FOR EACH ROW BEGIN
	INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	VALUES ("Tipo Valor","Insertar",new.n_tipovalor,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `tipo_vehiculo` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Tipo_Vehiculo` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Tipo_Vehiculo` AFTER INSERT ON `tipo_vehiculo` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Tipo Vehiculo","Insertar",new.n_tipovehiculo,USER(),NOW());
    END */$$


DELIMITER ;

/* Trigger structure for table `vehiculo` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `SP_Insertar_Vehiculo` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `SP_Insertar_Vehiculo` AFTER INSERT ON `vehiculo` FOR EACH ROW BEGIN 
	   INSERT INTO reporte(tabla,accion,registro_nuevo,usuario_creacion,fecha_creacion)
	   VALUES ("Vehiculo","Insertar",new.placa,USER(),NOW());
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

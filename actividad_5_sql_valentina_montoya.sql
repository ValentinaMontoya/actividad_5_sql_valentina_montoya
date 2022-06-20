-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para heladeria_y_pizzeria_la_65
DROP DATABASE IF EXISTS `heladeria_y_pizzeria_la_65`;
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '0',
  `age` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.customers: ~5 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `age`) VALUES
	(1, 'Rosse', 2021),
	(2, 'Itzel', 2023),
	(3, 'Valentina', 2012),
	(4, 'jin', 2013),
	(5, 'taehyung', 1999);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.discoint
DROP TABLE IF EXISTS `discoint`;
CREATE TABLE IF NOT EXISTS `discoint` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.discoint: ~5 rows (aproximadamente)
DELETE FROM `discoint`;
INSERT INTO `discoint` (`id`, `name`, `value`) VALUES
	(1, 'rosse', 0),
	(2, 'itzel', 0.7),
	(3, 'valentina', 0),
	(4, 'jin', 0.4),
	(5, 'taehyung', 0.3);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '0',
  `prices` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.products: ~5 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `prices`) VALUES
	(1, 'cake', 10000),
	(2, 'coca-cola', 1500),
	(3, 'candy', 200),
	(4, 'champagne', 20000),
	(5, 'fast food', 20000);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `value` float NOT NULL,
  `coustomers_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales: ~5 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `date`, `value`, `coustomers_id`) VALUES
	(1, '2022-06-17 10:07:03', 10000, 1),
	(2, '2022-08-17 11:57:09', 1500, 2),
	(3, '2022-04-04 03:45:08', 200, 3),
	(4, '2022-06-17 12:17:44', 20000, 4),
	(5, '2022-06-17 12:18:06', 20000, 5);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_discoint
DROP TABLE IF EXISTS `sales_discoint`;
CREATE TABLE IF NOT EXISTS `sales_discoint` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sale_id` smallint(6) NOT NULL,
  `discoint_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_discoint: ~4 rows (aproximadamente)
DELETE FROM `sales_discoint`;
INSERT INTO `sales_discoint` (`id`, `sale_id`, `discoint_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_products
DROP TABLE IF EXISTS `sales_products`;
CREATE TABLE IF NOT EXISTS `sales_products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sale_id` smallint(6) NOT NULL,
  `product_id` smallint(6) NOT NULL,
  `amount` smallint(6) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_products: ~0 rows (aproximadamente)
DELETE FROM `sales_products`;
INSERT INTO `sales_products` (`id`, `sale_id`, `product_id`, `amount`, `price`) VALUES
	(1, 1, 1, 3, 30000),
	(2, 2, 2, 2, 3000),
	(3, 3, 3, 1, 200),
	(4, 4, 4, 3, 60000),
	(5, 5, 5, 1, 20000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

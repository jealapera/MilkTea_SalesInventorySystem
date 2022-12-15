/*
SQLyog Community v9.60 
MySQL - 5.5.5-10.1.35-MariaDB : Database - milktea_sales_inventory_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`milktea_sales_inventory_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `milktea_sales_inventory_system`;

/* Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(15) DEFAULT 'User',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/* Data for the table `users` */

INSERT INTO `users`(`id`,`role`,`username`,`password`,`email_address`,`full_name`) 
VALUES (1, 'Admin', 'admin', 'asdqwe123', 'milktea_admin@email.com', 'Milk Tea Administrator'),
(2, 'User', 'user.testid1', 'testing123', 'user.testid1@email.com', 'Milk Tea User Test ID 1'),
(3, 'User', 'user.testid2', 'testing321', 'user.testid2@email.com', 'Milk Tea User Test ID 2');

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
   id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name TEXT,
   quantity INTEGER,
   price DECIMAL(16,2)
);

/* Data for the table `products` */

INSERT INTO `products` (`name`, quantity, price) VALUES
   ("T-shirt", 100, 20.99),
   ("Jeans", 50, 49.99),
	("Socks", 200, 5.99),
   ("Shoes", 75, 79.99),
	("Hat", 125, 14.99);


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
   id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
   product_id INTEGER,
   quantity INTEGER,
   FOREIGN KEY(product_id) REFERENCES products(id)
);

INSERT INTO `orders` (product_id, quantity) VALUES
   (1, 2),
   (2, 1),
   (3, 10),
   (4, 1),
   (5, 5);


DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
   id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name TEXT,
   email TEXT
);

INSERT INTO `customers` (name, email) VALUES
   ("Jane Doe", "jane.doe@example.com"),
   ("John Doe", "john.doe@example.com"),
   ("Alice Smith", "alice.smith@example.com"),
   ("Bob Smith", "bob.smith@example.com"),
   ("Evelyn Johnson", "evelyn.johnson@example.com");


DROP TABLE IF EXISTS `order_customers`;

CREATE TABLE `order_customers` (
   order_id INTEGER,
   customer_id INTEGER,
   FOREIGN KEY(order_id) REFERENCES orders(id),
   FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO `order_customers` (order_id, customer_id) VALUES
   (1, 1),
   (1, 2),
   (2, 1),
   (3, 3),
   (3, 4),
   (4, 1),
   (5, 5);


DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
   id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
   order_id INTEGER,
   amount DECIMAL(16,2),
   FOREIGN KEY(order_id) REFERENCES orders(id)
);

INSERT INTO `transactions` (order_id, amount) VALUES
   (1, 41.98),
   (2, 49.99),
   (3, 59.9),
   (4, 79.99),
   (5, 74.95);
   
   
-- /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
-- /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
-- /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
-- /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
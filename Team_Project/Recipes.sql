-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: Recipes
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `biography` varchar(100) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (1,'Charles O\'Mashakan','A young man who found that he was good at opening cans and cooking what\'s inside them.');
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipe`
--

DROP TABLE IF EXISTS `Recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recipe` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` float(5,2) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipe`
--

LOCK TABLES `Recipe` WRITE;
/*!40000 ALTER TABLE `Recipe` DISABLE KEYS */;
INSERT INTO `Recipe` VALUES (1,'Apple Crumble Pie','A delicious pie featuring apples, cinnamon, and sugar. ',25.00,0),(2,'Spaghetti and Meatballs','A filling meal of spaghetti noodles and saucy meatballs.',20.00,0),(3,'Meat Ravioli','Packed pockets of seasoned meat and submerged in tomato sauce.',25.00,0),(4,'Cereal and Milk','A quick and easy breakfast meal of cereal and milk.',15.00,0),(5,'Chocolate Chip Cookies','A delicious platter of chocolate chip cookies.',40.00,0),(6,'Baked Potato','A baked potato with a filling of sour cream, chives, and cheese.',30.00,0),(7,'Potato Wedges','Sliced, baked pieces of potatoes that have been seasoned with spices.',35.00,0),(8,'White Chocolate Macedonia Nut ','A delicious platter of white chocolate, Macedonia nut cookies.',40.00,0),(9,'No-Bake Oatmeal Cookies','Soft \"cookies\" made of oatmeal, peanut butter, and chocolate cocoa that does not require baking.',35.00,0),(10,'Pecan Pie','A pie featuring roasted pecans, caramel, sugar, and vanilla.',32.00,0),(11,'Lemon Meringue Pie','A delicious cream pie with a sweet layer of lemon filling under a fluffy meringue cover.',40.00,0),(12,'Meat Lasagna','A meaty deep dish featuring layers of pasta, different assortments of cheese, and meat sauce.',45.00,0),(13,'Chicken Adobo','A rich meal featuring chopped chicken soaked in a sweetened soy sauce.',35.00,0),(14,'Pork-Pineapple Adobo','A rich meal featuring deboned, chopped pork and sliced pineapple soaked in sweetened, soy sauce.',42.00,0),(15,'Pork-Potato Adobo','A rich meal featuring deboned, chopped pork and sliced potatoes soaked in sweetened, soy sauce.',38.00,0),(16,'Lumpia','A delicious, deep-fried meal of wrapped rolls filled with grounded meat and veggies.',38.00,0),(17,'Strawberry and Banana Smoothie','A blended fruit smoothie featuring strawberries and bananas.',25.00,0);
/*!40000 ALTER TABLE `Recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type`
--

DROP TABLE IF EXISTS `Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type`
--

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
INSERT INTO `Type` VALUES (1,'Mexican-Hungarian','A mixture of the zesty Mexican cuisine and savory Hungarian tastes.');
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-26  2:34:17

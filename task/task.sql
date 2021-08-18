-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 11:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`category_id`, `category_name`) VALUES
(2, 'test'),
(3, 'Laptop Chargers & Adapters'),
(4, 'Monitor & Video Cables'),
(5, 'Wired & USB Keyboards'),
(6, 'Printer Ink'),
(7, 'Keyboard & Mouse Combos'),
(8, 'Gaming Monitors'),
(9, 'Network Switches'),
(10, 'Mini PCs'),
(11, 'Printer Toner'),
(12, 'Wired & USB Mice'),
(13, 'Computer Speakers'),
(14, 'Wireless Routers'),
(15, 'Gaming Speakers'),
(16, 'PC Gaming Controllers'),
(17, 'Trackballs'),
(18, 'Wireless & Bluetooth Keyboards'),
(19, 'Ergonomic Mice'),
(20, 'USB Cables & Adapters'),
(21, 'Wireless & Bluetooth Mice'),
(22, 'LCD Monitors'),
(23, 'Lap Desks'),
(24, 'Laptop Batteries'),
(25, 'Laptop Bags & Cases'),
(26, 'USB Flash Drives'),
(27, 'Tablet Cases, Covers & Keyboard Folios'),
(28, 'Computer Microphones'),
(29, 'E-Readers & Accessories'),
(30, 'Tablet A/V Adapters'),
(31, 'Internal Hard Drives'),
(32, 'All Monitors'),
(33, 'Desktop Memory'),
(34, 'PC Game Downloads'),
(35, 'Graphic Design Software'),
(36, 'Maintenance Software'),
(37, 'PC Games'),
(38, 'External DVD Drives'),
(39, 'Home & Landscape Design'),
(40, 'USB Wi-Fi Adapters'),
(41, 'Wi-Fi Extenders'),
(42, 'Powerline Adapters'),
(43, 'Utilities Software'),
(44, 'Hard Drive Cables & Accessories'),
(45, 'Antivirus Software'),
(46, 'Internet Security'),
(47, 'Multipurpose Paper'),
(48, 'Computer Accessories & Peripherals'),
(49, 'Surge Protectors & Power'),
(50, 'Webcams'),
(51, 'iMac'),
(52, 'Internal DVD Drives'),
(53, 'Gaming Mouse Pads'),
(54, 'Laptop Memory'),
(55, 'PC Add-Ons'),
(56, 'Photo-Quality Paper'),
(57, 'Tablet Stylus Pens'),
(58, 'Computer Headsets'),
(59, 'Printer Accessories'),
(60, 'Mouse & Wrist Pads'),
(61, 'Modem & Router Combos'),
(62, 'iPad Pro'),
(63, 'Game Capture Devices'),
(64, 'Black & White Laser Printers'),
(65, 'USB Hubs'),
(66, 'External Hard Drives'),
(67, 'Keypads'),
(68, 'Photo Printers'),
(69, 'Tablet Screen Protectors'),
(70, 'Monitor Mounts & Stands'),
(71, 'iPad mini'),
(72, 'iPad Air'),
(73, 'Supertank Printer Ink'),
(74, 'Inkjet Printers'),
(75, 'Ethernet Cables'),
(76, 'Operating Systems'),
(77, 'Color Laser Printers');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `model_number` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `deparment_name` varchar(255) NOT NULL,
  `manufacturer_name` varchar(255) NOT NULL,
  `upc` bigint(20) NOT NULL,
  `sku` int(11) NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `model_number`, `category_name`, `deparment_name`, `manufacturer_name`, `upc`, `sku`, `regular_price`, `sale_price`, `description`, `url`) VALUES
(3, 'test  fasfasfasfas', 'Laptop Chargers & Adapters', 'PHOTO/COMMODITIES', 'Apple', 885909377794, 1019306, '79.00', '77.99', 'Compatible with Apple® MacBook and MacBook Pro with a 13\" display; magnetic DC connector; LED indicator lights; travel-friendly design', 'https://api.bestbuy.com/click/-/1019306/pdp'),
(4, 'MDP2HDMI', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030836906, 1028613, '17.99', '14.99', 'Connects Mini DisplayPort to 19 pin HDMI Type A; 2 years warranty', 'https://api.bestbuy.com/click/-/1028613/pdp'),
(5, 'DP2DVIMM10', 'Monitor & Video Cables', 'COMPUTERS', 'StarTech.com', 65030832182, 1049014, '46.99', '33.99', 'DisplayPort Male Digital Audio/Video - DVI-D Male Video - 10ft', 'https://api.bestbuy.com/click/-/1049014/pdp'),
(6, '920-002478', 'Wired & USB Keyboards', 'COMPUTERS', 'Logitech', 97855065537, 1053557, '14.99', '14.99', 'Compatible with PC USB interface Spill-resistant design Adjustable tilt legs Plug-and-play', 'https://api.bestbuy.com/click/-/1053557/pdp'),
(7, 'CN622AM', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 887111103178, 1053736, '78.99', '78.99', 'Compatible with select HP Officejet Pro printers; cyan ink; yields up to 2,500 pages', 'https://api.bestbuy.com/click/-/1053736/pdp'),
(8, 'P516-001', 'Monitor & Video Cables', 'ACCESSORIES', 'Tripp Lite', 37332123602, 1067693, '19.55', '10.99', 'Compatible with Windows and Mac computers; HD D-Sub connectors; double shielded technology; molded; 1\' length', 'https://api.bestbuy.com/click/-/1067693/pdp'),
(9, '920-002565', 'Keyboard & Mouse Combos', 'COMPUTERS', 'Logitech', 97855065476, 1083236, '19.99', '19.99', 'Compatible with PC USB interface Spill-resistant design Adjustable tilt legs Up to 1000 dpi resolution Slim profile Plug-and-play', 'https://api.bestbuy.com/click/-/1083236/pdp'),
(10, 'GW2765HT', 'Gaming Monitors', 'COMPUTERS', 'BenQ', 840046030742, 1097389, '279.99', '279.99', 'BENQ 27\" LED HD Monitor: 4 ms GTG response time; 20,000,000:1 DCR (Dynamic Contrast Ratio); 350 nits brightness; 2560 x 1440 maximum resolution; 178-degree horizontal and vertical viewing angles; VGA, DVI-DL, DisplayPort and HDMI inputs; 2 speakers', 'https://api.bestbuy.com/click/-/1097389/pdp'),
(11, 'LGS116', 'Network Switches', 'COMPUTERS', 'Linksys', 745883598793, 1099282, '89.99', '89.99', 'Wired; 10/100/1000 Ethernet; 16 ports; plug-and-play; QoS traffic prioritization', 'https://api.bestbuy.com/click/-/1099282/pdp'),
(12, 'MRTR2LL/A', 'Mini PCs', 'COMPUTERS', 'Apple', 190198755247, 1107177, '799.99', '799.99', 'New Mac mini. Now with eighth-generation 6-core and quad-core processors. Faster 2666MHz DDR4 memory. And blazing-fast all-flash storage. It\'s a huge update to Mac mini, ever', 'https://api.bestbuy.com/click/-/1107177/pdp'),
(13, 'GS108PE-300NAS', 'Network Switches', 'COMPUTERS', 'NETGEAR', 606449103458, 1126092, '99.99', '99.99', 'Wired; 10/100/1000 Ethernet; network monitoring; loop prevention; up to 2000 Mbps per port; plug-and-play easy setup', 'https://api.bestbuy.com/click/-/1126092/pdp'),
(14, '9197B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803238068, 1134008, '19.99', '19.99', 'Compatible with select Canon printers; magenta ink; high-yield design; high-density, pigment-based ink; produces highlighter- and smudge-resistant prints', 'https://api.bestbuy.com/click/-/1134008/pdp'),
(15, '9198B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803238082, 1134071, '19.99', '19.99', 'Compatible with select Canon printers; yellow ink; high-yield design; high-density, pigment-based ink; produces highlighter- and smudge-resistant prints', 'https://api.bestbuy.com/click/-/1134071/pdp'),
(16, '9183B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803238013, 1134099, '36.99', '36.99', 'Compatible with select Canon printers; black ink; high-yield design; high-density ink; pigment-based ink; produces text that is highlighter and smudge resistant', 'https://api.bestbuy.com/click/-/1134099/pdp'),
(17, 'CH561WN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 884962983607, 1146635, '20.99', '20.99', 'Compatible with select HP Deskjet, ENVY and OfficeJet printers; black ink; yields approximately 190 pages', 'https://api.bestbuy.com/click/-/1146635/pdp'),
(18, 'CH562WN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 884962983614, 1146671, '28.99', '28.99', 'Compatible with HP Deskjet printer models 3000, 3050 and 3050A; tricolor ink cartridge; yields approximately 165 pages', 'https://api.bestbuy.com/click/-/1146671/pdp'),
(19, 'CE322A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884420854524, 1147158, '74.99', '74.99', 'Compatible with HP LaserJet Pro CM1415 Color MFP series printers; yellow ink; smart printing technology', 'https://api.bestbuy.com/click/-/1147158/pdp'),
(20, '910-001601', 'Wired & USB Mice', 'COMPUTERS', 'Logitech', 97855063953, 1147528, '9.99', '9.99', 'High-definition optical technology 3-button design with wheelAmbidextrous design USB connectivity', 'https://api.bestbuy.com/click/-/1147528/pdp'),
(21, 'BR700G', 'Battery Backup (UPS)', 'ACCESSORIES', 'APC', 731304266792, 1182342, '116.99', '116.99', '700VA/20W power handling ability; 354 joules of protection; 120V outlets; boost and trim automatic voltage regulation (AVR); LCD graphics display; disconnected battery notification; 6\' cord', 'https://api.bestbuy.com/click/-/1182342/pdp'),
(22, 'TN-450', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502626770, 1183687, '55.99', '55.99', 'Black toner cartridge for select Brother laser printers; ISO/IEC 19752 certified', 'https://api.bestbuy.com/click/-/1183687/pdp'),
(23, 'TN-420', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502626763, 1183941, '39.99', '39.99', 'Black toner cartridge for select Brother laser printers; ISO/IEC 19752 certified', 'https://api.bestbuy.com/click/-/1183941/pdp'),
(24, 'CE262A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884420186854, 1199872, '320.99', '320.99', 'Compatible with select HP Color LaserJet printers; yellow toner; up to 11,000-page yield', 'https://api.bestbuy.com/click/-/1199872/pdp'),
(25, 'CE263A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884420186861, 1199881, '320.99', '320.99', 'Compatible with select HP Color LaserJet printers; magenta toner; up to 11,000-page yield', 'https://api.bestbuy.com/click/-/1199881/pdp'),
(26, 'CE260A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884420186816, 1199909, '175.99', '175.99', 'Compatible with select HP Color LaserJet printers; black toner; up to 8,500-page yield', 'https://api.bestbuy.com/click/-/1199909/pdp'),
(27, 'CE261A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884420186847, 1199927, '320.99', '320.99', 'Compatible with select HP Color LaserJet printers; cyan toner; up to 11,000-page yield', 'https://api.bestbuy.com/click/-/1199927/pdp'),
(28, '980-000354', 'Computer Speakers', 'COMPUTERS', 'Logitech', 97855060570, 1200842, '49.99', '49.99', 'Compatible with PC, Mac and select devices; 30W RMS system power; 2 satellite speakers with 2\" concave-dome drivers; subwoofer with 4\" down-firing-dome driver; stereo RCA and two 3.5mm auxiliary inputs', 'https://api.bestbuy.com/click/-/1200842/pdp'),
(29, 'WNDR3400-100NAS', 'Wireless Routers', 'COMPUTERS', 'NETGEAR', 606449071146, 1208844, '49.99', '49.99', 'Dual-Band Wireless-NSpeeds up to 600 MbpsNETGEAR genie&#174; appBuilt-in Ethernet and USB connectionsQoS technology', 'https://api.bestbuy.com/click/-/1208844/pdp'),
(30, 'T127520-S', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343876200, 1212729, '59.99', '59.99', 'Yellow, cyan and magenta ink cartridges compatible with Epson WorkForce 630, 633 and 635 printers; for use on plain or glossy photo paper', 'https://api.bestbuy.com/click/-/1212729/pdp'),
(31, 'T127120-S', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343876163, 1212792, '31.99', '31.99', 'Black ink cartridge compatible with Epson WorkForce 630, 633 and 635 printers; for use on plain or glossy photo paper', 'https://api.bestbuy.com/click/-/1212792/pdp'),
(32, '4546B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803124279, 1214381, '16.99', '16.99', 'Compatible with select Canon PIXMA Printers', 'https://api.bestbuy.com/click/-/1214381/pdp'),
(33, '4530B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803124262, 1214469, '18.99', '18.99', 'Black - Inkjet', 'https://api.bestbuy.com/click/-/1214469/pdp'),
(34, '4550B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803124323, 1214487, '16.99', '16.99', 'Compatible with select Canon PIXMA printers', 'https://api.bestbuy.com/click/-/1214487/pdp'),
(35, '4530B008', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 660685023147, 1214909, '62.99', '62.99', 'Compatible with select Canon printers; black, cyan, magenta and yellow ink cartridges; ChromaLife100+ technology', 'https://api.bestbuy.com/click/-/1214909/pdp'),
(36, '980-000402', 'Gaming Speakers', 'COMPUTERS', 'Logitech', 97855066466, 1231979, '119.99', '119.99', 'Compatible with computers, music players, TVs, DVDs and select gaming systems; 330W total system power; 2.5\" front-firing sealed drivers; 7\" bass-reflex subwoofer; auxiliary and RCA inputs; headphone output', 'https://api.bestbuy.com/click/-/1231979/pdp'),
(37, 'DP2HDMI', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030830799, 1243991, '29.99', '26.99', 'Connects 19 pin HDMI Type A to 20 pin DisplayPort; 0.8\' length; 2 years warranty', 'https://api.bestbuy.com/click/-/1243991/pdp'),
(38, 'CR259FN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 885631805961, 1260042, '45.99', '45.99', 'Combo pack contains 1 black ink cartridge and 1 tricolor ink cartridge', 'https://api.bestbuy.com/click/-/1260042/pdp'),
(39, '940-000110', 'PC Gaming Controllers', 'COMPUTERS', 'Logitech', 97855066954, 1260591, '19.99', '14.99', 'Cable - USB - PC', 'https://api.bestbuy.com/click/-/1260591/pdp'),
(40, 'DP2VGA2', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030836883, 1260689, '35.99', '35.99', 'Connects 20 pin DisplayPort to 15 pin HD D-Sub (HD-15); 1.2\' length; latched; 2 years warranty', 'https://api.bestbuy.com/click/-/1260689/pdp'),
(41, '910-001799', 'Trackballs', 'COMPUTERS', 'Logitech', 97855070098, 1260761, '29.99', '29.99', 'Optical technology; sculpted shape; scroll wheel; 4 buttons; wireless design', 'https://api.bestbuy.com/click/-/1260761/pdp'),
(42, '920-002555', 'Keyboard & Mouse Combos', 'COMPUTERS', 'Logitech', 97855066701, 1261402, '49.99', '49.99', 'Compatible with Windows-based PCs; 2.4GHz wireless technology; Comfort Wave technology; 128-bit AES encryption; palm rest; laser mouse', 'https://api.bestbuy.com/click/-/1261402/pdp'),
(43, '920-002359', 'Wireless & Bluetooth Keyboards', 'COMPUTERS', 'Logitech', 97855065353, 1261466, '59.99', '59.99', 'Compatible with Windows2.4GHz wireless technologyPerfectStroke key systemBacklit keys with hand proximity detectionSleek and compact design', 'https://api.bestbuy.com/click/-/1261466/pdp'),
(44, 'RVF-00052', 'Ergonomic Mice', 'COMPUTERS', 'Microsoft', 885370428216, 1261563, '59.99', '59.99', 'BlueTrack technology; nano transceiver; touch-to-scroll; ergonomic design', 'https://api.bestbuy.com/click/-/1261563/pdp'),
(45, 'HD2VGAA2', 'USB Cables & Adapters', 'ACCESSORIES', 'StarTech.com', 65030850995, 1285205, '45.99', '32.99', 'Connects HDMI to VGA; up to 1920 x 1200 external resolution; 2 years warranty', 'https://api.bestbuy.com/click/-/1285205/pdp'),
(46, '920-002836', 'Keyboard & Mouse Combos', 'COMPUTERS', 'Logitech', 97855068590, 1294039, '27.99', '27.99', 'Compatible with Windows-based PCs2.4GHz wireless technology11 hot keysWireless optical mouse', 'https://api.bestbuy.com/click/-/1294039/pdp'),
(47, '910-001675', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855066237, 1297054, '17.99', '17.99', 'Laser tracking Plug-and-Forget nano receiver Logitech advanced 2.4GHz wireless connectivity USB connectivity', 'https://api.bestbuy.com/click/-/1297054/pdp'),
(48, 'DS-70U', 'LCD Monitors', 'COMPUTERS', 'DoubleSight', 816220000757, 1297773, '113.99', '113.99', '30 ms response time; 350:1 contrast ratio; 375 cd/m&#178; brightness; 800 x 400 resolution; 130&#176; horizontal and 90&#176; vertical viewing angles; USB port', 'https://api.bestbuy.com/click/-/1297773/pdp'),
(49, '8036701', 'Lap Desks', 'ACCESSORIES', 'Fellowes', 43859504602, 1298405, '34.99', '34.99', 'Compatible with most laptops up to 17\" or 10 lbs.; in-line copyholder; cooling vents; stabilizing front edge; 360&#174;', 'https://api.bestbuy.com/click/-/1298405/pdp'),
(50, '910-001935', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855068538, 1325119, '29.99', '29.99', 'Laser technology Unifying receiver Wireless USB interface', 'https://api.bestbuy.com/click/-/1325119/pdp'),
(51, 'NM-RU586-9', 'Laptop Batteries', 'PHOTO/COMMODITIES', 'DENAQ', 814352015403, 1342203, '55.99', '55.99', 'Compatible with select Dell Inspiron laptops; 11.1V of power; 6600 mAh capacity; overcharge protection; smart technology; no memory effect', 'https://api.bestbuy.com/click/-/1342203/pdp'),
(52, 'DQ-PA165002-5517', 'Laptop Chargers & Adapters', 'PHOTO/COMMODITIES', 'DENAQ', 814352012235, 1342212, '20.99', '20.99', 'Compatible with select Acer laptops; charges your laptop; safety fuses; smart technology', 'https://api.bestbuy.com/click/-/1342212/pdp'),
(53, 'DP2DVI2', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030836869, 1363436, '18.99', '14.99', 'Connects 20 pin DisplayPort to 29 pin combined DVI; 2 years warranty', 'https://api.bestbuy.com/click/-/1363436/pdp'),
(54, 'NM-MU06055-6', 'Laptop Batteries', 'PHOTO/COMMODITIES', 'DENAQ', 814352015526, 1372359, '39.99', '39.99', 'Compatible with select HP Envy, G-series, Pavilion and Presario laptops; 10.8V of power; 4400 mAh capacity; overcharge protection; smart technology; no memory effect', 'https://api.bestbuy.com/click/-/1372359/pdp'),
(55, 'MESS1173', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Mobile Edge', 871981005281, 1407246, '29.99', '29.99', 'Sleeve - 13.75\" x 17.5\" x 2.2\" - Neoprene - Black', 'https://api.bestbuy.com/click/-/1407246/pdp'),
(56, '55937-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202565694, 1421316, '54.99', '45.99', 'Fits most laptops with up to a 15.6\" display; 1680 ballistic fabric materials; zippered mesh compartment; shoulder straps; Cool Flow back padding', 'https://api.bestbuy.com/click/-/1421316/pdp'),
(57, 'PLS14BLACK', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854168397, 1430787, '32.99', '30.99', 'Black', 'https://api.bestbuy.com/click/-/1430787/pdp'),
(58, '920-004536', 'Keyboard & Mouse Combos', 'COMPUTERS', 'Logitech', 97855089816, 1440638, '24.99', '24.99', 'PC and Chrome compatible up to a 32.8\' wireless range 9 function keys Multimedia buttons Numeric keypad Mouse scroll wheel On/off switches', 'https://api.bestbuy.com/click/-/1440638/pdp'),
(59, 'P-FD32GTBAT4-GE', 'USB Flash Drives', 'DTS', 'PNY', 751492581613, 1498843, '12.99', '6.99', 'Data transfer rates up to 115MB/sec.For PC, MacSliding collar with capless designIntegrated loop', 'https://api.bestbuy.com/click/-/1498843/pdp'),
(60, '71978-B901', 'Tablet Cases, Covers & Keyboard Folios', 'COMPUTERS', 'Speck', 848709015082, 1505097, '34.99', '25.99', 'SPECK StyleFolio Case for Apple iPad mini, iPad mini 2 and iPad mini 3: Compatible with Apple iPad mini, iPad mini 2 and iPad mini 3; full-perimeter outer shell with microfiber inner lining; vegan-leather cover; adjustable stand; locking clasp', 'https://api.bestbuy.com/click/-/1505097/pdp'),
(61, '71978-B565', 'Tablet Cases, Covers & Keyboard Folios', 'COMPUTERS', 'Speck', 848709015075, 1505193, '34.99', '20.99', 'SPECK StyleFolio Case for Apple iPad mini, iPad mini 2 and iPad mini 3: Compatible with Apple iPad mini, iPad mini 2 and iPad mini 3; full-perimeter outer shell with microfiber inner lining; vegan-leather cover; adjustable stand; locking clasp', 'https://api.bestbuy.com/click/-/1505193/pdp'),
(62, 'TN315BK', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625414, 1508914, '102.99', '102.99', 'Compatible with select Brother printers, including HL-4150CDN, HL-4570CDW, HL-4570CDWT and MFC-9460CDN models; black toner; yields approximately 6,000 pages', 'https://api.bestbuy.com/click/-/1508914/pdp'),
(63, 'TN310C', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625384, 1508969, '64.99', '64.99', 'Compatible with select Brother printers, including HL-4150CDN, HL-4570CDW, HL-4570CDWT and MFC-9460CDN models; cyan toner; yields approximately 1,500 pages', 'https://api.bestbuy.com/click/-/1508969/pdp'),
(64, 'TN315Y', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625445, 1509146, '112.99', '112.99', 'Compatible with select Brother printers, including HL-4150CDN, HL-4570CDW, HL-4570CDWT and MFC-9460CDN models; yellow toner; yields approximately 3,500 pages', 'https://api.bestbuy.com/click/-/1509146/pdp'),
(65, 'TN310M', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625391, 1509395, '64.99', '64.99', 'Compatible with select Brother printers, including HL-4150CDN, HL-4570CDW, HL-4570CDWT and MFC-9460CDN models; magenta toner; yields approximately 1,500 pages', 'https://api.bestbuy.com/click/-/1509395/pdp'),
(66, 'TN310Y', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625407, 1510036, '64.99', '64.99', 'Yields up to 1,500 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1510036/pdp'),
(67, 'TN315C', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625421, 1510285, '112.99', '112.99', 'Compatible with select Brother printers, including HL-4150CDN, HL-4570CDW, HL-4570CDWT and MFC-9460CDN models; cyan toner; yields approximately 3,500 pages', 'https://api.bestbuy.com/click/-/1510285/pdp'),
(68, 'TN310BK', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625377, 1510828, '59.99', '59.99', 'Yields up to 2,500 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1510828/pdp'),
(69, 'TN315M', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502625438, 1510855, '112.49', '112.49', 'Yields up to 3,500 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1510855/pdp'),
(70, 'ROD NTUSB', 'Computer Microphones', 'AUDIO', 'RØDE', 698813003969, 1535163, '169.99', '169.99', 'RODE USB Microphone: Compatible with most mainstream recording apps on Windows and Mac computers and Apple iPad; for recording singing, musical performances and spoken applications; zero-latency 3.5mm jack; includes pop filter and tripod stand', 'https://api.bestbuy.com/click/-/1535163/pdp'),
(71, 'R101', 'E-Readers & Accessories', 'COMPUTERS', 'Velocity Micro', 877935002122, 1552174, '79.99', '79.99', '7\" color TFT touch screen; supports ePub, PDF, TXT, PDB, HTML, MP3, WMA, AAC, WAV, H.264, MPEG-4, JPEG, GIF, PNG and BMP formats; 256MB built-in memory; microSD card slot; 802.11b/g wireless connectivity', 'https://api.bestbuy.com/click/-/1552174/pdp'),
(72, 'NS-PG95503', 'Tablet A/V Adapters', 'ACCESSORIES', 'Insignia™', 600603179303, 1577417, '29.99', '29.99', 'HDMI and VGA connectors; supports up to 1920 x 1080 @ 60Hz resolution; 1350 ohms of conductor resistance; fully shielded with 360&#176; enclosed metal shell', 'https://api.bestbuy.com/click/-/1577417/pdp'),
(73, '0S03920', 'Internal Hard Drives', 'COMPUTERS', 'HGST', 705487198447, 1578004, '89.99', '89.99', 'Serial ATA interface; data transfer rates up to 998MB/sec.; compatible with PC and Mac', 'https://api.bestbuy.com/click/-/1578004/pdp'),
(74, 'LC-1013PKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502636052, 1587228, '27.99', '24.99', 'Compatible with select Brother printers; cyan, magenta and yellow ink cartridges', 'https://api.bestbuy.com/click/-/1587228/pdp'),
(75, 'LC-101BKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502635833, 1587661, '14.99', '14.99', 'Compatible with Brother DCPJ152W, MFCJ245, MFCJ285DW, MFCJ450DW, MFCJ470DW, MFCJ475DW, MFCJ650DW, MFCJ870DW and MFCJ875DW model printers; black ink', 'https://api.bestbuy.com/click/-/1587661/pdp'),
(76, 'LC-1033PKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502634362, 1587689, '41.99', '36.99', 'Compatible with select Brother printers; cyan, magenta and yellow ink cartridges', 'https://api.bestbuy.com/click/-/1587689/pdp'),
(77, 'DL221CL', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502634904, 1606245, '129.99', '129.99', 'Yields up to 15,000 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1606245/pdp'),
(78, 'TN225Y', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502634898, 1606254, '76.99', '76.99', 'Yields up to 2,200 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1606254/pdp'),
(79, 'TN225M', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502634881, 1606263, '76.99', '76.99', 'Yields up to 2,200 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1606263/pdp'),
(80, 'TN225C', 'Printer Toner', 'PHOTO/COMMODITIES', 'Brother', 12502634874, 1606272, '76.99', '76.99', 'Yields up to 2,200 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/1606272/pdp'),
(81, 'VW22ATCSM', 'All Monitors', 'COMPUTERS', 'ASUS', 886227152780, 1634496, '149.99', '134.99', '5 ms response time; 50000000:1 contrast ratio; 250 cd/m&#178; brightness; 1680x1050 resolution; 170&#176; horizontal and 160&#176; vertical viewing angles; D-Sub and  DVI-D input', 'https://api.bestbuy.com/click/-/1634496/pdp'),
(82, 'U022-010', 'USB Cables & Adapters', 'ACCESSORIES', 'Tripp Lite', 37332100023, 1654453, '7.03', '7.03', 'Connects devices with compatible USB 2.0 connectors and interfaces; double shielded technology; data transfer rates up to 480 Mbps; molded; 10\' length', 'https://api.bestbuy.com/click/-/1654453/pdp'),
(83, 'VE228H', 'All Monitors', 'COMPUTERS', 'ASUS', 610839326068, 1655189, '109.99', '109.99', '1000:1 contrast ratio; 250 cd/m&#178; brightness; 1920 x 1080 resolution; 170&#176; horizontal and 160&#176; vertical viewing angles; DVI-D with HDCP input; HDMI input', 'https://api.bestbuy.com/click/-/1655189/pdp'),
(84, 'CMY32GX3M4A1600C9', 'Desktop Memory', 'COMPUTERS', 'CORSAIR', 843591042222, 1655374, '189.99', '173.99', 'Designed for desktops; 32GB of memory; 1600MHz operating speed; enhances overclocking performance; anodized-aluminum heat spreaders', 'https://api.bestbuy.com/click/-/1655374/pdp'),
(85, 'CMY16GX3M2A1600C9', 'Desktop Memory', 'COMPUTERS', 'CORSAIR', 843591041881, 1655416, '99.99', '88.99', 'Designed for desktops; 16GB of memory; 1600MHz operating speed; enhances overclocking performance; anodized-aluminum heat spreaders', 'https://api.bestbuy.com/click/-/1655416/pdp'),
(86, '70335', 'PC Game Downloads', 'INTERACTIVE SOFTWARE', 'Electronic Arts', 400016903676, 1690367, '9.99', '9.99', 'Dominate the road on a global stage', 'https://api.bestbuy.com/click/-/1690367/pdp'),
(87, '41990', 'Graphic Design Software', 'COMPUTER SOFTWARE', 'Nova', 727298419900, 1713749, '39.99', '39.99', 'From banners to brochures, create the prints of your dreams', 'https://api.bestbuy.com/click/-/1713749/pdp'),
(88, 'MAC681800F001', 'Maintenance Software', 'COMPUTER SOFTWARE', 'Macware', 831666554039, 1715892, '29.99', '29.99', 'Restore your Mac to the performance-levels that meet your expectations', 'https://api.bestbuy.com/click/-/1715892/pdp'),
(89, '920-002912', 'Wireless & Bluetooth Keyboards', 'COMPUTERS', 'Logitech', 97855071613, 1722039, '49.99', '49.99', 'Wireless - RF - Black - USB - English (Canada) - Computer', 'https://api.bestbuy.com/click/-/1722039/pdp'),
(90, 'DQ-PA-3E-7450', 'Laptop Chargers & Adapters', 'PHOTO/COMMODITIES', 'DENAQ', 814352015663, 1746184, '25.99', '25.99', 'Compatible with select Dell Inspiron, Latitude, Precision, Studio, Vostro and XPS laptops; 4.6-amp output; 19.5V power rating; 7.4mm to 5mm tip size (outer x inner); safety fuses; smart technology', 'https://api.bestbuy.com/click/-/1746184/pdp'),
(91, 'P502-006', 'Monitor & Video Cables', 'ACCESSORIES', 'Tripp Lite', 37332012319, 1746569, '15.45', '15.45', 'Compatible with most VGA peripherals; HD D-Sub connectors; foil shielding with braid; molded; 6\' length', 'https://api.bestbuy.com/click/-/1746569/pdp'),
(92, 'R7000-100NAS', 'Wireless Routers', 'COMPUTERS', 'NETGEAR', 606449099812, 1754208, '159.99', '159.99', 'Dual-Band Wireless-ACSpeeds up to 1900 MbpsNETGEAR genie&#174; appBeamforming technologyQoS technology', 'https://api.bestbuy.com/click/-/1754208/pdp'),
(93, '73037', 'PC Games', 'INTERACTIVE SOFTWARE', 'Electronic Arts', 14633730371, 1762763, '39.99', '39.99', 'Get ready to create emotionally rich storylines', 'https://api.bestbuy.com/click/-/1762763/pdp'),
(94, 'WD10JFCX', 'Internal Hard Drives', 'COMPUTERS', 'WD', 718037804149, 1765078, '68.99', '68.99', 'WD Red 1TB Internal SATA NAS Hard Drive (OEM/Bare Drive): Serial ATA interface; shock-resistant; SMART Command Transport support; power management support; command completion; data transfer rates up to 6 Gbps; 16MB cache buffer', 'https://api.bestbuy.com/click/-/1765078/pdp'),
(95, 'AP70NS50', 'External DVD Drives', 'COMPUTERS', 'LG', 58231310863, 1802033, '59.99', '44.99', 'USB 2.0 interface; slim, portable design; up to 6x DVD+R DL and DVD-R DL, 8x DVD+R and DVD-R write speeds; up to 6x DVD+RW and DVD-RW rewrite speeds; 24x24x24 CD-RW', 'https://api.bestbuy.com/click/-/1802033/pdp'),
(96, 'GMF-00030', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Microsoft', 885370202175, 1805526, '19.99', '18.99', 'BlueTrack Technology on/off switch Battery status indicator Ambidextrous design Plug-and-go nano receiver', 'https://api.bestbuy.com/click/-/1805526/pdp'),
(97, 'L3V-00001', 'Wireless & Bluetooth Keyboards', 'COMPUTERS', 'Microsoft', 885370595895, 1818015, '59.99', '59.99', 'Compatible with PC 2.4GHz USB transceiver Tilt-and-scroll wheel Windows Touch tab Windows 8 shortcut keys Ccomfort-curve keys Split space bar Detachable palm rest', 'https://api.bestbuy.com/click/-/1818015/pdp'),
(98, 'L5V-00001', 'Wireless & Bluetooth Keyboards', 'COMPUTERS', 'Microsoft', 885370598711, 1818024, '129.99', '129.99', 'BlueTrack mouse technology 2.4GHz wireless USB receiver Split keyboard layout Reverse keyboard tilt Natural Arc key layout Domed keyboard design Separate numeric keypad Media keys', 'https://api.bestbuy.com/click/-/1818024/pdp'),
(99, 'CARTRIDGE 131 BLACK', 'Printer Toner', 'PHOTO/COMMODITIES', 'Canon', 13803151497, 1848012, '71.99', '71.99', 'Compatible with Canon ImageClass MF8280Cw and ImageClass LBP7110Cw printers; black ink; 1400-page yield', 'https://api.bestbuy.com/click/-/1848012/pdp'),
(100, 'CRG 137', 'Printer Toner', 'PHOTO/COMMODITIES', 'Canon', 13803242935, 1848021, '79.99', '79.99', 'Compatible with Canon ImageClass MF212w, MF216n, MF227dw and MF229dw printers; black ink toner; 2400-page yield', 'https://api.bestbuy.com/click/-/1848021/pdp'),
(101, 'CH564WN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 884962983638, 1853055, '43.99', '43.99', 'Yields up to 330 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/1853055/pdp'),
(102, 'CH563WN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 884962983621, 1853073, '42.99', '42.99', 'Yields up to 480 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/1853073/pdp'),
(103, 'P-FD64GTBAT4-GE', 'USB Flash Drives', 'DTS', 'PNY', 751492581620, 1876003, '19.99', '10.99', 'For PC, MacSliding collar with capless designIntegrated loop', 'https://api.bestbuy.com/click/-/1876003/pdp'),
(104, 'DISPLPORT10L', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030827829, 1900071, '20.99', '17.99', 'Connects your computer\'s DisplayPort interface to a DisplayPort input; aluminum mylar foil with braid shielding; nickel plateds; 9.8\' length', 'https://api.bestbuy.com/click/-/1900071/pdp'),
(105, '3201383', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Thule', 85854221924, 1902069, '129.99', '129.99', 'Thule Crossover 32L Backpack is made of water-resistant fabrics and zippers combined to create a durable bag made of dobby nylon. Dedicated electronics protection plus plenty of bulk storage and organization pockets with handle and shoulder strap for comf', 'https://api.bestbuy.com/click/-/1902069/pdp'),
(106, 'TSS65904UUS', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Targus', 92636297510, 1902302, '27.99', '17.99', 'Fits most laptops with up to a 15.6\" display; dedicated laptop compartment; front zippered pocket; polyester material; smooth interior lining; textured finish; contrasting accents', 'https://api.bestbuy.com/click/-/1902302/pdp'),
(107, 'TSS63204US', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Targus', 92636293192, 1902311, '39.99', '27.99', 'Fits most laptops with up to a 15.6\" display; dedicated laptop compartment; front zippered pocket; polyester material; smooth interior lining; textured finish; contrasting accents', 'https://api.bestbuy.com/click/-/1902311/pdp'),
(108, '41022', 'Home & Landscape Design', 'COMPUTER SOFTWARE', 'Nova', 727298410228, 1915073, '39.99', '39.99', 'The home of your dreams is just a few clicks away', 'https://api.bestbuy.com/click/-/1915073/pdp'),
(109, '140000', 'Computer Microphones', 'AUDIO', 'Samson', 809164012733, 1950242, '69.99', '69.99', '20 Hz to 20 kHz - Wired - Condenser - Desktop - USB', 'https://api.bestbuy.com/click/-/1950242/pdp'),
(110, 'VE247H', 'All Monitors', 'COMPUTERS', 'ASUS', 610839331574, 1965077, '136.99', '136.99', 'Adjustable Display Angle - 1920 x 1080 - 16.7 Million Colors - 300 Nit - 10,000,000:1 - Speakers - DVI - HDMI - VGA - Black - RoHS, WEEE', 'https://api.bestbuy.com/click/-/1965077/pdp'),
(111, 'GP60NB50', 'External DVD Drives', 'COMPUTERS', 'LG', 719192624825, 1970008, '29.99', '29.99', 'DVD-RAM/&#177;R/&#177;RW Support - 24x CD Read/24x CD Write/24x CD Rewrite - 8x DVD Read/8x DVD Write/8x DVD Rewrite - Double-layer Media Supported - USB 2.0 - Slimline', 'https://api.bestbuy.com/click/-/1970008/pdp'),
(112, 'CE259A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884962419069, 1972817, '216.99', '216.99', 'Compatible with HP Color LaserJet CP1515n, CP1518ni, CP1215 and CM1312 MFP model printers; cyan/magenta/yellow toner; up to 1,400-page yield; HP Smart technology', 'https://api.bestbuy.com/click/-/1972817/pdp'),
(113, 'CN684WN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111234295, 1982034, '31.99', '31.99', 'Compatible with select HP Deskjet, PhotoSmart and OfficeJet printers; black ink; 1 cartridge', 'https://api.bestbuy.com/click/-/1982034/pdp'),
(114, 'JUE130', 'USB Wi-Fi Adapters', 'ACCESSORIES', 'j5create', 847626000164, 2001047, '24.99', '24.99', 'Compatible with most PC, Mac and Linux computers with an available USB 3.0 port; 10/100/1000 Gigabit Ethernet connectivity; aluminum construction; USB-powered; plug-and-play design', 'https://api.bestbuy.com/click/-/2001047/pdp'),
(115, 'EPSON CYAN INK T786220-S', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343911598, 2008119, '22.99', '21.99', 'Yields up to 800 pagesCompatible with select Epson Printers', 'https://api.bestbuy.com/click/-/2008119/pdp'),
(116, 'BBY-PVJVWE', 'All Monitors', 'COMPUTERS', 'Dell', 884116153061, 2073028, '299.99', '299.99', 'DELL UltraSharp U2415 24\" IPS LED HD Monitor: 6 ms response time; 2,000,000:1 dynamic contrast ratio; 300 nits brightness; 1920 x 1200 resolution; 178&#176; horizontal and vertical viewing angles; HDMI and DisplayPort inputs', 'https://api.bestbuy.com/click/-/2073028/pdp'),
(117, 'TLWA850RE', 'Wi-Fi Extenders', 'COMPUTERS', 'TP-Link', 845973070687, 2080012, '19.99', '19.99', 'TP-LINK Wireless N300 Wi-Fi Range Extender with Ethernet Port: Compatible with 802.11b/g/n wireless standards; up to 300 Mbps; 64-/128-/152-bit WEP encryption; WPA-PAK/WPA2-PSK encryption; plug-and-play', 'https://api.bestbuy.com/click/-/2080012/pdp'),
(118, 'TLPA4010KIT', 'Powerline Adapters', 'COMPUTERS', 'TP-Link', 845973032029, 2080136, '39.99', '39.99', 'Powerline AV600 Nano Adapter Starter Kit', 'https://api.bestbuy.com/click/-/2080136/pdp'),
(119, 'TLSG105E', 'Network Switches', 'COMPUTERS', 'TP-Link', 845973022037, 2080346, '24.99', '24.99', 'TP-LINK 5-Port 10/100/1000 Mbps Gigabit Smart Ethernet Metal Switch: Provides simple network management for small or medium business networks with a port-based priority system; 10/100/1000 Mbps speeds', 'https://api.bestbuy.com/click/-/2080346/pdp'),
(120, 'HON787800F221', 'Utilities Software', 'COMPUTER SOFTWARE', 'VIDBOX', 882960367832, 2131007, '69.99', '59.99', 'Analog video to digital format with one click; RCA and S-Video connection; compatible with Mac OS X 10.6 or higher; integration with iMovie; sync and share capabilities', 'https://api.bestbuy.com/click/-/2131007/pdp'),
(121, 'BRACKET', 'Hard Drive Cables & Accessories', 'COMPUTERS', 'StarTech.com', 65030777155, 2133038, '5.00', '5.00', 'Durable all-metal construction; mount a 3.5\" hard drive in a 5.25\" drive bay', 'https://api.bestbuy.com/click/-/2133038/pdp'),
(122, 'CE314A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884962223352, 2148109, '89.99', '89.99', 'HP 126A Image Drum: Compatible with select HP printers; yields up to 7,000 color pages and up to 14,000 black-and-white pages', 'https://api.bestbuy.com/click/-/2148109/pdp'),
(123, 'CE255XD', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 885631277102, 2173171, '450.99', '450.99', 'Yields up to 25,000 pages total; 12,500 pages per cartridgeCompatible with select HP LaserJet printers', 'https://api.bestbuy.com/click/-/2173171/pdp'),
(124, 'H4P40AA#ABA', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'HP', 888182023778, 2269108, '31.99', '19.99', 'Compatible with HP 15, Pavilion 15, Pavilion TouchSmart 15 and Pavilion x360; faux fur material; water resistant', 'https://api.bestbuy.com/click/-/2269108/pdp'),
(125, 'WEBROOT SCRE ANWHRE AV 3U', 'Antivirus Software', 'COMPUTER SOFTWARE', 'Webroot', 400022713528, 2271352, '39.99', '39.99', 'Take advantage of all the great security features included with your protection', 'https://api.bestbuy.com/click/-/2271352/pdp'),
(126, 'WBRT SCRE ANWHRE IS 3U', 'Internet Security', 'COMPUTER SOFTWARE', 'Webroot', 400022720090, 2272009, '49.99', '49.99', 'Cloud-based protection from online threats for all your devices', 'https://api.bestbuy.com/click/-/2272009/pdp'),
(127, 'WBRT SCRE ANYWHRE CMPLTE 5U', 'Antivirus Software', 'COMPUTER SOFTWARE', 'Webroot', 400022720182, 2272018, '79.99', '79.99', 'Powerful protection from online threats', 'https://api.bestbuy.com/click/-/2272018/pdp'),
(128, 'WBRT SCRE ANYWHR CMPTE 5U 2YR', 'Internet Security', 'COMPUTER SOFTWARE', 'Webroot', 400022720274, 2272027, '99.99', '99.99', 'Powerful protection from online threats', 'https://api.bestbuy.com/click/-/2272027/pdp'),
(129, 'JGS524PE100NAS', 'Network Switches', 'COMPUTERS', 'NETGEAR', 606449098990, 2297059, '357.99', '357.99', 'Wired; lets you connect up to 24 devices to your network; Gigabit speed; 12 PoE ports; QoS management; desktop and rack-mount options', 'https://api.bestbuy.com/click/-/2297059/pdp'),
(130, 'VM4R', 'Wired & USB Mice', 'COMPUTERS', 'Prestige', 852153014119, 2380297, '99.99', '95.99', '6 programmable buttons; scroll wheel; right-handed, vertical design; pointer speed control', 'https://api.bestbuy.com/click/-/2380297/pdp'),
(131, 'VM4S', 'Wired & USB Mice', 'COMPUTERS', 'Prestige', 852153014317, 2380358, '89.99', '89.99', '6 programmable buttons; scroll wheel; right-handed, vertical design; pointer speed control', 'https://api.bestbuy.com/click/-/2380358/pdp'),
(132, '8781098', 'Printer Ink', 'PHOTO/COMMODITIES', 'Kodak', 41778781098, 2383045, '34.99', '34.99', 'Compatible with ESP C110, C310, C315, C100 series, C300 series, ESP 2150, ESP 2170 and ESP 2100 series Kodak printers; 3-color ink and black ink', 'https://api.bestbuy.com/click/-/2383045/pdp'),
(133, 'NS-PPR5006', 'Multipurpose Paper', 'PHOTO/COMMODITIES', 'Insignia™', 600603185793, 2449084, '5.99', '5.99', 'Compatible with copiers, inkjet and laser printers and fax machines; 8.5\" x 11\" size; 500 sheets of paper; acid-free', 'https://api.bestbuy.com/click/-/2449084/pdp'),
(134, 'WD40EFRX', 'Internal Hard Drives', 'COMPUTERS', 'WD', 718037810058, 2452034, '149.99', '128.99', 'Serial ATA interface; Intellipower; low operating temperatures; data transfer rates up to 768MB/sec.', 'https://api.bestbuy.com/click/-/2452034/pdp'),
(135, 'EPSON YELLOW INK T277420-S', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343902459, 2454435, '10.99', '10.99', 'Yield up to 360 pagesCompatible with select Epson printers', 'https://api.bestbuy.com/click/-/2454435/pdp'),
(136, 'MSTP3MDPUGBK', 'Computer Accessories & Peripherals', 'ACCESSORIES', 'StarTech.com', 65030859110, 2464174, '93.99', '70.99', 'Compatible with Microsoft Surface Pro 4; supports PC resolutions up to 1920x1200 and HDTV resolutions up to 1080p; hard-wire your network connection; maximize portability; USB 3.0 Gigabit NIC', 'https://api.bestbuy.com/click/-/2464174/pdp'),
(137, 'APCRBC124', 'Surge Protectors & Power', 'ACCESSORIES', 'APC', 731304284383, 2467369, '64.99', '60.99', 'Compatible with select APC backup systems; lead acid chemistry; maintenance-free sealed leakproof design; up to 5 years of expected battery life', 'https://api.bestbuy.com/click/-/2467369/pdp'),
(138, 'CF283A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 886112397692, 2472926, '69.99', '69.99', 'Compatible with HP LaserJet Pro MFP M125 and M127 series printers; black toner; combined toner and imaging drum; up to 1,500-page yield', 'https://api.bestbuy.com/click/-/2472926/pdp'),
(139, 'CF350A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 886112939281, 2557399, '60.99', '60.99', 'Compatible with HP LaserJet Pro Color MFP M176 and M177 series printers; black toner; 1,300-page yield', 'https://api.bestbuy.com/click/-/2557399/pdp'),
(140, 'VS228TP', 'All Monitors', 'COMPUTERS', 'ASUS', 886227845279, 2572033, '99.99', '99.99', 'ASUS 21.5\" LED HD Monitor: 5 ms response time; 50,000,000:1 contrast ratio; 250 nits brightness; 1920 x 1080 resolution; 170-degree horizontal and 160-degree vertical viewing angles; DVI and VGA inputs; two 1W stereo speakers', 'https://api.bestbuy.com/click/-/2572033/pdp'),
(141, '910-002136', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855072801, 2577677, '17.99', '17.99', 'Advanced optical tracking Smooth scroll wheel with tilt navigation Contoured shape Textured rubber grips Smart sleep mode USB interface', 'https://api.bestbuy.com/click/-/2577677/pdp'),
(142, '960-000733', 'Webcams', 'PHOTO/COMMODITIES', 'Logitech', 97855074805, 2588445, '59.99', '59.99', 'Video capture up to 1920 x 1080 pixels Still image capture up to 2.0MP Integrated microphone USB connectivity', 'https://api.bestbuy.com/click/-/2588445/pdp'),
(143, '8281B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803215564, 2638041, '22.99', '22.99', 'Compatible with select Canon Printers', 'https://api.bestbuy.com/click/-/2638041/pdp'),
(144, '8279B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803215533, 2638069, '17.99', '17.99', 'Compatible with select Canon Printers', 'https://api.bestbuy.com/click/-/2638069/pdp'),
(145, 'MHK03LL/A', 'iMac', 'COMPUTERS', 'Apple', 194252160008, 2680446, '1099.99', '1099.99', 'iMac with Retina display available at Best Buy. Total package. Perfect fit.', 'https://api.bestbuy.com/click/-/2680446/pdp'),
(146, 'COMPANION 20', 'Computer Speakers', 'COMPUTERS', 'Bose', 17817551021, 2683194, '249.99', '249.99', 'Compatible with most desktops, laptops and tablets; TrueSpace&#174; stereo digital processing circuitry; advanced port design and driver; control pod with dual inputs', 'https://api.bestbuy.com/click/-/2683194/pdp'),
(147, 'GH24NSB0', 'Internal DVD Drives', 'COMPUTERS', 'LG', 58231310764, 2691169, '39.99', '39.99', 'SATA interface; buffer underrun protection; up to 24x DVD&#177;R write speeds; up to 48x CD-R write speeds', 'https://api.bestbuy.com/click/-/2691169/pdp'),
(148, 'RTN12D1', 'Wireless Routers', 'COMPUTERS', 'ASUS', 886227335503, 2693443, '50.99', '37.99', 'Up to 300 Mbps data transfer ratesDMZ portIPv6 supportAccess Point operational mode', 'https://api.bestbuy.com/click/-/2693443/pdp'),
(149, 'CB436D', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111124862, 2701716, '158.99', '158.99', 'Yields up to 2,000 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/2701716/pdp'),
(150, 'CB435D', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 886111124855, 2730169, '136.99', '136.99', 'Compatible with HP LaserJet 1000 series P1005 and P1006 printers; black toner; yields up to 1,500 standard pages per cartridge', 'https://api.bestbuy.com/click/-/2730169/pdp'),
(151, 'WN3000RP-100NAS', 'Wi-Fi Extenders', 'COMPUTERS', 'NETGEAR', 606449076936, 2733324, '54.99', '54.99', 'Compatible with most wireless (802.11b/g/n) routers; extends wireless network coverage; Ethernet port; mixed mode, WEP, WPA-PSK and WPA2-PSK security standards', 'https://api.bestbuy.com/click/-/2733324/pdp'),
(152, 'HDMIDVIMM6', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030809597, 2780053, '16.99', '16.99', 'HDMI to DVI-D jacks; 6\' length', 'https://api.bestbuy.com/click/-/2780053/pdp'),
(153, 'HGTV ULTIMATE', 'Home & Landscape Design', 'COMPUTER SOFTWARE', 'Nova', 400028174583, 2817458, '79.99', '79.99', 'Design the home of your dream', 'https://api.bestbuy.com/click/-/2817458/pdp'),
(154, '63004', 'Gaming Mouse Pads', 'COMPUTERS', 'SteelSeries', 813810010424, 2822575, '9.99', '9.99', '12.6\" x 11.22\"', 'https://api.bestbuy.com/click/-/2822575/pdp'),
(155, 'CMSA8GX3M2A1066C7', 'Laptop Memory', 'COMPUTERS', 'CORSAIR', 843591013857, 2824528, '34.99', '34.99', 'Designed for Apple&#174; iMac&#174;, MacBook&#174; and MacBook Pro; 8GB of DDR3 SoDIMM; 1.0GHz operating speed; improves performance and reliability', 'https://api.bestbuy.com/click/-/2824528/pdp'),
(156, 'MB168B', 'All Monitors', 'COMPUTERS', 'ASUS', 886227483631, 2882659, '145.99', '145.99', 'ASUS 15.6\" LED HD Monitor: 11 ms response time; 500:1 contrast ratio; 200 nits brightness; 1366 x 768 maximum resolution; 90-degree horizontal and 65-degree vertical viewing angles; USB-powered', 'https://api.bestbuy.com/click/-/2882659/pdp'),
(157, 'EPSON BLACK & COMBO PK  T20012', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343901407, 2888971, '39.99', '39.99', 'Compatible with select Epson WF and XP printers; cyan, magenta, yellow and black ink; DURABrite technology', 'https://api.bestbuy.com/click/-/2888971/pdp'),
(158, 'EPSON BLACK INK DUAL PK  T2001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343901063, 2888999, '25.99', '25.99', 'Compatible with select Epson WF and XP printers; black ink; DURABrite technology; smudge-, fade- and water-resistant formula; 2-pack', 'https://api.bestbuy.com/click/-/2888999/pdp'),
(159, 'VX2252MH', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907734218, 2893867, '109.99', '109.99', 'VIEWSONIC 21.5\" LED HD Monitor: 2 ms response time; 50,000,000:1 MEGA dynamic contrast ratio (1000:1 typical); 250 nits brightness; 1920 x 1080 resolution; 178-degree vertical and horizontal viewing angles; HDMI, DVI-D and RGB inputs; two 2W speakers', 'https://api.bestbuy.com/click/-/2893867/pdp'),
(160, 'VX2452MH', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907734416, 2893912, '129.99', '129.99', 'VIEWSONIC 23.6\" LED HD Monitor: 2 ms response time; 50,000,000:1 MEGA dynamic contrast ratio (1000:1 typical); 300 nits brightness; 1920 x 1080 resolution; 160-degree vertical and 170-degree horizontal viewing angles; HDMI, DVI-D and VGA inputs', 'https://api.bestbuy.com/click/-/2893912/pdp'),
(161, 'VG2039M-LED', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907688313, 2893921, '119.99', '119.99', 'VIEWSONIC 19.5\" LED Monitor: 5 ms response time; 20,000,000:1 dynamic contrast ratio (1000:1 typical); 250 nits brightness; 1600 x 900 resolution; 160-degree vertical and 170-degree horizontal viewing angles; DisplayPort, DVI-D and VGA inputs', 'https://api.bestbuy.com/click/-/2893921/pdp'),
(162, 'LC1032PK', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502636045, 2925266, '45.99', '41.99', 'Yields up to 600 pagesCompatible with select Brother printers', 'https://api.bestbuy.com/click/-/2925266/pdp'),
(163, 'U324-010', 'USB Cables & Adapters', 'ACCESSORIES', 'Tripp Lite', 37332158093, 2953798, '22.10', '9.99', 'Connects devices with compatible USB 2.0 and USB 3.0 connectors and interfaces; extends your USB cable; data transfer rates up to 5 Gbps; 10\' length', 'https://api.bestbuy.com/click/-/2953798/pdp'),
(164, '8278B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803215519, 2958184, '25.99', '25.99', 'Compatible with Canon PIXMA MG2420 all-in-one printers', 'https://api.bestbuy.com/click/-/2958184/pdp'),
(165, '8280B001', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803215540, 2958193, '29.99', '29.99', 'Compatible with select Canon All-in-One printers', 'https://api.bestbuy.com/click/-/2958193/pdp'),
(166, 'VN279Q', 'All Monitors', 'COMPUTERS', 'ASUS', 886227469437, 2968184, '199.00', '199.00', 'ASUS 27\" LED HD Monitor: 5 ms response time; 100,000,000:1 contrast ratio; 300 nits brightness; 1920 x 1080 resolution; 178-degree viewing angles; HDMI, VGA, headphone and microphone ports; multiscreen capability; security lock', 'https://api.bestbuy.com/click/-/2968184/pdp'),
(167, '97471', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Verbatim', 23942974710, 2969104, '20.99', '14.99', 'Optical technology; 2.4GHz wireless technology', 'https://api.bestbuy.com/click/-/2969104/pdp'),
(168, '980-000800', 'Computer Speakers', 'COMPUTERS', 'Logitech', 97855100528, 3001006, '24.99', '24.99', 'Compatible with most audio devices with a 3.5mm output; 10W peak power (5W x 2); fingertip control; tone control wheel; auxiliary input; headphone jack', 'https://api.bestbuy.com/click/-/3001006/pdp'),
(169, 'CN049AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609635, 3031857, '32.99', '32.99', 'Compatible with select HP Officejet Pro printers; black ink', 'https://api.bestbuy.com/click/-/3031857/pdp'),
(170, 'CN050AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609642, 3031911, '24.99', '24.99', 'Compatible with HP Officejet Pro 8600 e-All-in-One Series CM750A, CM749A and CN577A models; cyan ink', 'https://api.bestbuy.com/click/-/3031911/pdp'),
(171, 'CN045AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609680, 3031975, '44.99', '44.99', 'Black - Inkjet - 2300 Page - 1 Each', 'https://api.bestbuy.com/click/-/3031975/pdp'),
(172, 'CN051AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609659, 3031984, '24.99', '24.99', 'Compatible with select HP Officejet Pro printers; magenta ink', 'https://api.bestbuy.com/click/-/3031984/pdp'),
(173, 'CR314FN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609673, 3032019, '69.99', '69.99', 'Compatible with select HP Officejet Pro models; cyan inkjet cartridge; yellow inkjet cartridge; magenta inkjet cartridge', 'https://api.bestbuy.com/click/-/3032019/pdp'),
(174, '6384B002', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 13803150216, 3044394, '21.99', '21.99', 'Compatible with select Canon PIXMA printers', 'https://api.bestbuy.com/click/-/3044394/pdp'),
(175, 'P-FD16GTBAT4-GE', 'USB Flash Drives', 'DTS', 'PNY', 751492581606, 3055058, '9.99', '9.99', 'For PC, MacSliding collar with capless designIntegrated loop', 'https://api.bestbuy.com/click/-/3055058/pdp'),
(176, 'EX6100-100NAS', 'Wi-Fi Extenders', 'COMPUTERS', 'NETGEAR', 606449100730, 3055085, '74.99', '74.99', 'Compatible with most 802.11a/b/g/n/ac Wi-Fi routers and gateways; delivers dual-band Wi-Fi at speeds up to 750 Mbps; FastLane technology; 2 Wi-Fi modes; 10/100/1000 Mbps Gigabit Ethernet port', 'https://api.bestbuy.com/click/-/3055085/pdp'),
(177, 'WD2003FZEX', 'Internal Hard Drives', 'COMPUTERS', 'WD', 718037810553, 3055346, '119.99', '119.99', 'WD Black 2TB Internal Serial ATA Hard Drive (OEM/Bare Drive): Serial ATA interface; StableTrac technology; HRC (High Resolution Controller); NoTouch Ramp Load and Corruption Protection technologies; data transfer rates up to 6 Gbps; 64MB cache buffer', 'https://api.bestbuy.com/click/-/3055346/pdp'),
(178, 'WD1003FZEX', 'Internal Hard Drives', 'COMPUTERS', 'WD', 718037786469, 3055382, '72.99', '72.99', 'Serial ATA interface; StableTrac; S.M.A.R.T.; no-touch ramp load; data transfer rates up to 768MB/sec.', 'https://api.bestbuy.com/click/-/3055382/pdp'),
(179, '1023456', 'PC Add-Ons', 'INTERACTIVE SOFTWARE', 'No manufacturer', 400030980646, 3098064, '19.99', '19.99', 'Venture into the deep woods to explore the all-new destination', 'https://api.bestbuy.com/click/-/3098064/pdp'),
(180, 'CE390A', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884962517758, 3100161, '192.99', '192.99', 'Yields up to 10,000 pagesCompatible with select HP LaserJet Enterprise Printers', 'https://api.bestbuy.com/click/-/3100161/pdp'),
(181, '920-003051', 'Wireless & Bluetooth Keyboards', 'COMPUTERS', 'Logitech', 97855073358, 3106271, '29.99', '19.99', 'Compatible with PC; advanced 2.4GHz wireless technology; Unifying receiver; 8 hot keys; UV ray-resistant keys; full-size keyboard layout; spill-resistant design; plug-and-play setup', 'https://api.bestbuy.com/click/-/3106271/pdp'),
(182, '12A1970', 'Printer Ink', 'PHOTO/COMMODITIES', 'Lexmark', 734646120623, 3122677, '41.99', '19.99', 'LEXMARK 70 BLACK INKJET CARTRIDGE', 'https://api.bestbuy.com/click/-/3122677/pdp'),
(183, 'IOL900800F005', 'Maintenance Software', 'COMPUTER SOFTWARE', 'iolo technologies', 813279006877, 3140404, '44.99', '44.99', 'Keep your PC running like new', 'https://api.bestbuy.com/click/-/3140404/pdp'),
(184, 'LC209BK', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502638629, 3154373, '39.99', '35.99', 'Yields up to 2400 pagesCompatible with select Brother Printers', 'https://api.bestbuy.com/click/-/3154373/pdp'),
(185, 'LC-71BKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502628903, 3182791, '16.99', '16.99', 'Compatible with Brother MFC-J280W, 430W, 435W 625DW, 825DW and 835DW inkjet printers; black ink; 300-page yield per cartridge', 'https://api.bestbuy.com/click/-/3182791/pdp');
INSERT INTO `products` (`product_id`, `model_number`, `category_name`, `deparment_name`, `manufacturer_name`, `upc`, `sku`, `regular_price`, `sale_price`, `description`, `url`) VALUES
(186, 'LC-713PKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502630173, 3182937, '31.49', '31.49', 'Compatible with Brother MFC-J280W, 430W, 435W 625DW, 825DW and 835DW inkjet printers; yellow, cyan and magenta ink; 300-page yield per cartridge', 'https://api.bestbuy.com/click/-/3182937/pdp'),
(187, 'LC-75BKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502627463, 3182955, '28.99', '28.99', 'Compatible with Brother MFC-J280W, 430W, 435W 625DW, 825DW, 835DW, 6510DW, 6710DW and 6910DW inkjet printers; black ink; 600-page yield per cartridge', 'https://api.bestbuy.com/click/-/3182955/pdp'),
(188, 'LC-753PKS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Brother', 12502628453, 3182964, '47.99', '47.99', 'Compatible with Brother MFC-J280W, 430W, 435W 625DW, 825DW, 835DW, 6510DW, 6710DW and 6910DW inkjet printers; yellow, cyan and magenta ink; 600-page yield per cartridge', 'https://api.bestbuy.com/click/-/3182964/pdp'),
(189, 'P-FD128TBAT4-GE', 'USB Flash Drives', 'DTS', 'PNY', 751492581637, 3198009, '34.99', '17.99', 'Data transfer rates up to 115MB/sec.For PC, MacSliding collar with capless designIntegrated loop', 'https://api.bestbuy.com/click/-/3198009/pdp'),
(190, 'VG939SM', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907769012, 3217031, '169.99', '169.99', 'VIEWSONIC 19\" IPS LED HD Monitor: 14 ms response time; 20,000,000:1 dynamic contrast ratio; 250 nits brightness; 1280 x 1024 resolution; 178-degree horizontal and vertical viewing angles', 'https://api.bestbuy.com/click/-/3217031/pdp'),
(191, 'S042174', 'Photo-Quality Paper', 'PHOTO/COMMODITIES', 'Epson', 10343866416, 3278172, '26.99', '13.49', 'Compatible with most ink jet printers; designed for photo printing; 4\" x 6\"; 100 sheets of paper; fade-resistant; instant-dry design', 'https://api.bestbuy.com/click/-/3278172/pdp'),
(192, 'KP501E2', 'Tablet Stylus Pens', 'COMPUTERS', 'Wacom', 753218993403, 3333591, '69.95', '69.95', 'Compatible with select Wacom graphic tablets; professional design and durable construction; 2nd-generation Wacom tip sensor; pressure-sensitive eraser; contoured grip pad; 2 programmable side-switch buttons; battery-free functionality', 'https://api.bestbuy.com/click/-/3333591/pdp'),
(193, 'T125120-BCS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343876293, 3387154, '55.99', '55.99', 'Compatible with select Epson printers', 'https://api.bestbuy.com/click/-/3387154/pdp'),
(194, '112000', 'Multipurpose Paper', 'PHOTO/COMMODITIES', 'HP', 764025930000, 3412676, '8.99', '8.99', 'Letter - 8.5\" x 11\" - 20lb - Smooth - 92 GE/102 ISO (D65) Brightness', 'https://api.bestbuy.com/click/-/3412676/pdp'),
(195, '910-002533', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855077097, 3435677, '24.99', '24.99', 'Laser technology; side-to-side scrolling; zoom; 3 standard buttons; programmable back/forward buttons; wireless technology; USB connectivity', 'https://api.bestbuy.com/click/-/3435677/pdp'),
(196, '910-002696', 'Ergonomic Mice', 'COMPUTERS', 'Logitech', 97855080929, 3435868, '24.99', '24.99', 'Advanced optical technology; contoured design with 3 buttons; soft rubber grips; smart sleep mode; unifying receiver connects up to 6 compatible devices', 'https://api.bestbuy.com/click/-/3435868/pdp'),
(197, '981-000341', 'Computer Headsets', 'PHOTO/COMMODITIES', 'Logitech', 97855076816, 3436118, '39.99', '39.99', 'Compatible with most devices with a USB port; on-ear controls; laser-tuned drivers; stereo sound; noise-canceling microphone; 33\' wireless range; adjustable headband', 'https://api.bestbuy.com/click/-/3436118/pdp'),
(198, '981-000337', 'Computer Headsets', 'PHOTO/COMMODITIES', 'Logitech', 97855076809, 3436994, '79.99', '79.99', 'Compatible with PC, most tablets and smartphones; Bluetooth connectivity; on-ear controls; laser-tuned drivers; built-in equalizer; noise-canceling microphone; 40\' wireless range; padded headband', 'https://api.bestbuy.com/click/-/3436994/pdp'),
(199, '65-089-27', 'USB Cables & Adapters', 'MAGNOLIA HOME THEATR', 'AudioQuest', 92592086630, 3441005, '449.95', '449.95', 'AUDIOQUEST Carbon 16.4\' USB 2.0 Cable: Compatible with most devices with USB 2.0 connectivity; 5% silver-plated copper material; solid-core conductors; carbon-based, 3-layer noise-dissipation system; braided cable', 'https://api.bestbuy.com/click/-/3441005/pdp'),
(200, 'DR420', 'Printer Accessories', 'PHOTO/COMMODITIES', 'Brother', 12502626756, 3459533, '109.99', '109.99', '12000 Page - 1 Pack', 'https://api.bestbuy.com/click/-/3459533/pdp'),
(201, 'ASW-USB3-25', 'Hard Drive Cables & Accessories', 'COMPUTERS', 'Apricorn', 708326913003, 3459621, '39.99', '22.99', 'SATA - 2.50\" - USB - SATA', 'https://api.bestbuy.com/click/-/3459621/pdp'),
(202, '10291', 'Utilities Software', 'COMPUTER SOFTWARE', 'Avanquest', 18059102910, 3487602, '39.99', '39.99', 'Fix, speed up and keep your PC in great working condition', 'https://api.bestbuy.com/click/-/3487602/pdp'),
(203, 'SDCZ60-064G-A46', 'USB Flash Drives', 'DTS', 'SanDisk', 619659075538, 3495128, '24.99', '8.99', 'Compatible with PC and Mac; 64GB storage capacity; SanDisk SecureAccess software', 'https://api.bestbuy.com/click/-/3495128/pdp'),
(204, 'NS-PU98635', 'USB Wi-Fi Adapters', 'ACCESSORIES', 'Insignia™', 600603185700, 3510527, '24.99', '24.99', 'Provides a wired Ethernet connection; compatible with PC and Mac laptops and Ultrabooks; supports 10/100/1000 Mbps networking speeds', 'https://api.bestbuy.com/click/-/3510527/pdp'),
(205, 'WD5000LPLX', 'Internal Hard Drives', 'COMPUTERS', 'WD', 718037829982, 3530928, '52.99', '52.99', 'Serial ATA-600 interface; Advanced Format; S.M.A.R.T. technology; data transfer rates up to 600 MBps; 32MB cache buffer', 'https://api.bestbuy.com/click/-/3530928/pdp'),
(206, '43270-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202462399, 3542074, '69.99', '67.99', 'Compatible with most laptops with up to 17\" display; durable nylon material; padded laptop compartment; handle; shoulder strap', 'https://api.bestbuy.com/click/-/3542074/pdp'),
(207, '43269-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202462382, 3542108, '69.99', '69.99', 'Fits most laptops up to 17\"; ballistic fabric; padded laptop compartment; front stash pocket; padded, removable, adjustable shoulder strap; wrapped bale handles; SmartPocket', 'https://api.bestbuy.com/click/-/3542108/pdp'),
(208, '43271-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202462405, 3542171, '39.99', '39.99', 'Fits most laptops up to 15.6\"; ballistic fabric; padded laptop compartment; front stash pocket; padded, removable, adjustable shoulder strap; wrapped bale handles; SmartSleeve', 'https://api.bestbuy.com/click/-/3542171/pdp'),
(209, 'P-FD64GATT4-GE', 'USB Flash Drives', 'DTS', 'PNY', 751492579290, 3550656, '14.99', '14.99', 'Compatible with PC and Mac; USB 2.0 interface; integrated cap', 'https://api.bestbuy.com/click/-/3550656/pdp'),
(210, 'EX7000-100NAS', 'Wi-Fi Extenders', 'COMPUTERS', 'NETGEAR', 606449105582, 3606023, '139.99', '139.99', 'Speeds up to 1900 Mbps; dual-core 1.0GHz processor; 700mW high-power amplifiers; 3 external antennas; FastLane technology; 5 Gigabit ports; Access Point mode; DLNA server', 'https://api.bestbuy.com/click/-/3606023/pdp'),
(211, 'NS-PCY5MP9', 'Mouse & Wrist Pads', 'ACCESSORIES', 'Insignia™', 600603163586, 3640004, '19.99', '19.99', 'Double-sided design; nonslip feet; anodized-aluminum material; oversize surface area', 'https://api.bestbuy.com/click/-/3640004/pdp'),
(212, 'CE505D', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 886111645091, 3654351, '179.99', '179.99', 'Yields up to 2,300 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/3654351/pdp'),
(213, 'MD565LL/A', 'Laptop Chargers & Adapters', 'PHOTO/COMMODITIES', 'Apple', 885909575725, 3655007, '79.99', '79.99', 'Device Supported: NotebookMaximum Output Power: 60 WCompatibility: Apple MacBook Pro with 13-inch Retina DisplayLimited Warranty: 1 Year', 'https://api.bestbuy.com/click/-/3655007/pdp'),
(214, 'NS-MST2B', 'Tablet Stylus Pens', 'COMPUTERS', 'Insignia™', 600603166020, 3695185, '9.99', '9.99', 'Compatible with most capacitive touch surfaces; soft tip', 'https://api.bestbuy.com/click/-/3695185/pdp'),
(215, 'VS247HP', 'All Monitors', 'COMPUTERS', 'ASUS', 610839380862, 3706211, '136.99', '136.99', '2 ms response time; 50,000,000:1 contrast ratio; 300 cd/m&#178; brightness; 1920 x 1080 resolution; 170&#176; horizontal and 160&#176; vertical viewing angles; D-sub and DVI-D inputs; HDMI input', 'https://api.bestbuy.com/click/-/3706211/pdp'),
(216, 'C3700-100NAS', 'Modem & Router Combos', 'DTS', 'NETGEAR', 606449099089, 3707003, '109.99', '109.99', 'Dual-Band N600 Router with 8 x 4 DOCSIS 3.0 Cable ModemSpeeds up to 340MbpsWorks with XFINITY from Comcast, Spectrum, Cox, Cablevision and moreWi-Fi Protected Access2 Gigabit Ethernet ports', 'https://api.bestbuy.com/click/-/3707003/pdp'),
(217, '11020-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202130182, 3731562, '139.99', '139.99', 'Fits most laptops with up to 15\" display; protective side-loading notebook compartment; large accessory pockets and accordion folder; gusseted pockets; 1680D ballistic nylon material; retractable, push-button locking handle; smooth-rolling in-line skate w', 'https://api.bestbuy.com/click/-/3731562/pdp'),
(218, '4250400', 'Wired & USB Keyboards', 'COMPUTERS', 'Digital Innovations', 659846425043, 3736928, '11.99', '11.99', 'Compatible with PC; USB connectivity; 110 keys', 'https://api.bestbuy.com/click/-/3736928/pdp'),
(219, 'MY232LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199655607, 3755015, '799.99', '799.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3755015/pdp'),
(220, 'MY252LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199655881, 3756005, '799.99', '799.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3756005/pdp'),
(221, 'DR310CL', 'Printer Accessories', 'PHOTO/COMMODITIES', 'Brother', 12502625483, 3760448, '167.99', '167.99', '25000 Page - 1 Pack', 'https://api.bestbuy.com/click/-/3760448/pdp'),
(222, 'RBP-117BLACK', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854222440, 3764339, '89.99', '58.99', 'CASE LOGIC Laptop Backpack: Fits most laptops with up to a 17.3\" display; nylon material; integrated pocket for Apple iPad or tablet; top-loading pocket; front compartment; middle compartment; streamlined design; strap-management system', 'https://api.bestbuy.com/click/-/3764339/pdp'),
(223, '920-003070', 'Wireless & Bluetooth Keyboards', 'COMPUTERS', 'Logitech', 97855074928, 3764993, '19.99', '19.99', 'Compatible with most Windows-based laptops; wireless USB connectivity; multitouch touchpad; sleek, low-profile keys', 'https://api.bestbuy.com/click/-/3764993/pdp'),
(224, 'MXDC2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199423206, 3780001, '899.99', '899.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3780001/pdp'),
(225, 'MXDD2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199423480, 3780029, '899.99', '899.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3780029/pdp'),
(226, 'T676XL120-S', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343883352, 3782668, '41.99', '41.99', 'For use with WorkForce Pro WP-4020 ink jet, WP-4530 all-in-one and WP-4540 all-in-one printers; black ink; smudge-, fade- and water-resistant prints; for use with plain and glossy photo paper', 'https://api.bestbuy.com/click/-/3782668/pdp'),
(227, 'P-FD16GATT4-GE', 'USB Flash Drives', 'DTS', 'PNY', 751492579276, 3789011, '7.99', '7.99', 'Capless design with a sliding collar; integrated loop; matte housing; smoky translucent cap', 'https://api.bestbuy.com/click/-/3789011/pdp'),
(228, 'VGA2HDU', 'Monitor & Video Cables', 'ACCESSORIES', 'StarTech.com', 65030854962, 3791028, '60.99', '45.99', 'Connects VGA to HDMI; USB powered; USB audio interface; up to 1920 x 1080 external resolution; 2 years warranty', 'https://api.bestbuy.com/click/-/3791028/pdp'),
(229, 'MXDE2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199423763, 3803006, '1099.99', '1099.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3803006/pdp'),
(230, 'MXDF2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199424043, 3803015, '1099.99', '1099.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3803015/pdp'),
(231, 'MXDG2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199424326, 3804005, '1299.99', '1299.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3804005/pdp'),
(232, 'MXDH2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199424609, 3804014, '1299.99', '1299.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3804014/pdp'),
(233, 'MY2H2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199656208, 3805004, '999.99', '999.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3805004/pdp'),
(234, 'USB3HDCAP', 'Game Capture Devices', 'ACCESSORIES', 'StarTech.com', 65030855952, 3805182, '251.99', '203.99', 'Compatible with almost any video sourceLive streaming1080p resolutionUSB 3.0 interfaceH.264 encodingWindows OS support', 'https://api.bestbuy.com/click/-/3805182/pdp'),
(235, 'MY2J2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199656482, 3813011, '999.99', '999.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3813011/pdp'),
(236, 'MXAT2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199416826, 3814001, '1099.99', '1099.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3814001/pdp'),
(237, 'MXAU2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199417106, 3814029, '1099.99', '1099.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3814029/pdp'),
(238, 'MXAV2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199417380, 3814047, '1299.99', '1299.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3814047/pdp'),
(239, 'MXAW2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199417663, 3814065, '1299.99', '1299.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3814065/pdp'),
(240, 'MXAX2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199417946, 3814083, '1499.99', '1499.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3814083/pdp'),
(241, 'LGS108', 'Network Switches', 'COMPUTERS', 'Linksys', 722868997871, 3842019, '37.99', '37.99', 'Wired; connects up to 8 devices on a shared network; Gigabit speed; plug-and-play installation', 'https://api.bestbuy.com/click/-/3842019/pdp'),
(242, 'VG2439SMH', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907801910, 3843018, '169.99', '169.99', 'VIEWSONIC 23.6\" LED HD Monitor: 6.5 ms response time; 3000:1 contrast ratio; 250 nits brightness; 1920 x 1080 maximum resolution; DisplayPort, HDMI and VGA inputs', 'https://api.bestbuy.com/click/-/3843018/pdp'),
(243, 'VG2860MHL-4K', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907774115, 3843045, '459.99', '459.99', 'VIEWSONIC 28\" LED 4K UHD Monitor: 2 ms response time; 1000:1 contrast ratio; 300 nits brightness; 4096 x 2160 maximum resolution; HDMI, MHL, DisplayPort, mini DisplayPort and DVI inputs', 'https://api.bestbuy.com/click/-/3843045/pdp'),
(244, 'MXAY2LL/A', 'iPad Pro', 'COMPUTERS', 'Apple', 190199418226, 3888002, '1499.99', '1499.99', 'Breaking the rules of computing. Your next computer is not a computer', 'https://api.bestbuy.com/click/-/3888002/pdp'),
(245, 'SL-M2070FW', 'Black & White Laser Printers', 'COMPUTERS', 'Samsung', 191628403189, 3920307, '179.99', '179.99', '4-in-1 functionalityWireless networkingPrint speeds up to 21 ISO ppm in black (Print speeds vary with use. See mfg. for info on print speeds.)150-sheet input tray', 'https://api.bestbuy.com/click/-/3920307/pdp'),
(246, '97470', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Verbatim', 23942974703, 3921715, '25.80', '14.99', 'Optical technology; 2.4GHz wireless technology', 'https://api.bestbuy.com/click/-/3921715/pdp'),
(247, '97540', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Verbatim', 23942975403, 3921742, '25.80', '14.99', 'Optical technology; 2.4GHz wireless technology', 'https://api.bestbuy.com/click/-/3921742/pdp'),
(248, 'K72352US', 'Trackballs', 'COMPUTERS', 'Kensington', 85896723523, 3924758, '59.99', '42.99', 'Trackball design with laser sensorTouch scrollingAmbidextrous design2 programmable buttonsPC and Mac compatible', 'https://api.bestbuy.com/click/-/3924758/pdp'),
(249, '910-002486', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855076540, 3925939, '17.99', '17.99', 'Laser - Wireless - Radio Frequency - Flame Red - USB - 1000 dpi - Computer - Scroll Wheel - 3 Button(s) - Symmetrical', 'https://api.bestbuy.com/click/-/3925939/pdp'),
(250, '910-002332', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855073891, 3937934, '17.99', '17.99', 'Advanced optical tracking Micro-precise scrolling tilt wheel Contoured design Textured rubber grips 2.4GHz wireless technology Small Logitech Unifying receiver', 'https://api.bestbuy.com/click/-/3937934/pdp'),
(251, '910-002650', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855080592, 3937943, '17.99', '17.99', 'Advanced optical tracking; microprecise scrolling; 3 buttons; USB interface', 'https://api.bestbuy.com/click/-/3937943/pdp'),
(252, '910-002651', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855080608, 3937952, '17.99', '17.99', 'Advanced optical tracking Microprecise scrolling 3 buttons USB interface', 'https://api.bestbuy.com/click/-/3937952/pdp'),
(253, 'LX1500GU', 'Battery Backup (UPS)', 'ACCESSORIES', 'CyberPower', 649532615537, 3938817, '159.99', '159.99', 'ENERGY STAR Certified\n890 joules of protection; 10 surge-protected outlets; phone line protection; AVR (Automatic Voltage Regulation); Line Interactive topology; GreenPower UPS Bypass design; multifunction LCD', 'https://api.bestbuy.com/click/-/3938817/pdp'),
(254, 'LE1000DG', 'Battery Backup (UPS)', 'ACCESSORIES', 'CyberPower', 649532612536, 3938835, '109.99', '109.99', '1030 joules of protection; 12 surge-protected outlets; phone line protection; AVR (Automatic Voltage Regulation); Line Interactive and standby topologies; GreenPower UPS Bypass design; multifunction LCD', 'https://api.bestbuy.com/click/-/3938835/pdp'),
(255, 'VNA-216BLACK/GRAY', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854212359, 3958336, '21.99', '17.99', 'CASE LOGIC Laptop Attache: Fits most laptops with up to a 16\" display; dobby nylon material; front pocket; USB drive pocket; shoulder strap; padded handle; luggage strap', 'https://api.bestbuy.com/click/-/3958336/pdp'),
(256, '4479A226', 'Printer Ink', 'PHOTO/COMMODITIES', 'Canon', 750845808278, 3971107, '16.99', '16.99', 'Compatible with select Canon Printers', 'https://api.bestbuy.com/click/-/3971107/pdp'),
(257, 'PRO117-4', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'solo New York', 30918010600, 3972007, '24.99', '24.99', 'Fits most Ultrabook laptops with up to a 17.3\" display; polyester material; scratch-resistant lining; lightweight construction; checkpoint-friendly design', 'https://api.bestbuy.com/click/-/3972007/pdp'),
(258, 'UBN310-4', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'solo New York', 30918010402, 3972016, '49.99', '39.99', 'Fits most laptops with up to a 15.6\" display; polyester and nylon materials; padded laptop compartment; zippered front pockets; zip-down front organizer; padded backpack straps; removable shoulder strap', 'https://api.bestbuy.com/click/-/3972016/pdp'),
(259, 'CR666A', 'Photo-Quality Paper', 'PHOTO/COMMODITIES', 'HP', 886111138814, 3977112, '17.99', '15.99', 'Compatible with HP printers and most inkjet printers; designed for photo printing; 4\" x 6\" photo paper; 100 sheets; water-resistant; smudge-resistant; porous instant-dry image coating; enhanced thickness', 'https://api.bestbuy.com/click/-/3977112/pdp'),
(260, 'EC850LCD', 'Battery Backup (UPS)', 'ACCESSORIES', 'CyberPower', 649532607600, 3986012, '93.99', '93.99', '526-joule protection rating; 12 surge-protected outlets; data line protection; EMI/RFI noise filter; multifunctional LCD panel; GreenPower UPS technology; PowerPanel personal software', 'https://api.bestbuy.com/click/-/3986012/pdp'),
(261, 'EC750G', 'Battery Backup (UPS)', 'ACCESSORIES', 'CyberPower', 649532607587, 3986021, '88.99', '86.99', '526-joule protection rating; 12 surge-protected outlets; data line protection; EMI/RFI noise filter; GreenPower UPS technology; PowerPanel personal software', 'https://api.bestbuy.com/click/-/3986021/pdp'),
(262, 'OR1500LCDRT2U', 'Battery Backup (UPS)', 'ACCESSORIES', 'CyberPower', 649532610044, 3986058, '399.99', '399.99', '1500VA/900W - 6 Minute Full Load - 8 x NEMA 5-15R - Battery/Surge-protected', 'https://api.bestbuy.com/click/-/3986058/pdp'),
(263, 'EX6150-100NAS', 'Wi-Fi Extenders', 'COMPUTERS', 'NETGEAR', 606449105056, 3993445, '109.99', '109.99', 'Up to 1200 Mbps data transfer rates; WPA/WPA2-PSK (Wi-Fi Protected Access) and WEP security; FastLane technology; external antennas; 2 Wi-Fi modes; Gigabit Ethernet port', 'https://api.bestbuy.com/click/-/3993445/pdp'),
(264, 'PL1200-100PAS', 'Network Switches', 'COMPUTERS', 'NETGEAR', 606449106787, 4002029, '84.99', '84.99', 'Data transfer speeds up to 1200 Mbps; 10/100/1000 Gigabit Ethernet; coverage up to 5,832 sq. ft.; plug-and-play design; one-touch encryption; MIMO with beamforming', 'https://api.bestbuy.com/click/-/4002029/pdp'),
(265, 'CN047AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609703, 4017043, '34.99', '34.99', 'Yields up to 1,500 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4017043/pdp'),
(266, 'CN046AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609697, 4017052, '34.99', '34.99', 'Yields up to 1,500 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4017052/pdp'),
(267, 'CN048AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 886111609710, 4017089, '34.99', '34.99', 'Yields up to 1,500 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4017089/pdp'),
(268, '65-090-04', 'USB Cables & Adapters', 'MAGNOLIA HOME THEATR', 'AudioQuest', 92592086661, 4022054, '599.95', '599.95', 'Compatible with most computer-based audio systems; silver-plated, long-grain copper material; solid core conductors', 'https://api.bestbuy.com/click/-/4022054/pdp'),
(269, '65-090-12', 'USB Cables & Adapters', 'MAGNOLIA HOME THEATR', 'AudioQuest', 92592086647, 4022249, '369.95', '369.95', 'Compatible with most computer-based audio systems; silver conductors; solid core conductors', 'https://api.bestbuy.com/click/-/4022249/pdp'),
(270, '65-091-12', 'USB Cables & Adapters', 'MAGNOLIA HOME THEATR', 'AudioQuest', 92592086685, 4022442, '649.95', '649.95', 'Compatible with most computer-based audio systems; silver conductors; solid core conductors', 'https://api.bestbuy.com/click/-/4022442/pdp'),
(271, '65-090-13', 'USB Cables & Adapters', 'MAGNOLIA HOME THEATR', 'AudioQuest', 92592086654, 4022521, '449.95', '449.95', 'Compatible with most computer-based audio systems; silver-plated, long-grain copper material; solid core conductors', 'https://api.bestbuy.com/click/-/4022521/pdp'),
(272, 'DS-10U', 'All Monitors', 'COMPUTERS', 'DoubleSight', 816220001457, 4025028, '151.99', '151.99', 'DOUBLESIGHT 10.1\" LCD HD Monitor: 16 ms response time; 500:1 contrast ratio; 200 nits brightness; 1024 x 600 maximum resolution; USB 2.0 port; landscape and portrait modes; ideal for use as an additional display; Mac and PC compatible', 'https://api.bestbuy.com/click/-/4025028/pdp'),
(273, 'JUH470', 'USB Hubs', 'ACCESSORIES', 'j5create', 847626000492, 4054106, '34.99', '34.99', 'Gigabit Ethernet connectivity; USB ports; speedy data transfers; compatible with Mac and PC', 'https://api.bestbuy.com/click/-/4054106/pdp'),
(274, 'NS-PWLC663', 'Laptop Chargers & Adapters', 'PHOTO/COMMODITIES', 'Insignia™', 600603188114, 4062039, '64.99', '34.99', 'Compatible with select ultrabooks; 19V output; overload protection', 'https://api.bestbuy.com/click/-/4062039/pdp'),
(275, 'GA-7343-06F00', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Wenger', 92837734364, 4080202, '69.99', '69.99', 'Polyester', 'https://api.bestbuy.com/click/-/4080202/pdp'),
(276, '0G03674-1', 'External Hard Drives', 'COMPUTERS', 'G-DRIVE', 705487196542, 4085256, '249.99', '199.95', 'USB 3.0 interface; backward compatible with USB 2.0; Apple&#174; Time Machine&#174;-ready; data transfer rates up to 226MB/sec.', 'https://api.bestbuy.com/click/-/4085256/pdp'),
(277, 'FS108NA', 'Network Switches', 'COMPUTERS', 'NETGEAR', 606449003208, 4121872, '59.99', '59.99', '8 x 10/100Base-TX', 'https://api.bestbuy.com/click/-/4121872/pdp'),
(278, 'LAPS-117', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854221801, 4126483, '29.99', '29.99', 'CASE LOGIC Laptop Sleeve: Fits most laptops with a 17\" - 17.3\" display; EVA Impact Foam padding; slimline design', 'https://api.bestbuy.com/click/-/4126483/pdp'),
(279, 'CE390X', 'Printer Toner', 'PHOTO/COMMODITIES', 'HP', 884962517765, 4141712, '321.99', '321.99', 'Yields up to 24,000 pagesCompatible with select HP LaserJet Enterprise Printers', 'https://api.bestbuy.com/click/-/4141712/pdp'),
(280, 'HD-LX1.0TU3', 'External Hard Drives', 'COMPUTERS', 'Buffalo Technology', 747464123509, 4164003, '89.99', '71.99', 'USB 3.0/2.0 interface; scheduled backup capability; hardware encryption; Buffalo Tools utility software; data transfer rates up to 5 Gbps via USB 3.0', 'https://api.bestbuy.com/click/-/4164003/pdp'),
(281, 'HD-LX2.0TU3', 'External Hard Drives', 'COMPUTERS', 'Buffalo Technology', 747464123516, 4164012, '104.99', '87.99', 'USB 3.0/2.0 interface; scheduled backup capability; hardware encryption; Buffalo Tools utility software support; data transfer rates up to 5 Gbps via USB 3.0', 'https://api.bestbuy.com/click/-/4164012/pdp'),
(282, 'HD-LX3.0TU3', 'External Hard Drives', 'COMPUTERS', 'Buffalo Technology', 747464123523, 4164021, '109.99', '93.99', 'Serial ATA and USB 3.0/2.0 interfaces; scheduled backup capability; hardware encryption; data transfer rates up to 5 Gbps via USB 3.0', 'https://api.bestbuy.com/click/-/4164021/pdp'),
(283, 'CP425SLG', 'Battery Backup (UPS)', 'ACCESSORIES', 'CyberPower', 649532609475, 4195903, '49.99', '49.99', '425 VA/255 W - Desktop - Full Load Runtime 2 Minute - 4 x NEMA 5-15R', 'https://api.bestbuy.com/click/-/4195903/pdp'),
(284, 'NS-NBSL-14', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Insignia™', 600603167720, 4204007, '20.99', '20.99', 'Fits most laptops with up to a 15.6\" display; front zippered pocket; detachable shoulder strap; handle; slim, lightweight design', 'https://api.bestbuy.com/click/-/4204007/pdp'),
(285, 'F8T068TTAPL', 'Keypads', 'ACCESSORIES', 'Belkin', 745883675067, 4210322, '49.99', '49.99', 'Compatible with Apple iMac, Mac Pro and MacBook; Bluetooth technology; 28 low-profile, island-style keys; aluminum enclosure', 'https://api.bestbuy.com/click/-/4210322/pdp'),
(286, 'E1659FWU', 'All Monitors', 'COMPUTERS', 'AOC', 685417062485, 4218018, '99.99', '99.99', 'Bring a second monitor with you to enhance your productivity, virtually anywhere with the AOC E1659FWU 15.6&#8221; portable LED HD monitor. It&#8217;s spacious 15.6&#8221; diagonal size and HD resolution wrapped in a lightweight and portable package allow', 'https://api.bestbuy.com/click/-/4218018/pdp'),
(287, '43319-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202462566, 4218095, '22.99', '22.99', 'SAMSONITE Aramon NXT Sleeve for 13\" Apple MacBook: Fits a 13\" Apple MacBook or small tablet; neoprene material; checkpoint-friendly design; zipper', 'https://api.bestbuy.com/click/-/4218095/pdp'),
(288, '43327-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202462764, 4218138, '34.99', '34.99', 'SAMSONITE Aramon NXT Shuttle Case for 13\" Apple MacBook, MacBook Pro and MacBook Air: Compatible with 13\" Apple MacBook, MacBook Pro and MacBook Air; neoprene material; zippered accessory pocket; removable, adjustable shoulder strap; top carry handles', 'https://api.bestbuy.com/click/-/4218138/pdp'),
(289, '43330-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202462887, 4218147, '37.99', '37.99', 'SAMSONITE Aramon NXT Laptop Shuttle Bag: Compatible with most laptops with up to a 17\" display; neoprene rubber material; front exterior zippered pocket; padded, adjustable shoulder strap; web haul handles; zip-around closure; cushioning cradle', 'https://api.bestbuy.com/click/-/4218147/pdp'),
(290, '45798-1139', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202485244, 4218174, '121.99', '121.99', 'Dedicated padded laptop compartment; front pocket organization; genuine leather material; padded removable shoulder strap; compatible with most laptops up to 15.6\"', 'https://api.bestbuy.com/click/-/4218174/pdp'),
(291, '920-006481', 'Keyboard & Mouse Combos', 'COMPUTERS', 'Logitech', 97855107879, 4225900, '34.99', '34.99', 'Compatible with PC2.4GHz wireless technology12 buttonsButton functions: mute, play/pause and skip tracksOptical mouse', 'https://api.bestbuy.com/click/-/4225900/pdp'),
(292, '8746B002', 'Photo Printers', 'COMPUTERS', 'Canon', 13803230840, 4241003, '249.99', '249.99', 'Prints borderless photos up to 13\" x 19\"Wi-FiPrints up to 14.5 ISO ipm in black and up to 10.4 ISO ipm in color (Print speeds vary with use. See mfg. for info on print speeds.)150-sheet automatic sheet feeder', 'https://api.bestbuy.com/click/-/4241003/pdp'),
(293, 'T29HGS-F00', 'Tablet Screen Protectors', 'COMPUTERS', 'ZAGG', 848467040456, 4241504, '49.99', '25.99', 'Compatible with Samsung Galaxy Tab S2 & S3 9.7; tempered-glass construction; oil-repelling technology; scratch-resistant design; EZ Apply tabs', 'https://api.bestbuy.com/click/-/4241504/pdp'),
(294, 'NS-PMM6R01', 'Monitor Mounts & Stands', 'ACCESSORIES', 'Insignia™', 600603189609, 4258201, '24.99', '24.99', 'Holds most computer monitors; also functions as a desktop stand; lightweight design', 'https://api.bestbuy.com/click/-/4258201/pdp'),
(295, 'MUXF2LL/A', 'iPad mini', 'COMPUTERS', 'Apple', 190199072305, 4264200, '529.99', '479.99', 'iPad mini. Mini just got mightier', 'https://api.bestbuy.com/click/-/4264200/pdp'),
(296, 'MUXG2LL/A', 'iPad mini', 'COMPUTERS', 'Apple', 190199072329, 4264500, '529.99', '479.99', 'iPad mini. Mini just got mightier', 'https://api.bestbuy.com/click/-/4264500/pdp'),
(297, 'MUXH2LL/A', 'iPad mini', 'COMPUTERS', 'Apple', 190199072343, 4264503, '529.99', '479.99', 'iPad mini. Mini just got mightier', 'https://api.bestbuy.com/click/-/4264503/pdp'),
(298, 'MUXM2LL/A', 'iPad mini', 'COMPUTERS', 'Apple', 190199072428, 4264600, '679.99', '629.99', 'iPad mini. Mini just got mightier', 'https://api.bestbuy.com/click/-/4264600/pdp'),
(299, 'MUXN2LL/A', 'iPad mini', 'COMPUTERS', 'Apple', 190199072442, 4264602, '679.99', '629.99', 'iPad mini. Mini just got mightier', 'https://api.bestbuy.com/click/-/4264602/pdp'),
(300, 'MUXP2LL/A', 'iPad mini', 'COMPUTERS', 'Apple', 190199072466, 4264604, '679.99', '629.99', 'iPad mini. Mini just got mightier', 'https://api.bestbuy.com/click/-/4264604/pdp'),
(301, 'MV152LL/A', 'iPad Air', 'COMPUTERS', 'Apple', 190199088436, 4264700, '629.99', '629.99', 'iPad Air. Power isn\'t just for the pros', 'https://api.bestbuy.com/click/-/4264700/pdp'),
(302, 'MV162LL/A', 'iPad Air', 'COMPUTERS', 'Apple', 190199088450, 4264714, '629.99', '629.99', 'iPad Air. Power isn\'t just for the pros', 'https://api.bestbuy.com/click/-/4264714/pdp'),
(303, 'MV172LL/A', 'iPad Air', 'COMPUTERS', 'Apple', 190199088474, 4264801, '629.99', '629.99', 'iPad Air. Power isn\'t just for the pros', 'https://api.bestbuy.com/click/-/4264801/pdp'),
(304, 'MV1D2LL/A', 'iPad Air', 'COMPUTERS', 'Apple', 190199088559, 4264802, '779.99', '679.99', 'iPad Air. Power isn\'t just for the pros', 'https://api.bestbuy.com/click/-/4264802/pdp'),
(305, 'MV1F2LL/A', 'iPad Air', 'COMPUTERS', 'Apple', 190199088573, 4264901, '779.99', '679.99', 'iPad Air. Power isn\'t just for the pros', 'https://api.bestbuy.com/click/-/4264901/pdp'),
(306, 'MV1G2LL/A', 'iPad Air', 'COMPUTERS', 'Apple', 190199088597, 4265000, '779.99', '679.99', 'iPad Air. Power isn\'t just for the pros', 'https://api.bestbuy.com/click/-/4265000/pdp'),
(307, 'S041586', 'Multipurpose Paper', 'PHOTO/COMMODITIES', 'Epson', 10343838192, 4271512, '8.99', '4.49', 'Compatible with most ink jet printers; 2-sided use; 8.5\" x 11\"; 500 sheets; acid-free design; 96 brightness', 'https://api.bestbuy.com/click/-/4271512/pdp'),
(308, 'T664120-S', 'Supertank Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343920484, 4274200, '12.99', '12.99', 'High-yield designCompatible with select Epson EcoTank printers', 'https://api.bestbuy.com/click/-/4274200/pdp'),
(309, 'T664320-S', 'Supertank Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343920507, 4274201, '12.99', '12.99', 'High-yield designCompatible with select Epson EcoTank printers', 'https://api.bestbuy.com/click/-/4274201/pdp'),
(310, 'T664220-S', 'Supertank Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343920491, 4274202, '12.99', '12.99', '', 'https://api.bestbuy.com/click/-/4274202/pdp'),
(311, 'T774120-S', 'Supertank Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343920545, 4274203, '19.49', '19.49', 'High-yield designCompatible with Epson EcoTank ET-4550 printers', 'https://api.bestbuy.com/click/-/4274203/pdp'),
(312, 'T664420-S', 'Supertank Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343920514, 4274204, '12.99', '12.99', 'High-yield designCompatible with select Epson EcoTank printers', 'https://api.bestbuy.com/click/-/4274204/pdp'),
(313, 'CR671A', 'Photo-Quality Paper', 'PHOTO/COMMODITIES', 'HP', 886111138869, 4276055, '17.49', '17.49', 'Compatible with HP Inkjet printers; designed for printing photos; 8.5\" x 11\" paper size; 25 sheets included', 'https://api.bestbuy.com/click/-/4276055/pdp'),
(314, 'THE SIMS PERFECT PATIO STUFF', 'PC Add-Ons', 'INTERACTIVE SOFTWARE', 'No manufacturer', 400042782009, 4278200, '9.99', '9.99', 'Lure your Sims outside with hot tubs, new furnishings, decor, hairstyles, and more', 'https://api.bestbuy.com/click/-/4278200/pdp'),
(315, 'T124120-BCS', 'Printer Ink', 'PHOTO/COMMODITIES', 'Epson', 10343876538, 4283261, '41.99', '41.99', 'Compatible with select Epson Printers', 'https://api.bestbuy.com/click/-/4283261/pdp'),
(316, 'RTAC68U', 'Wireless Routers', 'COMPUTERS', 'ASUS', 886227419005, 4283718, '282.99', '145.99', 'Up to 1900 Mbps data transfer ratesUSB portVPN supportNetwork monitoringSyslog supportStateful Packet Inspection (SPI)', 'https://api.bestbuy.com/click/-/4283718/pdp'),
(317, '73228-1041', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Samsonite', 43202676574, 4285000, '69.99', '69.99', 'EVA compression-molded, padded laptop compartment; front pocket organization; rear soft-brushed poly pocket; SmartSleeve; checkpoint friendly', 'https://api.bestbuy.com/click/-/4285000/pdp'),
(318, 'NS-NB101-14', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Insignia™', 600603167713, 4286006, '24.99', '24.99', 'Fits most laptops with up to a 15.6\" display; padded design; front and inside pockets; detachable shoulder strap', 'https://api.bestbuy.com/click/-/4286006/pdp'),
(319, 'MG3620 RED', 'Inkjet Printers', 'COMPUTERS', 'Canon', 13803256277, 4291000, '79.99', '49.99', '3-in-1 functionalityBorderless printingBuilt-in Wi-FiPrints up to 9.9 ISO ipm in black, up to 5.7 ISO ipm in color (Print speeds vary with use. See mfg. for info on print speeds.)', 'https://api.bestbuy.com/click/-/4291000/pdp'),
(320, '0515C022', 'Inkjet Printers', 'COMPUTERS', 'Canon', 13803256239, 4291015, '79.99', '49.99', '3-in-1 functionalityBorderless printingBuilt-in Wi-FiPrints up to 9.9 ISO ipm in black, up to 5.7 ISO ipm in color (Print speeds vary with use. See mfg. for info on print speeds.)', 'https://api.bestbuy.com/click/-/4291015/pdp'),
(321, '0515C002', 'Inkjet Printers', 'COMPUTERS', 'Canon', 13803256192, 4291017, '79.99', '39.99', '3-in-1 functionalityBorderless printingBuilt-in Wi-FiPrints up to 9.9 ISO ipm in black, up to 5.7 ISO ipm in color (Print speeds vary with use. See mfg. for info on print speeds.)', 'https://api.bestbuy.com/click/-/4291017/pdp'),
(322, 'VA2055SM', 'All Monitors', 'COMPUTERS', 'ViewSonic', 766907806311, 4294507, '84.99', '84.99', 'VIEWSONIC 19.5\" LED HD Monitor: 16 ms response time; 3000:1 static contrast ratio; 250 nits brightness; 1080 x 1920 maximum resolution; 178-degree viewing angles; DVI and VGA inputs; wall-mountable; integrated dual 2W speakers', 'https://api.bestbuy.com/click/-/4294507/pdp'),
(323, 'GSS116E100NAS', 'Network Switches', 'COMPUTERS', 'NETGEAR', 606449105223, 4320442, '149.99', '149.99', 'Gigabit Ethernet switch; 32 Gbps bandwidth; easy-to-install bracket-mounting system; includes multidirectional power cable', 'https://api.bestbuy.com/click/-/4320442/pdp'),
(324, 'NS-PCH6430', 'USB Hubs', 'ACCESSORIES', 'Insignia™', 600603191459, 4333600, '24.99', '24.99', 'Compatible with most devices with USB 2.0 connectivity; expands 1 USB 3.0 port into 4; 5V, 500 mAh/port output; data transfer speeds up to 3 Gbps; USB-powered design; plug-and-play operation', 'https://api.bestbuy.com/click/-/4333600/pdp'),
(325, 'HDMI-EXTC', 'Monitor & Video Cables', 'COMPUTERS', 'Sabrent', 857161001748, 4335577, '49.99', '49.99', 'SABRENT HDMI and DVI over Cat-5e Extender Adapter: sender and receiver units; compatible with Cat-5e or Cat-6 cables; HDCP compliant; signal rates up to 2.25Gbits; feedback, equalization and amplification autoadjust', 'https://api.bestbuy.com/click/-/4335577/pdp'),
(326, '1023459', 'PC Add-Ons', 'INTERACTIVE SOFTWARE', 'No manufacturer', 400043383007, 4338300, '19.99', '19.99', 'Give your Sims a day of relax at the all-new Perfect Balance Spa', 'https://api.bestbuy.com/click/-/4338300/pdp'),
(327, 'EF-BT710PBEGUJ', 'Tablet Cases, Covers & Keyboard Folios', 'COMPUTERS', 'Samsung', 887276071268, 4346001, '59.99', '35.99', 'Compatible with Samsung Galaxy Tab S2 8; polyurethane material; auto on/off function; 3 viewing angles', 'https://api.bestbuy.com/click/-/4346001/pdp'),
(328, 'SMX3000RMLV2U', 'Battery Backup (UPS)', 'ACCESSORIES', 'APC', 731304268550, 4352898, '2475.99', '1539.99', '3000 VA/2700 W - 120 V AC - 6 Minute - 2U Rack-mountable - 6 Minute - 1 x NEMA L5-30R - , 3 x NEMA 5-15R - , 3 x NEMA 5-20R', 'https://api.bestbuy.com/click/-/4352898/pdp'),
(329, 'TLSG1016D', 'Network Switches', 'COMPUTERS', 'TP-Link', 845973020613, 4359855, '79.99', '79.99', 'TP-LINK 16-Port 10/100/1000 Mbps Gigabit Ethernet Switch: Wired; provides a network connection for up to 16 devices; Green technology; nonblocking architecture; 10/100/1000 Mbps Gigabit Ethernet; up to 32 Gbps switching capacity; auto MDI/MDIX', 'https://api.bestbuy.com/click/-/4359855/pdp'),
(330, 'TLSG1024D', 'Network Switches', 'COMPUTERS', 'TP-Link', 845973020620, 4359864, '99.99', '99.99', 'TP-LINK 24-Port 10/100/1000 Mbps Gigabit Ethernet Switch: Wired; provides a network connection for up to 24 devices; Green technology; nonblocking architecture; 10/100/1000 Mbps Gigabit Ethernet; up to 48 Gbps switching capacity; auto MDI/MDIX', 'https://api.bestbuy.com/click/-/4359864/pdp'),
(331, 'TL-WR940N', 'Wireless Routers', 'COMPUTERS', 'TP-Link', 845973051464, 4360023, '29.99', '26.99', 'Up to 300 Mbps data transfer rates; Firewall; VPN support; DMZ port; DHCP support; NAT support; auto-negotiation; auto-uplink (auto MDI/MDI-X); dynamic DNS server; MAC address filtering; VPN passthrough; URL filtering; IP address filtering; SNTP support', 'https://api.bestbuy.com/click/-/4360023/pdp'),
(332, 'N9H63FN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889894153623, 4363101, '48.99', '48.99', 'Black cartridge yields up to 200 pagesTricolor cartridge yields up to 165 pagesCompatible with select HP DeskJet and PhotoSmart printers', 'https://api.bestbuy.com/click/-/4363101/pdp'),
(333, 'N9H64FN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889894153630, 4363200, '39.99', '39.99', 'Compatible with select HP Printers', 'https://api.bestbuy.com/click/-/4363200/pdp'),
(334, 'K7V40A#B1H', 'Inkjet Printers', 'COMPUTERS', 'HP', 889296063285, 4363407, '99.99', '79.99', '4-in-1 functionalityWi-FiPrints up to 8.5 ISO ppm in black, up to 6 ISO ppm in color (Print speeds vary with use. See mfg. for info on print speeds.)60-sheet input tray2.2\" mono touch screen', 'https://api.bestbuy.com/click/-/4363407/pdp'),
(335, 'N001-025-BK', 'Ethernet Cables', 'ACCESSORIES', 'Tripp Lite', 37332042644, 4366919, '5.99', '5.99', 'Cabling for category 5 (Cat5) and 5e (Cat5e) applications; molded connectors; snagless design; PVC 4-pair stranded UTP; rated for 350MHz/1Gbps communication; IEEE 802.3ab, IEEE 802.5, ANSI/EIA/TIA 568, ISO/IEC 11801 and ETL (category 5e draft 11); ROHS', 'https://api.bestbuy.com/click/-/4366919/pdp'),
(336, 'F6U64AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889296267423, 4370700, '39.99', '39.99', 'Yields up to 480 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4370700/pdp'),
(337, 'F6U63AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889296267416, 4370800, '41.99', '41.99', 'Yields up to 330 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4370800/pdp'),
(338, 'F6U62AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889296267409, 4370901, '20.99', '20.99', 'Yields up to 190 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4370901/pdp'),
(339, 'F6U61AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889296267393, 4370908, '28.99', '28.99', 'Yields up to 165 pagesCompatible with select HP Printers', 'https://api.bestbuy.com/click/-/4370908/pdp'),
(340, 'L0R46AN#140', 'Printer Ink', 'PHOTO/COMMODITIES', 'HP', 889296267430, 4371000, '45.99', '45.99', 'Compatible with select HP Printers', 'https://api.bestbuy.com/click/-/4371000/pdp'),
(341, '70887-C248', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Speck', 848709022929, 4372607, '99.99', '99.99', 'SPECK MightyPack Plus Backpack: Laptop sleeve; mouse and power supply pockets; hard shell top pocket; breathable mesh pocket; polyester interior; triple-layered foam; pass-through; quick-release strap with external strap pocket', 'https://api.bestbuy.com/click/-/4372607/pdp'),
(342, 'NS-PMM6120', 'Monitor Mounts & Stands', 'ACCESSORIES', 'Insignia™', 600603189890, 4374500, '39.99', '39.99', 'Supports most monitors up to 27\"; Adjustable height, angle and horizontal position; Integrated cable management clips; Requires monitor with 50X50mm, 75x75mm or 100x100 mm VESA mounts', 'https://api.bestbuy.com/click/-/4374500/pdp'),
(343, '910-004432', 'Wireless & Bluetooth Mice', 'COMPUTERS', 'Logitech', 97855113726, 4375300, '29.99', '29.99', 'Optical technology; navigation button; tilt wheel; Bluetooth connectivity', 'https://api.bestbuy.com/click/-/4375300/pdp'),
(344, 'FQC-08930', 'Operating Systems', 'COMPUTER SOFTWARE', 'Microsoft', 885370920932, 4379719, '169.99', '151.99', 'Welcome to the new Windows with new and classic features', 'https://api.bestbuy.com/click/-/4379719/pdp'),
(345, 'MF810CDN', 'Color Laser Printers', 'COMPUTERS', 'Canon', 13803252309, 4382300, '898.99', '898.99', '3-in-1 functionalityPrints up to ISO 26 ppm (Print speeds vary with use. See mfg. for info on print speeds.)550-sheet input tray, 100-sheet multipurpose trayTouch-screen LCD', 'https://api.bestbuy.com/click/-/4382300/pdp'),
(346, 'MM200-M', 'Gaming Mouse Pads', 'COMPUTERS', 'CORSAIR', 843591059367, 4384400, '16.99', '16.99', 'Compatible with most laser and optical gaming mice; textile-weave surface; cloth construction; antiskid rubber base', 'https://api.bestbuy.com/click/-/4384400/pdp'),
(347, 'ROC-13-170-AM', 'Gaming Mouse Pads', 'COMPUTERS', 'ROCCAT', 4250288190580, 4384501, '14.99', '14.99', 'Compatible with most mice; long life material; heavy-duty stitched border ; total control surface; rubberized backing', 'https://api.bestbuy.com/click/-/4384501/pdp'),
(348, 'PAS-213BLACK', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854213523, 4392386, '34.99', '19.99', 'CASE LOGIC Sleeve for 13\" Apple MacBook Pro: Compatible with 13\" Apple MacBook Pro; suede and neoprene materials; zippered Power Pocket; USB drive pocket; slimline design; asymmetrical zipper', 'https://api.bestbuy.com/click/-/4392386/pdp'),
(349, 'VNA-210BLACK', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854217620, 4392437, '24.99', '18.99', 'CASE LOGIC Attache for Apple iPad and iPad 2: Compatible with Apple iPad and iPad 2 and fits most laptops with a 7\" - 10.2\" display; dobby nylon material; Power Pocket; accessory pockets; zippered document pocket; USB drive pocket; handle; shoulder strap', 'https://api.bestbuy.com/click/-/4392437/pdp'),
(350, 'VNM-217BLACK', 'Laptop Bags & Cases', 'PHOTO/COMMODITIES', 'Case Logic', 85854217644, 4392455, '54.99', '39.99', 'CASE LOGIC Messenger Laptop Bag: Compatible with most laptops with up to a 17\" display; dobby nylon material; padded, zippered laptop pocket; accessory pockets; integrated USB drive pocket; removable shoulder strap; padded handle; luggage strap', 'https://api.bestbuy.com/click/-/4392455/pdp'),
(351, 'NS-MSSTL2U', 'Tablet Stylus Pens', 'COMPUTERS', 'Insignia™', 600603194931, 4400306, '9.99', '9.99', 'Stainless steel construction; silicone tip; pocket clip; ergonomic design', 'https://api.bestbuy.com/click/-/4400306/pdp');

-- --------------------------------------------------------

--
-- Stand-in structure for view `products_view`
-- (See below for the actual view)
--
CREATE TABLE `products_view` (
`category_id` int(10) unsigned
,`model_number` varchar(255)
,`category_name` varchar(255)
,`deparment_name` varchar(255)
,`manufacturer_name` varchar(255)
,`upc` bigint(20)
,`sku` int(11)
,`regular_price` decimal(10,2)
,`sale_price` decimal(10,2)
,`description` varchar(255)
,`url` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `task_users`
--

CREATE TABLE `task_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_users`
--

INSERT INTO `task_users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'User_ONE', 'userone@task.com', 'userone'),
(2, 'User_TWO', 'usertwo@task.com', 'usertwo');

-- --------------------------------------------------------

--
-- Structure for view `products_view`
--
DROP TABLE IF EXISTS `products_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products_view`  AS SELECT `category_products`.`category_id` AS `category_id`, `products`.`model_number` AS `model_number`, `products`.`category_name` AS `category_name`, `products`.`deparment_name` AS `deparment_name`, `products`.`manufacturer_name` AS `manufacturer_name`, `products`.`upc` AS `upc`, `products`.`sku` AS `sku`, `products`.`regular_price` AS `regular_price`, `products`.`sale_price` AS `sale_price`, `products`.`description` AS `description`, `products`.`url` AS `url` FROM (`category_products` join `products` on(`category_products`.`category_name` = `products`.`category_name`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `task_users`
--
ALTER TABLE `task_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_unique` (`user_email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=755;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `task_users`
--
ALTER TABLE `task_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

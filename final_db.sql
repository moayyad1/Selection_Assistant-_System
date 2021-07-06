-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 06:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `name`, `image`, `price`, `description`) VALUES
(15, 'Arozzi Sfera USB Microphone for Gaming & Streaming, Chrome', 'mic1.png', 35.00, 'High-quality condenser capsule technology with Cardioid pick up pattern  Adjustable Stand  3.5 mm headphone jack with volume Controller  Mute button, custom design USB cable and cable Clip  5/8 inch thread mount'),
(16, 'Arozzi Sfera USB Microphone for Gaming & Streaming, Red', 'mic2.png', 35.00, 'High-quality condenser capsule technology with Cardioid pick up pattern  Adjustable Stand  3.5 mm headphone jack with volume Controller  Mute button, custom design USB cable and cable Clip  5/8 inch thread mount'),
(17, 'Arozzi Colonna USB Microphone for Streaming and Gaming - Black', 'mic3.png', 69.00, 'High-quality condenser capsule Technology with switchable pickup patterns. (Omni-directional, cardioid, bidirectional) Adjustable Stand 3.5 mm headphone jack with volume Controller 5/8 inch thread mount Includes a custom Designed USB cable'),
(18, 'Redragon BLAZAR GM300 Gaming Stream Microphone', 'mic4.png', 49.00, 'Patented cool design, full metal made, support circle LED in custom colour , One button, support Volume control & Mute , High-end mic unit, Cardioid, pick up sound from front and both sides, minimize sound from backside , USB plug cable, with USB-B to USB'),
(19, 'Redragon QUASAR GM200 Gaming Stream Microphone', 'mic5.png', 25.00, 'Unique patented product, origins from battle concept airship, be personally on the scene ? High quality microphone unit, Omnidirectional, delicate and rich sound pickup ? USB plug braided cable, durable and compatible with all desktop computers and laptop'),
(22, 'HyperX Cloud II Wireless 7.1 For PC, PS4, Nintendo Battery Up to 30 Hours', 'hd3.png', 129.00, 'Gaming-grade wireless with long battery life: Cut the cord and roam free with low-latency 2.4GHz Wireless connection, a range of up to 20 meters and a battery life of up to 30 hours. Signature HyperX comfort: Premium memory foam and soft, pliable leathere'),
(25, 'HyperX Cloud Stinger S Gaming Headset 7.1 Surround , Black\r\n', 'hd4.png', 59.00, 'Virtual 7.1 Surround Sound via HyperX Ngenuity: Get more immersion and better positional audio with virtual 7.1 surround sound provided by HyperX Ngenuity software.\r\nImmersive In-Game Audio: 19mm drivers are positioned parallel to your ear for optimal sou'),
(26, 'SteelSeries Arctis Pro + GameDAC Gamer Headphones', 'hd5.png', 265.00, 'High-resolution capable premium speakers with high-density neodymium magnets reproduce a full, wide frequency range of 10 - 40,000 Hz with impressive realism and clarity Luxurious polished aluminum and steel alloy frame offers maximum durability and a con');

-- --------------------------------------------------------

--
-- Table structure for table `cams`
--

CREATE TABLE `cams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cams`
--

INSERT INTO `cams` (`id`, `name`, `image`, `price`, `description`) VALUES
(10, 'Logitech C930c FHD Smart 1080P Webcam 4 Time Digital Zoom', 'cam5.png', 110.00, 'This is the Asian Model of Logitech C930E'),
(11, 'Canon EOS 1300D DSLR Camera with EF-S18-55 DC', 'cam6.png', 315.00, '18 MP APS-C CMOS sensor and DIGIC 4+ 9-point AF with one center cross-type AF point'),
(7, 'Genius QCam 6000 Black 1080p Webcam Full HD Webcam , Black', 'cam2.png', 49.00, 'Webcam 1080p Full HD resolution 30fps Built-in digital'),
(8, 'Redragon GW600 720P Microphone 360-Degree Rotation 2.0 USB WebCam', 'cam3.png', 29.00, '720P HD Resolution - Advanced optical lens with fix-focus and light correction function'),
(6, 'Genius ECam 8000 Black 1080p Webcam Full HD Webcam', 'cam1.png', 49.00, 'Full HD 1080p makes a vivid impression every time with true-to-life video calls.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `name`) VALUES
(5, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'Xigmatek NYX 3F RGB Fans Tempered Glass Gaming Case', 'cas1.png', 25.00, 'The NYX 3F chassis of Xigmatek can support two types of Motherboards as Micro-ATX and Mini-ITX'),
(3, 'ASUS ROG Z11 Mini-ITX/DTX Mid-Tower PC Gaming Case ARGB', 'cas2.png', 199.00, 'Premium aesthetics 4mm tempered-glass panels with sleek aluminum frame and Aura Sync lighting'),
(4, 'Deepcool MACUBE 110 Micro ATX Tempered Glass Side - Pink', 'cas3.png', 39.00, 'Refined minimalism design  Magnetic tempered glass side panel  Mesh top panel'),
(5, 'Xigmatek Vortex Rainbow LED Front Panel Tempered Glass - Black', 'cas4.png', 25.00, 'Vortex (ATX, USB3.0x1+USB2.0x2, Rainbow LED Front Panel, Left Tempered Glass, Rear SYNC XCR120 Fan)'),
(6, 'Thermaltake View 51 Tempered Glass ARGB Edition Gaming - Black', 'cas5.png', 175.00, 'Patented 8 Rotating PCI-E Slots Design - With patented rotating PCI-E slots you can choose how you want to display graphics cards vertically or horizontally.');

-- --------------------------------------------------------

--
-- Table structure for table `chairs`
--

CREATE TABLE `chairs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chairs`
--

INSERT INTO `chairs` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'MSI MAG CH120 X Gaming Chair Red / Black', 'chair1.png', 219.00, 'Complete steel frame support 180° fully reclinable backrest 4D Multi-A'),
(2, 'Arozzi Primo Premium Woven Fabric Gaming/Office Chair - Black', 'chair1.png', 349.00, 'Woven Fabric Material Built in adjustable lumbar support system'),
(3, 'Arozzi Primo Premium PU Leather Gaming/Office Chair - Gold Logo', 'chair2.png', 329.00, 'PU Leather Material Soft neck pillow made out of velour'),
(4, 'Arozzi Primo Premium PU Leather Gaming/Office Chair - Black Logo', 'chair3.png', 329.00, 'Soft neck pillow made out of velour'),
(5, 'Arozzi Vernazza Soft Fabric Gaming Chair - Ash', 'chair4.png', 289.00, 'Soft yet durable furniture fabric , Soft neck & lumbar support pillows ,'),
(6, 'Arozzi Verona XL+ Ultimate Heavy-Duty Gaming Chair - Red', 'chair5.png', 239.00, 'Reinforced & Durable Ergonomic Metal Frame , Solid Aluminum 5-star Base ');

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'Intel 11Gen Core i9-11900F 8-Cores up to 5.2 GHz 16 MB Cache', 'cpu1.png', 399.00, 'Base: 2.5GHz, Turbo: 5.2GHz 8 Cores, 16 Threads'),
(3, 'AMD RYZEN 5 5600X 6-Core 3.7 GHz (4.6 GHz Max Boost)', 'cpu3.png', 299.00, 'fastest 6-core processor for the main desktop, with 12 threads'),
(4, 'Intel Core i7-10700KA Comet Lake 8-Cores up to 5.1 GHz 16MB', 'cpu3_.png', 369.00, 'MPN: BX8070110700KA'),
(5, 'AMD Ryzen Threadripper 3960X 24-Cores up to 4.5GHz', 'cpu4_.png', 1399.00, 'AMD Ryzen™ Threadripper 3960X, TRX4, Zen 2, 24 Core, 48 Thread, 3.8GHz, 4.5GHz Turbo, PCIe 4.0, 280W, CPU');

-- --------------------------------------------------------

--
-- Table structure for table `desktop_memory`
--

CREATE TABLE `desktop_memory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desktop_memory`
--

INSERT INTO `desktop_memory` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'HyperX Fury 32GB RGB 3600 MHz DDR4 Memory', 'd_mem1.png', 169.00, 'Stunning RGB lighting with aggressive style Intel XMP-ready Ready for AMD Ryzen'),
(3, 'G.Skill Trident Z Neo 16GB Kit ( 2x 8GB) DDR4 3600 Mhz', 'd_mem2.png', 90.00, 'Trident Z Neo Series, designed specifically for AMD Ryzen 3000, X570 Series  16GB kit containing 2x 8GB modules'),
(4, 'G.SKILL Gaming Aegis 16GB ( 1 x 16GB ) DDR4 3000Mhz', 'd_mem3.png', 55.00, 'DDR4 3000 (PC4 24000) , Timing 16-18-18-38 , CAS Latency 16 , Voltage 1.35V'),
(6, 'Corsair Dominator Platinum 8GB DDR3 SDRAM PC 2133 MHz', 'd_mem4.png', 65.00, ' undergoes rigorous performance testing, and incorporates state-of-the-art cooling for reliable performance in demanding environments.'),
(7, 'HyperX Fury 8GB 3600 MHz DDR4 Memory', 'd_mem5.png', 45.00, 'Updated low-profile heat spreader design , Cost-efficient, high-performance DDR4 upgrade , Intel XMP-ready , Ready for AMD Ryzen ,');

-- --------------------------------------------------------

--
-- Table structure for table `gaming_laptop`
--

CREATE TABLE `gaming_laptop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaming_laptop`
--

INSERT INTO `gaming_laptop` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'MSI GF75 Thin 17.3\" NEW 10Gen Core i7 6-Cores w/ GTX 1660TI 144Hz', 'lab1.png', 999.00, 'MSI GF75 Thin 10Gen Core i7 6-Core up to 5.0GHz 12M Cashe , 16GB DDR4 RAM , 1TB NVMe PCIe Gen3 SSD ,  Nvidia GeForce GTX 1660 TI 6GB DDR6 , '),
(3, 'ASUS ROG Zephyrus G14 GA401II AMD Ryzen 7 w/GTX 1650TI 120hz - Grey', 'lab2.png', 1199.00, 'Asus ROG Zephyrus G14 GA401II-HE194T NEW Ryzen 7 4Gen 4800HS up to 4.2 GHz 8 -Cores 12M Cashe, 16 GB RAM DDR4 , 1TB NVMe M.2 SSD ,'),
(4, 'HP Gaming Pavilion 15-dk1020ne 10Gen I7 w/ GTX 1660 TI', 'lab3.png', 999.00, 'HP Gaming Pavilion 15-dk1020ne 10Gen Intel Core i7 up to 5.0GHz 6-Cores 12M Cache, 16GB DDR4 Memory , 256 GB PCIe® NVMe™ M.2 SSD + 1TB HDD  ,'),
(5, 'HP Gaming Pavilion 15-dk1056wm 10Gen I5 w/ GTX 1650', 'lab4.png', 699.00, 'HP Gaming Pavilion 15-dk1056wm 10Gen Intel Core i5 up to 4.5GHz  4-Cores 8M Cache,8GB DDR4 Memory, 256 GB PCIe® NVMe™ M.2 SSD, Nvidia GTX1650 4GB DDR6 '),
(6, 'ASUS ROG Zephyrus G14 GA401QM AMD Ryzen 9 5900HS w/RTX 3060 144hz', 'lab5.png', 1499.00, 'Asus ROG Zephyrus G14 GA401QM-211 NEW Ryzen 9 5Gen 5900HS up to 4.5 GHz 8 -Cores 16M Cashe, 16 GB RAM DDR4 , 1TB NVMe M.2 SSD , '),
(7, 'Lenovo IdeaPad GAMING 3 NEW Core i7 10Gen w/ GTX 1650TI & 120Hz', 'lab6.png', 799.00, 'Lenovo IdeaPad GAMING 3 NEW 10Gen Core i7 10750H up to 5.0GHz 12M Cash 6-Cores , 8GB RAM DDR4 , 512GB SSD M.2 NVMe , '),
(8, 'MSI GF65 Thin NEW 10Gen Core i7 6-Cores w/ GTX 1660TI 144Hz w/o Gaming Headset', 'lab7.png', 925.00, 'MSI GF65 Thin 10Gen Core i7 6-Core up to 5.0GHz 12M Cashe , 16GB DDR4 RAM , 1TB NVMe PCIe Gen3 SSD ,  Nvidia GeForce GTX 1660 TI 6GB DDR6 ,  '),
(9, 'MSI GF65 Thin NEW 10Gen Core i7 6-Cores w/ GTX 1660TI 144Hz w/ Gaming Headset', 'lab8.png', 949.00, 'MSI GF65 Thin 10Gen Core i7 6-Core up to 5.0GHz 12M Cashe , 16GB DDR4 RAM , 1TB NVMe PCIe Gen3 SSD ,  Nvidia GeForce GTX 1660 TI 6GB DDR6 '),
(10, 'ASUS TUF Dash F15 (2021) 11Gen Core i7 w/Nvidia RTX 3070 240Hz', 'lab9.png', 1499.00, 'ASUS TUF Dash F15 (FX516PM-211.TF15) 11Gen Intel Core i7 up to 4.8GHz 12M Cash 4-Cores , 16GB RAM DDR4 , 1TB M.2 NVMe™ PCIe® 3.0 SSD ,'),
(11, 'ASUS TUF Dash F15 (2021) 11Gen Core i7 w/Nvidia RTX 3060 144Hz', 'lab10.png', 1099.00, 'ASUS TUF Dash F15 (FX516PM-211.TF15) 11Gen Intel Core i7 up to 4.8GHz 12M Cash 4-Cores , 16GB RAM DDR4 , 512GB M.2 NVMe™ PCIe® 3.0 SSD ,');

-- --------------------------------------------------------

--
-- Table structure for table `gaming_monitors`
--

CREATE TABLE `gaming_monitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaming_monitors`
--

INSERT INTO `gaming_monitors` (`id`, `name`, `image`, `price`, `description`) VALUES
(19, 'HP OMEN 27\" QHD 165Hz 1ms G-Sync Gaming Monitor', 'mtr8.png', 579.00, '165Hz refresh rate, 1ms GTG 2560 x 1440 @ 165Hz (QHD) NVIDIA G-SYNC Technology Height Adjustable HDMI/Display Port/USB 3.0 x 2'),
(17, 'ASUS Curved VG328H1B 32\" Full HD 165Hz 1ms Console Ready', 'mtr6.png', 349.00, '32-inch Full HD (1920 x 1080) 1500R curved gaming monitor with 165 Hz ultra refresh rate designed for professional gamers and immersive gaming ASUS Extreme Low Motion Blur (ELMB) technology enables a 1ms response time (MPRT) along with adaptive sync, elim'),
(18, 'ASUS ROG Swift 360Hz PG259QN 25” IPS HDR FHD G-SYNC Eye Care', 'mtr7.png', 649.00, '24.5-inch Full HD (1920 x 1080) Fast IPS panel and the world’s first 360Hz gaming monitor ASUS Fast IPS technology enables a 1 ms response time (GTG) for sharp gaming visuals with high frame rates. NVIDIA G-SYNC processor provides smooth, tear-free gaming'),
(16, 'Dell SE2719H 27-inch IPS Full-HD Monitor Display Port & VGA', 'mtr5.png', 169.00, 'Device Type - LED-backlit LCD monitor - 27\", Aspect Ratio -16:9, Contrast Ratio - 1000:1 , Panel Type - IPS, Full HD (1080p) 1920 x 1080 at 60 Hz, Response Time - 8 ms (grey-to-grey normal); 5 ms (grey-to-grey fast) , Input Connectors - Display Post, VGA'),
(15, 'MSI Optix G24C4 24\" Curved FHD 144Hz 1ms FreeSync Gaming Monitor', 'mtr4.png', 179.00, '1920 x 1080 Full HD Resolution 144Hz Refresh Rate 1ms (MPRT) Response Time 2 x HDMI (1.4), DisplayPort (1.2) Video Inputs AMD FreeSync Technology Anti-Flicker with Low Blue Light Tilt Adjustable VESA Mount Compatible'),
(12, 'LG 32GN550-B 32\" IPS Full HD 165Hz HDR10 G-Sync Compatible', 'mtr1.png', 375.00, '32\" FHD (1920x1080) IPS Display 165 Hz Refresh rate 1 ms response time (MBR) NVIDIA G-SYNC Compatible with With AMD FreeSync Premium sRGB 95% Color Gamut with HDR10 Tilt/Height/Pivot Adjustable Stand'),
(13, 'LG 27UL650-W 27\" UHD 4K IPS LED HDR 400 with VESA Display', 'mtr2.png', 339.00, '27-inch IPS UHD screen (3840 x 2160). VESA DisplayHDR 400. sRGB 99% color gamut. Virtually borderless 3-sided display. Radeon FreeSync Maximum stand height: 4331 in. 60 Hertz'),
(14, 'Asus TUF VG279Q1R 27\" IPS Full HD 1ms 144Hz FreeSync', 'mtr3.png', 249.00, '27-inch Full HD (1920 x 1080) gaming monitor with ultrafast 144Hz refresh rate designed for professional gamers and immersive gameplay ASUS Extreme Low Motion Blur (ELMB ) technology enables a 1ms response time (MPRT) together with Adaptive-sync, eliminat'),
(20, 'ASUS TUF VG27AQL1A 27” HDR 2K 170Hz IPS 1ms G-SYNC Compatible', 'mtr9.png', 499.00, '27-inch WQHD (2560 x 1440) IPS gaming monitor with ultrafast 170Hz overclock refresh rate (supports 144Hz) and 1ms (MPRT) response time, designed for professional gamers and immersive gameplay ASUS Extreme Low Motion Blur Sync (ELMB SYNC) technology enabl'),
(21, 'ASUS ROG Strix XG27WQ 27” HDR 2K 165Hz Cureved FreeSync & G-SYNC', 'mtr10.png', 449.00, 'WQHD (2560 x 1440) Curved Gaming Monitor with Ultra afast 165 Hz refresh rate designed for professional gamers and immersive gameplay ASUS Extreme Low Motion Blur (MBTM) technology with 1 ms response time (MPRT) Together with Adaptive-Sync, eliminating gh');

-- --------------------------------------------------------

--
-- Table structure for table `gaming_pc`
--

CREATE TABLE `gaming_pc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaming_pc`
--

INSERT INTO `gaming_pc` (`id`, `name`, `image`, `price`, `description`) VALUES
(3, 'CC Power 26RTX III Gaming PC 3Gen RYZEN 7 w/ RTX 2060 6GB', 'g_pc1.png', 1179.00, '3rGen AMD RYZEN 7 3700X 8-Core 3.6 GHz (4.3 GHz Max Boost) , Kingston Hyper X 16GB DDR4 RGB 3200Mhz ,'),
(4, 'CC Power 26RTX IV Gaming PC 3Gen Ryzen 5 w/ RTX 2060 6GB', 'g_pc2.png', 1029.00, 'AMD RYZEN 5 3600 6-Core 3.6 GHz (4.2 GHz Max Boost) , Kingston Hyper X 16GB DDR4 RGB 3200Mh'),
(5, 'CC Power 26RTX II Gaming PC 10Gen Core i5 w/ RTX 2060 6GB', 'g_pc3.png', 999.00, 'Intel Core i5-10400F Comet Lake 6-Cores up to 4.3 GHz 12MB ,HyperX Fury 16GB (2 X 8GB ) 3200 MHz DDR4 Memory'),
(6, 'CC Power 26RTX I Gaming PC 10Gen Core i7 w/ RTX 2060 6GB', 'g_pc4.png', 1159.00, '10Gen Intel Core i7-10700F Comet Lake 8-Cores up to 4.8 GHz 16MB , HyperX Fury 16GB (2 X 8GB ) RGB 3200 MHz DDR4 Memory'),
(9, 'CC Power 66SGTX III Gaming PC 10Gen Core i5 w/ GTX 1660 SUPER', 'g_pc7.png', 869.00, '10Gen Intel Core i5-10400F Comet Lake 6-Cores up to 4.3 GHz 12MB , HyperX Fury 16GB (2 X 8GB ) 2666 MHz '),
(7, 'MSI MEG Infinite X 10TD-879AE 10Gen Core i7 Liquid Cooler w/ RTX 3070', 'g_pc5.png', 2399.00, 'MSI MEG Infinite X Gaming PC i7-10700KF 32GB 512GB SSD+2TB HDD RTX3070 W10H - Processor: Intel i7-10700KF 3.80GHz Base'),
(8, 'CC Power 66SGTX IV Gaming PC 10Gen Core i7 w/ GTX 1660 SUPER', 'g_pc6.png', 1069.00, '10Gen Intel Core i7-10700F Comet Lake 8-Cores up to 4.8 GHz 16MB , HyperX Fury 16GB (2 X 8GB ) RGB 3200 MHz DDR4 Memory , ASUS PRIME H510M-A Mainboard'),
(10, 'CC Power 66SGTX II Gaming PC 3Gen RYZEN 7 w/ GTX 1660 SUPER 6GB', 'g_pc8.png', 1099.00, '3rGen AMD RYZEN 7 3700X 8-Core 3.6 GHz (4.3 GHz Max Boost) , Kingston Hyper X 16GB DDR4 RGB 3200Mhz'),
(11, 'CC Power 66SGTX I Gaming PC 3Gen Ryzen 5 w/ GTX 1660 6GB SUPER', 'g_pc9.png', 899.00, 'AMD RYZEN 5 3600 6-Core 3.6 GHz (4.2 GHz Max Boost) , Kingston Hyper X 16GB DDR4 RGB 3200Mhz'),
(12, 'Powered By ASUS 38RTX II Gaming PC 5Gen Ryzen 7 w/ RTX 3080 Liquid Cooled', 'g_pc10.png', 3299.00, 'AMD RYZEN 7 5800X 8-Core 3.6 GHz (4.7 GHz Max Boost) , DEEPCOOL Castle 360EX RGB AIO Liquid Cooler');

-- --------------------------------------------------------

--
-- Table structure for table `graphic_card`
--

CREATE TABLE `graphic_card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graphic_card`
--

INSERT INTO `graphic_card` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'Asus NVIDIA Cerberus GTX1050 TI 4GB GDDR5 OC Edition', 'g_card1.png', 229.00, '4GB 128-Bit GDDR5\r\nCore Clock OC Mode: 1366 MHz\r\nGaming Mode (Default): 1341 MHz\r\nBoost Clock OC Mode: 1480 MHz\r\nGaming Mode (Default): 1455 MHz\r\n1 x DVI-D 1 x HDMI 2.0b 1 x DisplayPort 1.4\r\n768 CUDA Cores\r\nPCI Express 3.0'),
(3, 'ASUS NVIDIA GeForce GTX 1660 SUPER 6GB DUAL MINI OC Edition', 'g_card2.png', 459.00, '6GB 192-Bit GDDR6 Core Clock 1530 MHz Boost Clock OC Mode: 1860 MHz Gaming Mode (Default): 1830 MHz 1 x DVI-D 1 x HDMI 2.0b 1 x DisplayPort 1.4 1408 CUDA Cores PCI Express 3.0'),
(4, 'ASUS ROG Strix GeForce RTX 3060 OC Edition 12GB GDDR6', 'g_card3.png', 899.00, '3rd Generation Tensor Cores: Get up to 2x the performance with Structural Essence and advanced AI algorithms like DLSS. Now with support for up to 8K resolution, these cores offer a massive increase in gaming performance and AI capabilities. The Axial-Tec'),
(5, 'ASUS GeForce RTX 3070 OC Dual Edition 8GB GDDR6', 'g_card4.png', 1149.00, 'NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’s fastest, most efficient GPU, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency. 2nd Generation RT Cores: Experience 2X the throughput of 1st gen R'),
(6, 'ASUS TUF Gaming GeForce RTX 3070 8GB GDDR6 OC Edition', 'g_card5.png', 1200.00, '8GB 256-Bit GDDR6 2 x HDMI 2.1 3 x DisplayPort 1.4a 5888 CUDA Cores PCI Express 4.0');

-- --------------------------------------------------------

--
-- Table structure for table `hdd`
--

CREATE TABLE `hdd` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hdd`
--

INSERT INTO `hdd` (`id`, `name`, `image`, `price`, `description`) VALUES
(3, 'TOSHIBA 2TB 7200 RPM 32MB Cache SATA 3.5\" HDD', 'hdd1.png', 50.00, '7200 RPM performance, 6Gb/s SATA Interface  For use in consumer and commercial computers'),
(4, 'TOSHIBA 1TB 7200 RPM 32MB Cache SATA 3.5\" HDD', 'hdd2.png', 35.00, '7200 RPM performance, 6Gb/s SATA Interface For use in consumer and commercial computers'),
(5, 'HPE 1TB 7.2K SATA LFF 3.5\" Hot Swap Digitally Signed Firmware HDD', 'hdd3.png', 110.00, 'HPE 1 TB, SATA 7.2K rpm, large form factor hard drive in a low profile carrier with 1-year warranty'),
(6, 'HPE 1TB 6G 7.2K SATA 3.5 Non-Hot Plug MDL HDD', 'hdd4.png', 85.00, 'HP SATA Hard Drives are designed for the reliability and larger capacities demanded by todays entry server and external storage environments.'),
(7, 'Toshiba Canvio Basics 3TB USB 3.0 Portable Hard Drive - Black', 'hdd5.png', 55.00, 'USB 3.0-powered portable add-on storage Easy to use with no software to install');

-- --------------------------------------------------------

--
-- Table structure for table `laptop_memory`
--

CREATE TABLE `laptop_memory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop_memory`
--

INSERT INTO `laptop_memory` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'Kingston ValueRAM 8GB DDR4-3200 Notebook Memory', 'l_mem1.png', 40.00, 'Kingston KVR32S22S8/8 8GB DDR4 3200Mhz Non ECC Memory RAM SODIMM'),
(3, 'G.SKILL Ripjaws 8GB DDR4 SO-DIMM DDR4 2666 (PC4 21300)', 'l_mem2.png', 35.00, 'DDR4 2666 (PC4 21300) , CAS Latency 19 , 1.20V'),
(4, 'G.SKILL Ripjaws 8GB DDR3 SO-DIMM DDR3 1600 (PC3 12800) LV', 'l_mem3.png', 35.00, 'Make sure this fits by entering your model number.  8GB G.Skill Ripjaws DDR3 Laptop memory module'),
(5, 'Kingston ValueRAM 16GB DDR4-3200 Notebook Memory', 'l_mem4.png', 75.00, 'Kingston KVR32S22S8/16 16GB DDR4 3200Mhz Non ECC Memory RAM SODIMM'),
(6, 'Kingston ValueRAM 32GB DDR4-3200 Notebook Memory', 'l_mem5.png', 149.00, 'based on sixteen 2G x 8-bit FBGA components. The SPD is programmed to JEDEC standard latency DDR4-3200 timing of 22-22-22 at 1.2V. This 260-pin DIMM uses gold contact fingers.');

-- --------------------------------------------------------

--
-- Table structure for table `lcd_led_monitors`
--

CREATE TABLE `lcd_led_monitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lcd_led_monitors`
--

INSERT INTO `lcd_led_monitors` (`id`, `name`, `image`, `price`, `description`) VALUES
(3, 'Lenovo C22-20 21.5\" LED Monitor Full HD 75Hz HDMI / VGA', 'mtr11.png', 89.00, '1920 x 1080 Full HD VGA & HDMI 75Hz / 5ms Response Time Panel Type: TN VESA Mounting 100100'),
(4, 'SAMSUNG 24\" Odyssey G3 G35T Full HD144hz 1MS Gaming Monitor', 'mtr12.png', 199.00, '144Hz refresh rate eliminates lag and motion blur for exhilarating gameplay with ultra-smooth action.monitor.'),
(12, 'SAMSUNG 27\" M5 Smart Do-It-All Screen Mobile Connectivity', 'mtr16.png', 229.00, 'Mobile Connectivity: DeX Wireless unlocks a full PC experience. Use mobile productivity apps, like video conferencing, documents, and browsers, through just your monitor and phone Smart hub - seeing is even easier. Access tons of entertainment apps, like '),
(5, 'HP P22v G4 LED 21.5\" Full HD Monitor HDMI & VGA 3 Years Warranty', 'mtr13.png', 89.00, 'HP P22v G4 - P-Series - LED monitor - 22\" (21.5\" viewable) - 1920 x 1080 Full HD (1080p) @ 60 Hz - TN - 250 cd/m² - 1000:1 - 5 ms - HDMI, VGA - black'),
(6, 'LG 27UN880 27\" 4K IPS Display with USB Type-C & Ergo Stand', 'mtr14.png', 529.00, '27-inch IPS screen (3840 x 2160) Ergo stand (extendable / retractable / swivel / pivoting / tilt and height adjustment)'),
(11, 'SAMSUNG 27\" Odyssey G3 G35T Full HD144hz 1MS Gaming Monitor', 'mtr17.png', 229.00, '144Hz refresh rate eliminates lag and motion blur for exhilarating gameplay with ultra-smooth action. 1ms response time AMD FreeSync Premium Swivel.'),
(17, 'Dell U4320Q 43\" 4K UltraSharp IPS Thin Bezel USB-C VESA, Black', 'mtr18.png', 849.00, 'The only display you need: More ways to see it all: Picture-by-Picture (PBP) enables a comprehensive view of your work by displaying content from up to four different PCs onto one screen. It also includes five easy-to-use templates. Exceptional details: T'),
(18, 'LG 43UN700 43\" 4K IPS Display with USB Type-C & HDR10 w/ 4 HDM', 'mtr19.png', 899.00, '43” UHD (3840 x 2160) IPS display Usb Type C connectivity HDR10 support 4x HDMI inputs 10W x 2Ch built-in speakers Four screen split - picture in Picture'),
(19, 'ASUS ProArt PA248QV Professional 24\" WUXGA IPS 100% sRGB', 'mtr20.png', 239.00, '24. 1-inch 16: 10 WUXGA (1920 x 1200) IPS display with frameless design International color standard 100% sRGB and 100% Rec. 709 wide color gamut Calman Verified with factory pre-calibrated for excellent color accuracy (?E < 2) ASUS exclusive ProArt Prese'),
(20, 'HP Pavilion 27 Quantum Dot 2K HDR Ultra-Thin Design', 'mtr21.png', 369.00, 'STUNNING CONTENT - HP brings you true-to-life quality on the 27-inch Pavilion Quantum Dot glass display so you can create, stream, and edit stunning content QUAD HD - Quad HD (2560 x 1440) resolution and 16:9 aspect ratio ensures that projects are created');

-- --------------------------------------------------------

--
-- Table structure for table `memory_card`
--

CREATE TABLE `memory_card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memory_card`
--

INSERT INTO `memory_card` (`id`, `name`, `image`, `price`, `description`) VALUES
(3, 'Kingston 64GB SDXC Canvas Go Plus UHS-I C10 U3 V30', 'mem2.png', 10.00, 'Superior speeds — Transfer and capture content faster with read/write speeds up to 170/90MB/s. Ideal for shooting 4K UHD video and burst mode photography on your DSLR '),
(2, 'Kingston 256GB SDXC Canvas Go Plus 170MB /s C10, U3, V30 Memory Card', 'mem1.png', 35.00, 'Higher speeds - Transfer and capture content faster with read / write speeds of up to 170/90 MB / s. Ideal for recording 4K UHD video and burst photography on your DSLR camera. High speeds'),
(4, 'Kingston SDS2/64GB Canvas Select Plus SD Card Class 10 UHS-I', 'mem3.png', 9.00, 'Class 10 UHS-I speeds up to 100 MB/s* Capture images and videos in Full HD (1080p) and 4K UHD'),
(5, 'Kingston 32GB SDHC Canvas Select Plus Class 10 UHS-I U1 V10', 'mem4.png', 7.00, 'Faster speeds — Class 10 UHS-I speeds up to 100MB/s. * Capture in full HD & 4K UHD video (1080P) '),
(6, 'Kingston SDCS2/256GB Canvas Select Plus 512GB Class 10', 'mem5.png', 55.00, 'Kingston’s Canvas Select Plus microSD is compatible with Android devices and designed with A1-rated performance. ');

-- --------------------------------------------------------

--
-- Table structure for table `portable_monitors`
--

CREATE TABLE `portable_monitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portable_monitors`
--

INSERT INTO `portable_monitors` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'ASUS MB16AC ZenScreen 15.6\" Full HD Portable USB-C/3.0 Monitor', 'po1.png', 219.00, '15.6” FHD IPS USB Type-C portable monitor with hybrid signal solution for compatibility with USB Type-C and Type-A sources (Note: DisplayLink driver needed for Type-A connection) , Ultra-portable award-winning design at 1.7 pounds and 0.3 inches slim to p'),
(3, 'GALAXY Z-1 Pro 15.8\" IPS Full HD Portable Monitor USB C & mini HDMI', 'po2.png', 139.00, '- Supporting PC display on the same screen.  - Multi-screen display of notebook and desktop computer  - Type-C One-Line video and audio transfer  - Phone supporting type-C 3.1 protocol for audio and video data transmission  - 99% HDMI output devic  - Conn'),
(4, 'Asus Zenscreen MB16ACM 15.6\" Full HD IPS Eye Care USB Type-C', 'po3.png', 239.00, '15 6” Full HD (1920x1080) IPS USB Type-C portable monitor with hybrid signal solution for compatibility with USB Type-C and Type-A sources (Note Display Link driver needed for Type-A connection) Ultra-portable award-winning design at 1 7 pounds and 0 3 in'),
(5, 'GALAXY K-3 Pro 15.6\" IPS Full HD Portable Monitor USB C & mini HDMI', 'po4.png', 119.00, '- Supporting PC display on the same screen.  - Multi-screen display of notebook and desktop computer  - Type-C One-Line video and audio transfer  - Phone supporting type-C 3.1 protocol for audio and video data transmission  - 99% HDMI output device(camera'),
(6, 'Asus Zenscreen GO 15.6\" MB16AHP IPS USB Type-C Portable', 'po5.png', 289.00, '15. 6” FHD Anti-Glare IPS Micro HDMI and USB Type-C portable monitor , Ultra-portable award-winning design at 1. 9 pounds and 0. 3 inches slim to pair perfectly with Asus laptops and zenfones , Built to be on-the-go with 7800mAh battery and stereo speaker');

-- --------------------------------------------------------

--
-- Table structure for table `ssd`
--

CREATE TABLE `ssd` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssd`
--

INSERT INTO `ssd` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'Kingston A400 120GB SATA M.2 2280 Internal SSD', 'ssd1.png', 20.00, 'Fast start up, loading and file transfers , More reliable and durable than a hard drive ,. Multiple capacities with space for applications or a hard drive replacement'),
(4, 'Kingston NV1 500GB M.2 2280 PCIe NVMe SSD', 'ssd3.png', 49.00, 'Kingston’s NV1 NVMe™ PCIe SSD is a substantial storage solution that offers read/write1 speeds up to 2,100/1,700MB/s, '),
(5, 'Kingston Data Centre DC500M 960 GB Enterprise Solid-State Drives', 'ssd4.png', 165.00, 'Predictable random I/O performance and latencies over a wide range of workloads  Mixed-use design for balanced performance '),
(6, 'Kingston Data Centre DC500M 1.92 TB Enterprise Solid-State Drives', 'ssd5.png', 299.00, 'Predictable random I/O performance and latencies over a wide range of workloads Mixed-use design for balanced performance '),
(7, 'Kingston KC2500 250GB M.2 PCI Express NVMe 3.0 x4', 'ssd6.png', 45.00, 'Better NVMe PCIe performance Supports a full-security suite (TCG Opal 2.0, XTS-AES 256 bit, eDrive)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`, `description`) VALUES
(78, 'Lenovo IdeaPad GAMING 3 NEW Core i7 10Gen w/ GTX 1650TI & 120Hz', 'l5.png', 799.00, 'Lenovo IdeaPad GAMING 3 NEW 10Gen Core i7 10750H up to 5.0GHz 12M Cash 6-Cores , 8GB RAM DDR4 , 512GB SSD M.2 NVMe , 15.6\" IPS Full HD 120hz ,Nvidia GTX 1650 TI 4GB DDR6 , Camera , Wireless , Blutooth , English Keyboard , Windows 10 Home'),
(77, 'HP Gaming Pavilion 15-dk1020ne 10Gen I7 w/ GTX 1660 TI', 'l4.png', 999.00, 'HP Gaming Pavilion 15-dk1020ne 10Gen Intel Core i7 up to 5.0GHz 6-Cores 12M Cache, 16GB DDR4 Memory ,  256 GB PCIe® NVMe™ M.2 SSD + 1TB HDD  ,  Nvidia GTX1660 TI 6GB DDR6  , 15.6\" FHD IPS 300nits , Camera , Wireless , Bluetooth , Arabic / English Keyborad'),
(76, 'ASUS ROG Zephyrus G14 GA401II AMD Ryzen 7 w/GTX 1650TI 120hz - Grey', 'l3.png', 1199.00, 'Asus ROG Zephyrus G14 GA401II-HE194T NEW Ryzen 7 4Gen 4800HS up to 4.2 GHz 8 -Cores 12M Cashe, 16 GB RAM DDR4 , 1TB NVMe M.2 SSD , Nvidia GeForce GTX 1650 TI 4GB DDR6 , 14.0\" WV FHD 120Hz 100% sRGB , Wireless , Blueooth , Arabic / English Keyboard , Windo'),
(74, 'MSI GF75 Thin 17.3\" NEW 10Gen Core i7 6-Cores w/ GTX 1660TI 144Hz', 'l1.png', 999.00, 'MSI GF75 Thin 10Gen Core i7 6-Core up to 5.0GHz 12M Cashe , 16GB DDR4 RAM , 1TB NVMe PCIe Gen3 SSD ,  Nvidia GeForce GTX 1660 TI 6GB DDR6 ,  17.3\" IPS Full HD 144Hz , Camera , Wireless ,Bluetooth ,  English Keyboard , Windows 10 Home'),
(73, 'Powered By Asus 37RTX I Gaming PC 5Gen Ryzen 5 w/ RTX 3070 Liquid Cooled', 'p5.png', 1899.00, '5Gen AMD RYZEN 5 5600X 6-Core up to 4.6 GHz 35MB Cash , Cooler MasterML240L ARGB Liquid Cooler , HyperX Fury 16GB RGB 3200 MHz DDR4 , ASUS Prime B550M-A WiFi  RGB Mainboard , Nvidia GeForce RTX 3070 8GB GDDR6 OC Edition , Cooler Master MasterCase H500 ARG'),
(72, 'CC Power 37RTX VI Gaming PC 10Gen Core i5 w/ RTX 3070', 'p4.png', 1599.00, 'Intel Core i5-10400F Comet Lake 6-Cores up to 4.3 GHz 12MB , HyperX Fury 16GB RGB 3200 MHz DDR4 , ASUS Prime B460-PLUS Intel B460 Mainboard ,  Nvidia GeForce RTX 3070 8GB GDDR6 OC Edition , DeepCool CL500 4F High Airflow A-RGB Case , Seasonic CORE GC 650w'),
(71, 'MSI MEG Infinite X 10TD-879AE 10Gen Core i7 Liquid Cooler w/ RTX 3070', 'p3.png', 2399.00, 'MSI MEG Infinite X Gaming PC i7-10700KF 32GB 512GB SSD+2TB HDD RTX3070 W10H - Processor: Intel i7-10700KF 3.80GHz Base, Up to 5.10GHz Max (8 Cores, 16 Threads) - Memory: U-DIMM 32GB (1x 32GB) DDR4 2933MHz RAM - Graphics Card: NVIDIA® MSI GeForce® RTX 3070');

-- --------------------------------------------------------

--
-- Table structure for table `touch_monitors`
--

CREATE TABLE `touch_monitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `touch_monitors`
--

INSERT INTO `touch_monitors` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'Asus VT168H 15.6” HD HDMI VGA 10-Point Touch Eye Care Monitor', 'tch1.png', 129.00, '15.6\" 1366x768 16: 9 touch monitor with 75x75mm VESA mounting Flexible connectivity with HDMI and VGA. Compliance and standards- energy Star, bema, cob, CE, C-TICK, EPEAT (silver) by region, Earp, j-moss, kick, PSB, RoHS, TCO6.0, tub-ergo, tugs, , Vici, W'),
(3, 'Dell P2418HT 24\" 16:9 TouchScreen IPS FHD Adjustable', 'tch2.png', 359.00, 'Dell P2418HT 24\" 16:9 Touchscreen IPS monitor, LED-backlit, 1920x1080P, 250cd/m2, 6ms (GTG), 1000:1, HDMI, VGA, DP, Swivel, Tilt, Height adjustable, USB Hub'),
(4, 'Asus VT229H 21.5\" IPS Full HD Touch Screen (Black)', 'tch3.png', 199.00, '21.5\" Full HD 10 Point Multi-Touch IPS Monitor - Panel Type: IPS - Resolution: Full HD 1920x1080 (16:9 Native Aspect Ratio) - Panel Size: 21.5\" - Brightness: 250 cd/m2 (Max) - Contrast Ratio: 1,000:1 (Max) - Response Time: 5ms GtG - Displayable Colours: 1'),
(5, 'Planar PCT2235 22\" Touchscreen LED w/ Speakers', 'tch4.png', 249.00, 'Planar PCT2235 22 inch 1,000:1 14ms VGA/HDMI/DisplayPort/USB Touchscreen LED LCD Monitor, w/ Speakers (Black)');

-- --------------------------------------------------------

--
-- Table structure for table `usb`
--

CREATE TABLE `usb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usb`
--

INSERT INTO `usb` (`id`, `name`, `image`, `price`, `description`) VALUES
(2, 'SanDisk 500GB Extreme Portable External SSD USB 3.1 Type-C', 'usb1.png', 69.00, 'High-speed transfers with up to 550MB/s read speeds let you move hi-res photos and videos faster (Based on internal testing; performance may be lower depending on drive capacity, '),
(3, 'My Passport SSD 512GB Portable SSD USB 3.2 Up to 1050MB/s Grey', 'usb2.png', 79.00, 'Equipped with the USB 3.2 Gen 2 technology, it offers easy-to-use connection to devices. My Passport SSD features a USB Type-C cable and USB Type-A adapter to work with legacy systems. USB-powered.'),
(4, 'My Passport SSD 512GB Portable SSD USB 3.2 Up to 1050MB/s Gold', 'usb3.png', 79.00, 'Equipped with the USB 3.2 Gen 2 technology, it offers easy-to-use connection to devices. My Passport SSD features a USB Type-C cable and USB Type-A adapter to work with legacy systems.'),
(5, 'My Passport SSD 512GB Portable SSD USB 3.2 Up to 1050MB/s Blue', 'usb4.png', 79.00, 'Equipped with the USB 3.2 Gen 2 technology, it offers easy-to-use connection to devices. My Passport SSD features a USB Type-C cable and USB Type-A adapter to work with legacy systems.'),
(6, 'My Passport SSD 1TB Portable SSD USB 3.2 Up to 1050MB/s Grey', 'usb5.png', 139.00, 'Equipped with the USB 3.2 Gen 2 technology, it offers easy-to-use connection to devices. My Passport SSD features a USB Type-C cable and USB Type-A adapter to work with legacy systems. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwda` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwda`) VALUES
(5, 'taher', 'tahee10@yahoo.com', 'taher', '$2y$10$KiRG6Foz9cwcofHzXLiboe6BcyAnP.dGcM1gKpY6uevxK3kKr1.8m'),
(6, 'ibraheem', 'ibraheem23@gmail.com', 'ibraheem', '$2y$10$BGLLlt2cZUf4w4jhdajCc.dArst/mhvIFYESmcx9BxNVaBj1J4MdG'),
(7, 'moayyad', 'moayyad_0@gmail.com', 'moayyad', '$2y$10$K7VZvBT3AQEo9Biib22jF.oYr0TGo5e1zZ5STRTMdUq5lNxF7Mrf2'),
(8, 'ahmad', 'ahmad@sdfsd.com', 'ahmad', '$2y$10$FbDyei/kdDThA6WQXGPvju7P.x3975M.YMFgPmh/mASK96jLkxDyS'),
(9, 'ali', 'ali@sdfsd.com', 'ali', '$2y$10$CT/Tu1sSGyc0vbPy4bV93ORShsPgYGQnfboGVtg41JevM2eUd/a5e');

-- --------------------------------------------------------

--
-- Table structure for table `user_adress`
--

CREATE TABLE `user_adress` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cams`
--
ALTER TABLE `cams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairs`
--
ALTER TABLE `chairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desktop_memory`
--
ALTER TABLE `desktop_memory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaming_laptop`
--
ALTER TABLE `gaming_laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaming_monitors`
--
ALTER TABLE `gaming_monitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaming_pc`
--
ALTER TABLE `gaming_pc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graphic_card`
--
ALTER TABLE `graphic_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop_memory`
--
ALTER TABLE `laptop_memory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lcd_led_monitors`
--
ALTER TABLE `lcd_led_monitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memory_card`
--
ALTER TABLE `memory_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portable_monitors`
--
ALTER TABLE `portable_monitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `touch_monitors`
--
ALTER TABLE `touch_monitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usb`
--
ALTER TABLE `usb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cams`
--
ALTER TABLE `cams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chairs`
--
ALTER TABLE `chairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `desktop_memory`
--
ALTER TABLE `desktop_memory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gaming_laptop`
--
ALTER TABLE `gaming_laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gaming_monitors`
--
ALTER TABLE `gaming_monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gaming_pc`
--
ALTER TABLE `gaming_pc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `graphic_card`
--
ALTER TABLE `graphic_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `laptop_memory`
--
ALTER TABLE `laptop_memory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lcd_led_monitors`
--
ALTER TABLE `lcd_led_monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `memory_card`
--
ALTER TABLE `memory_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portable_monitors`
--
ALTER TABLE `portable_monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ssd`
--
ALTER TABLE `ssd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `touch_monitors`
--
ALTER TABLE `touch_monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usb`
--
ALTER TABLE `usb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

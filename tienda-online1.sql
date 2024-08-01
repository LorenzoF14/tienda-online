-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 06:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienda-online1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(1, 'LAPTOPS', 'assets/images/categorias/20220805093011.jpg', 1),
(2, 'MEMORIA RAM', 'assets/images/categorias/20220805093028.jpg', 1),
(3, 'ALMACENAMIENTO', 'NO', 1),
(4, 'PERIFERICOS', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png',
  `token` varchar(100) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `clave`, `perfil`, `token`, `verify`) VALUES
(3, 'ANGEL SIFUENTES', 'lovenaju2@gmail.com', '$2y$10$aFqMg0hAfmLz0vUQhPKcPuGQ57zO9bvYDEX83E2yIN5sdwEX/eH5q', 'default.png', '21a66551b83c814b108081b292dc65d2', 1),
(4, 'VIDA INFORMATICO', 'admin@angelsifuentes.com', '$2y$10$aFqMg0hAfmLz0vUQhPKcPuGQ57zO9bvYDEX83E2yIN5sdwEX/eH5q', 'default.png', NULL, 1),
(5, 'JUAN ANGEL', 'prueba@gmail.com', '$2y$10$rr24uW0VypkrDEhooFRsoOli/Pcm5NR5F8D9NARgQz0l1UfPkqV1q', 'default.png', 'c81b5136bcd10b4390108c979ed28ee6', 1),
(6, 'John Doe', 'jol_floresv@unicah.edu', '$2y$10$XYhrIY5xOpDSUO0VyC/Tcu6lWiLfrLh5nfIV//5aYkIAz6XnQ6lHS', 'default.png', NULL, 1),
(7, 'Lorenzo Flores', 'joenzofv@hotmail.com', '$2y$10$BPb0AdZmZbxKPYS9maGMOu8.JMIZigOX.AZeoamzJupB4nEPhvUjm', 'default.png', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `producto`, `precio`, `cantidad`, `id_pedido`, `id_producto`) VALUES
(6, 'CORSAIR VENGEANCE SODIMM DDR5 RAM 64GB (2x32GB) 4800MHz CL40', 149.99, 1, 3, 12),
(7, 'Logitech G 305 LIGHTSPEED Mint', 42.50, 1, 4, 13),
(8, 'Logitech G 305 LIGHTSPEED', 29.99, 1, 5, 10),
(9, 'Logitech G 305 LIGHTSPEED', 29.99, 1, 6, 10),
(10, 'Crucial RAM 32GB Kit (2x16GB) DDR5 5600MHz', 93.41, 1, 7, 6),
(11, ' Laptop Gamer MSI Cyborg 15 Ai A1Vfk de 15.6\" Intel Core Ultra 7 155H NVIDIA GeForce RTX 4060', 1209.00, 1, 8, 2),
(12, 'Crucial RAM 32GB Kit (2x16GB) DDR5 5600MHz', 93.41, 1, 8, 6),
(13, ' Laptop Gamer MSI Cyborg 15 Ai A1Vfk de 15.6\" Intel Core Ultra 7 155H NVIDIA GeForce RTX 4060', 1209.00, 1, 9, 2),
(14, 'Crucial RAM 32GB Kit (2x16GB) DDR5 5600MHz', 93.41, 1, 9, 6),
(15, ' Laptop Gamer MSI Cyborg 15 Ai A1Vfk de 15.6\" Intel Core Ultra 7 155H NVIDIA GeForce RTX 4060', 1209.00, 1, 10, 2),
(16, 'Crucial RAM 32GB Kit (2x16GB) DDR5 5600MHz', 93.41, 1, 10, 6),
(17, 'Laptop Gamer HP OMEN Trascend de 14\" 14-fb0001la Intel Core Ultra 7 155H NVIDIA GeForce RTX 4060', 1884.99, 1, 10, 5),
(18, 'Laptop Gamer Acer Predator de 16\" PHN16-71-977U Intel Core i9-13900HX (13va Gen) NVIDIA GeForce RTX 4060 ', 2149.99, 1, 10, 4),
(19, 'Laptop Gamer Asus TUF F15 de 15.6\" FX507VV-LP148W Intel Core i7-13620H (13va Gen) NVIDIA GeForce RTX 4060', 1499.99, 1, 10, 3),
(20, 'Laptop Gamer Lenovo Legion Pro 5i de 16\" 83DF00A6LM Intel Core i9-14900HX (14va Gen) NVIDIA GeForce RTX 4060', 1999.00, 1, 10, 1),
(21, 'Logitech G 305 LIGHTSPEED Mint', 42.50, 1, 11, 13),
(22, 'Redragon Teclado Kumara K552', 39.99, 1, 12, 15),
(23, 'Logitech G 305 LIGHTSPEED Mint', 42.50, 1, 12, 13),
(24, 'Logitech G 305 LIGHTSPEED', 29.99, 1, 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(80) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_transaccion`, `monto`, `estado`, `fecha`, `email`, `nombre`, `apellido`, `direccion`, `ciudad`, `id_cliente`, `proceso`) VALUES
(1, '6PX22696F1040260E', 1700.00, 'COMPLETED', '2023-02-20 17:12:42', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Lima', 5, '2'),
(2, '1HJ95121A9582915R', 16.00, 'COMPLETED', '2023-07-10 22:37:24', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Lima', 3, '2'),
(3, '2BK76673SA095264B', 149.99, 'COMPLETED', '2024-07-28 00:02:38', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(4, '6F566369352138424', 42.50, 'COMPLETED', '2024-07-28 00:05:23', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(5, '2LF48521185955530', 29.99, 'COMPLETED', '2024-07-29 05:14:12', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(6, '5C3048145A910214A', 29.99, 'COMPLETED', '2024-07-31 05:48:10', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(7, '4D923057MH3018907', 93.41, 'COMPLETED', '2024-07-31 06:02:27', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(8, '5ME56189J1446390F', 1302.41, 'COMPLETED', '2024-07-31 06:05:28', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(9, '8KF58467W9477925B', 1302.41, 'COMPLETED', '2024-07-31 06:05:48', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(10, '14W31869HX9165531', 8836.38, 'COMPLETED', '2024-07-31 06:06:42', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(11, '0FW79757U37185729', 42.50, 'COMPLETED', '2024-08-01 06:09:04', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1'),
(12, '2BC76015R88097942', 112.48, 'COMPLETED', '2024-08-01 06:44:56', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', '4th Floor', 'San Jose', 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `estado`, `id_categoria`) VALUES
(1, 'Laptop Gamer Lenovo Legion Pro 5i de 16\" 83DF00A6LM Intel Core i9-14900HX (14va Gen) NVIDIA GeForce RTX 4060', 'Esta laptop gamer Lenovo viene lista para la acción y es que gracias a su diseño ligero y compacto es fácil de llevar a todas partes. Su pantalla IPS WQXGA de 16\" y GPU NVIDIA GeForce RTX 4060 ofrecen una experiencia visual con detalles de imágenes increíbles. Su procesador Intel Core i9, memoria RAM de 16 GB y un 1TB SSD de almacenamiento son ideales para videojuegos de alto rendimiento. ', 1999.00, 50, 'assets/images/productos/20240720064325.jpg', 1, 1),
(2, ' Laptop Gamer MSI Cyborg 15 Ai A1Vfk de 15.6\" Intel Core Ultra 7 155H NVIDIA GeForce RTX 4060', 'Disfruta al máximo tus juegos con esta laptop gamer MSI Cyborg. Equipada con un procesador Intel Core Ultra 7, almacenamiento de 512 GB, una memoria RAM de 16 GB y una tarjeta dedicada NVIDIA GeForce RTX 4060, este equipo ofrece un desempeño extremo  y maximiza tu productividad realizando múltiples tareas en simultáneo de forma fluida. Además, viene con el sistema operativo Windows 11, teclado numérico y retroiluminado. ', 1209.00, 15, 'assets/images/productos/20240720064554.jpg', 1, 1),
(3, 'Laptop Gamer Asus TUF F15 de 15.6\" FX507VV-LP148W Intel Core i7-13620H (13va Gen) NVIDIA GeForce RTX 4060', 'Esta laptop Asus TUF cuenta con un increíble diseño compacto y moderno, ideal para brillar en el campo de batalla gracias al procesador Intel Core i7 serie 13620H y la GPU NVIDIA GeForce RTX 4060. Su pantalla con tasa de refresco 144Hz y resolución FHD ofrece una experiencia visual con imágenes vívidas y brillantes que te permiten sumergirte en cada jugada. Por otra parte, cuenta con 16 GB de memoria RAM y 1 TB SSD de almacenamiento. ', 1499.99, 40, 'assets/images/productos/20240720064725.jpg', 1, 1),
(4, 'Laptop Gamer Acer Predator de 16\" PHN16-71-977U Intel Core i9-13900HX (13va Gen) NVIDIA GeForce RTX 4060 ', 'Si buscas el balance perfecto entre potencia, fluidez y nitidez para tus juegos, la laptop Acer Predator de 16\" es tu mejor opción. Su pantalla IPS WUXGA y tasa de refresco 165Hz brindan un nivel de detalle visual increíble, ideal para videojuegos de alto rendimiento y creación de contenidos. Además, su potente procesador Intel Core i9 (13va Gen), 16 GB RAM y 1 TB de almacenamiento te aseguran disfrutar los videojuegos más pesados de manera óptima. ', 2149.99, 5, 'assets/images/productos/20240720064914.jpg', 1, 1),
(5, 'Laptop Gamer HP OMEN Trascend de 14\" 14-fb0001la Intel Core Ultra 7 155H NVIDIA GeForce RTX 4060', 'Eleva tu experiencia de juego a otro nivel con la laptop gamer HP Omen Trascend. Su poderosa GPU NVIDIA GeForce RTX 4060 y procesador Intel Core Ultra 7 te facilitan un desempeño potente para convertirte en el número uno frente a tus rivales. Por otra parte, su pantalla OLED 2.8K es perfecta para que disfrutes al máximo cada detalle de tus partidas. Asimismo, cuenta con una memoria de  16GB RAM y almacenamiento de 1 TB SSD.', 1884.99, 12, 'assets/images/productos/20240720065209.jpg', 1, 1),
(6, 'Crucial RAM 32GB Kit (2x16GB) DDR5 5600MHz', 'CT2K16G56C46S5 es el kit Crucial de 32GB que consta de (2) módulos de computadora portátil de 16 GB que funcionan a la velocidad de 5600 MT/s y tiene una latencia CAS de 46. Es un SODIMM y se ajusta al diseño estándar de la industria DDR5 SODIMM de 262 pines. Es compatible con sistemas que pueden tomar memoria DDR5-5600 SODIMM.', 93.41, 20, 'assets/images/productos/20240720070611.jpg', 1, 2),
(7, 'SAMSUNG 990 PRO SSD 2TB PCIe 4.0 M.2 2280', 'Alcanza el máximo rendimiento de PCIe® 4.0*. Experimenta una velocidad de explosión más duradera del oponente. El control de calor inteligente del controlador interno ofrece nuestra mejor eficiencia energética mientras mantiene un rendimiento feroz que siempre te mantiene en la cima de tu juego. * La mejor lectura secuencial teórica de PCIe 4.0 es de 8000 MB/s - 990 PRO alcanza los 7450 MB/s a partir del tercer trimestre de 2022. **Fuente: Datos OMDIA 2003-2022: cuota de mercado de ingresos de proveedores de NAND. ***El rendimiento de escritura secuencial y aleatoria se midió con la tecnología Intelligent Turbo Write activada. Intelligent Turbo Write funciona solo dentro de un tamaño de transferencia de datos específico. El rendimiento puede variar según el firmware, el hardware del sistema y la configuración de la unidad de estado sólido y otros factores. Para obtener información detallada, comuníquese con su centro de servicio local. 990 PRO alcanza los 7.450 MB/s según la configuración del sistema de prueba: AMD Ryzen 7 5800X 8-Core Processor CPU@3.80GHz, DDR4 3600MHz 16GBx2 (PC4-25600 Overclock), OS - Windows 10 Pro 64bit, Chipset - ASRock-X570 Taa ichi. Para maximizar el rendimiento del 990 PRO, compruebe si su sistema es compatible con PCIe 4.0 en el sitio web Intel o AMD. ****980 PRO Lectura/Escritura secuencial - 1,129/877 MB/W, lectura/escritura secuencial 990 PRO - 1380/1319 MB/Watt basado en el resultado de prueba del modelo de capacidad de 1 TB.', 179.99, 5, 'assets/images/productos/20240720071109.jpg', 1, 3),
(8, 'Crucial P3 500GB PCIe Gen3 3D NAND NVMe M.2 SSD', 'Las velocidades básicas de arranque no lo cortarán, ni en el trabajo, sobre la marcha o en el juego. Pero el SSD Crucial P3 es todo menos básico. Con un rendimiento NVMe que es casi 5 veces más rápido que SATA y casi 20 veces más rápido que el HDD2, el P3 deja la tecnología de almacenamiento más antigua en el polvo. Con velocidades secuenciales de lectura/escritura de hasta 3500/3000 MB/s, capacidades de almacenamiento de hasta 4 TB, Micron Advanced 3D NAND y tecnología innovadora de controladores, el Crucial P3 te ofrece la velocidad que necesitas por el precio que deseas. Obtén arranques, descargas y transferencias de archivos más rápidos, y almacena todos tus archivos, fotos, videos, aplicaciones y juegos con espacio de sobra con la calidad y fiabilidad que esperas de Crucial.', 39.99, 12, 'assets/images/productos/20240720071311.jpg', 1, 3),
(10, 'Logitech G 305 LIGHTSPEED', 'Juega avanzado sin cables ni límites. logitech G G305 LIGHTSPEED es un mouse inalámbrico para juegos diseñado para un alto rendimiento en tus juegos de PC favoritos. G305 cuenta con el sensor óptico logitech G HERO de próxima generación con sensibilidad de 200 a 12.000 DPI para una precisión a nivel de competencia. La tecnología inalámbrica LIGHTSPEED te ofrece un rendimiento súper rápido de 1 milisegundo que es tan rápido como el cableado. Con una increíble eficiencia energética, el G305 se mantiene alimentado y listo para jugar hasta 250 horas con una sola batería AA incluida. Juega en cualquier lugar con un mouse para juegos ultra portátil y ligero que pesa solo 3.49 oz, es fácil de llevar contigo y tiene almacenamiento integrado para el receptor inalámbrico USB incluido. Utilice logitech G Gaming Software para programar rápidamente 6 botones con comandos instantáneos de múltiples acciones, ajustes de DPI y más. G305 es el ratón inalámbrico Lightspeed para todos.', 29.99, 12, 'assets/images/productos/20240720071431.jpg', 1, 4),
(12, 'CORSAIR VENGEANCE SODIMM DDR5 RAM 64GB (2x32GB) 4800MHz CL40', 'Actualice su portátil DDR5 para juegos o rendimiento con módulos de memoria CORSAIR VENGEANCE SERIES DDR5 SODIMM de vanguardia. Compatible con una amplia gama de portátiles Intel y AMD y PC de factor de forma pequeño, VENGEANCE SODIMM actualiza su memoria existente, aprovechando las frecuencias más rápidas y las mayores capacidades de DDR5. Los módulos se configuran automáticamente a velocidades máximas del sistema para tiempos de carga más rápidos y una multitarea más fluida, y la instalación es rápida y fácil: solo se necesita un destornillador para la mayoría de las computadoras portátiles. VENGEANCE SODIMM es compatible con Intel XMP 3.0 en kits de alta frecuencia para un rendimiento excepcional. Cada módulo está rigurosamente revisado, probado a fondo y respaldado por una garantía limitada de por vida para garantizar un alto rendimiento y fiabilidad, lo que otorga a su computadora portátil un impulso instantáneo.', 149.99, 20, 'assets/images/productos/20240720070903.jpg', 1, 2),
(13, 'Logitech G 305 LIGHTSPEED Mint', 'Juega avanzado sin cables ni límites. logitech G G305 LIGHTSPEED es un mouse inalámbrico para juegos diseñado para un alto rendimiento en tus juegos de PC favoritos. G305 cuenta con el sensor óptico logitech G HERO de próxima generación con sensibilidad de 200 a 12.000 DPI para una precisión a nivel de competencia. La tecnología inalámbrica LIGHTSPEED te ofrece un rendimiento súper rápido de 1 milisegundo que es tan rápido como el cableado. Con una increíble eficiencia energética, el G305 se mantiene alimentado y listo para jugar hasta 250 horas con una sola batería AA incluida. Juega en cualquier lugar con un mouse para juegos ultra portátil y ligero que pesa solo 3.49 oz, es fácil de llevar contigo y tiene almacenamiento integrado para el receptor inalámbrico USB incluido. Utilice logitech G Gaming Software para programar rápidamente 6 botones con comandos instantáneos de múltiples acciones, ajustes de DPI y más. G305 es el ratón inalámbrico Lightspeed para todos.', 42.50, 5, 'assets/images/productos/20240727061644.jpg', 1, 4),
(15, 'Redragon Teclado Kumara K552', 'Teclado mecánico para juegos RGB LED Rainbow retroiluminado con cable con interruptores rojos para Windows Gaming PC', 39.99, 29, 'assets/images/productos/20240801032628.jpg', 1, 4),
(16, 'Astro Gaming a10', 'Auriculares para Xbox One/Nintendo Switch/PS4/PC y Mac – Cable de 0.138 in y micrófono Boom por Logitech – Embalaje a granel – Verde/Negro + Azul/Negro ', 37.99, 24, 'assets/images/productos/20240801032726.jpg', 1, 4),
(17, 'Logitech G435 Lightspeed', 'Auriculares inalámbricos Bluetooth para juegos, ligeros, micrófonos integrados, batería de 18 horas, compatible con Dolby Atmos, PC, PS4, PS5, Nintendo Switch, móvil, color', 49.88, 10, 'assets/images/productos/20240801032915.jpg', 1, 4),
(18, 'Razer BlackWidow V4 Pro', 'Teclado Mecanico para juegos con cableado: interruptores amarillos, lineales y silenciosos, teclas ABS Doubleshot - Dial de comando - Macros programables - Chroma RGB ', 299.99, 23, 'assets/images/productos/20240801033136.jpg', 1, 4),
(19, 'Seagate BarraCuda', 'Disco duro interno de 2 TB, SATA de 3.5 pulgadas 6 Gb / s, 7200 RPM, 256 MB caché, 3.5 pulgadas, embalaje libre de frustración (ST2000DM008 / ST2000DMZ08)', 64.99, 24, 'assets/images/productos/20240801033241.jpg', 1, 3),
(20, 'Western Digital Disco Duro', 'Disco duro interno WD de 4 TB para PC azul - 5400 RPM, SATA 6 Gb/s, caché de 256 MB, 3.5\" - WD40EZAX', 74.99, 45, 'assets/images/productos/20240801033340.jpg', 1, 3),
(21, 'Samsung 990 Pro SSD 4TB', ' 4TB PCIe 4.0 M.2 2280 Disco duro interno de estado sólido, velocidades de lectura secuenciales de hasta 7,450 MB/s para estaciones de trabajo de alta gama, computación y juegos,', 329.99, 23, 'assets/images/productos/20240801033549.jpg', 1, 3),
(22, 'TEAMGROUP T-Force Vulcan Z SATA III', 'SSD interna de 1 TB, almacenamiento en caché SLC, 3D NAND TLC, 2.5 pulgadas (velocidad de lectura/escritura de hasta 550/500 MB/s)', 52.99, 19, 'assets/images/productos/20240801033713.jpg', 1, 3),
(23, 'Corsair Vengeance LPX DDR4 Ram 32gb', 'RAM 32 GB (2 x 16 GB) 3600 MHz CL18 Intel XMP 2.0 Memoria de computadora - Negro (CMK32GX4M2D3600C18)', 79.99, 21, 'assets/images/productos/20240801033819.jpg', 1, 2),
(24, 'Teamgroup T-Force Vulcan Z DDR4 16GB', 'Kit (2x8GB) 3200MHz (PC4-25600) CL16 Módulo de memoria de escritorio Ram (gris) - TLZGD416G3200HC16FDC01', 32.99, 21, 'assets/images/productos/20240801033928.jpg', 1, 2),
(25, 'TeamGroup T-Force Delta RGB DDR4', '32 GB (2 x 16 GB) 3600 MHz (PC4-28800) CL18 Módulo de memoria RAM de escritorio para juegos TF4D432G3600HC18JDC01- Blanco', 69.99, 35, 'assets/images/productos/20240801034136.jpg', 1, 2),
(26, 'G.SKILL Trident Z RGB Series', '(Intel XMP) DDR4 RAM 64 GB (2 x 32 GB) 3600MT/s CL18-22-22-42 1.35V Memoria de computadora de escritorio UDIMM (F4-3600C18D-64GTZR)', 132.99, 23, 'assets/images/productos/20240801034231.jpg', 1, 2),
(27, 'ASUS ROG Strix G16 (2024) Gaming Laptop, 16” 16:10 FHD 165Hz Display, NVIDIA® GeForce RTX™ 4060, Intel Core i7-13650HX, 16GB DDR5, 1TB PCIe Gen4 SSD', 'pantalla FHD 16:10 de 16 pulgadas, 165 Hz, NVIDIA® GeForce RTX™ 4060, Intel Core i7-13650HX, DDR5 de 16 GB, SSD PCIe Gen4 de 1 TB, Wi-Fi 6E, Windows 11', 1164.00, 29, 'assets/images/productos/20240801034432.jpg', 1, 1),
(28, 'GIGABYTE - G6 (2024) Gaming Laptop - 165Hz 1920x1200 WUXGA - NVIDIA GeForce RTX 4060 - Intel i7-13620H - 1TB SSD with 16GB DDR5 RAM', '165Hz 1920x1200 WUXGA - NVIDIA GeForce RTX 4060 - Intel i7-13620H - SSD de 1 TB con RAM DDR5 de 16 GB - Win11 Home+ (G6 KF-H3US854KH)', 1019.00, 30, 'assets/images/productos/20240801034530.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `clave`, `perfil`, `estado`) VALUES
(1, 'ANGEL', 'SIFUENTES', 'angelsifuentes2580@gmail.com', '$2y$10$XtV68JJ/fABHwWMARZotF.9BHbkwBpquycry2HYOlS.QaUGt/mls2', NULL, 1),
(2, 'hola', 'como', 'esta@gmail.com', '$2y$10$ZX9BeymxshOoe/I3pGoIp.6Ai5mrVxN1rdS4nrAQILsOjE9DPwdXW', NULL, 1),
(5, 'Lorenzo', 'Flores', 'joenzofv@gmail.com', '$2y$10$to0bLfH8d13w6OvNR0ZOv.X4ZcwBiT/93ztDOekrT1ko.P4HV8LG.', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

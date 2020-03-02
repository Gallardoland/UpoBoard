-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2020 at 12:53 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upoboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `nombre` varchar(64) NOT NULL,
  `nombre_unico_asignatura` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asignatura`
--

INSERT INTO `asignatura` (`nombre`, `nombre_unico_asignatura`) VALUES
('Cálculo', 'calc'),
('Mantenimiento de bases de datos', 'mbd'),
('Programación avanzada', 'pa'),
('Sistemas distribuidos', 'sd');

-- --------------------------------------------------------

--
-- Table structure for table `clase`
--

CREATE TABLE IF NOT EXISTS `clase` (
  `fecha_publicacion` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `descripcion` varchar(600) NOT NULL,
  `videos` varchar(600) NOT NULL,
  `id_clase` int(11) NOT NULL,
  `nombre_unico_asignatura` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clase`
--

INSERT INTO `clase` (`fecha_publicacion`, `fecha_entrega`, `descripcion`, `videos`, `id_clase`, `nombre_unico_asignatura`) VALUES
('2020-01-19', '2020-02-22', 'Etiquetas en html', 'https://www.youtube.com/watch?v=cqMfPS8jPys;*;https://www.youtube.com/watch?v=TNQleomUw6U', 16, 'pa'),
('2020-01-20', '2020-02-10', 'Hallar dominio de una función', 'https://www.youtube.com/watch?v=c20QWEhBPKs;*;https://www.youtube.com/watch?v=qOCMPXoxJyg', 17, 'calc'),
('2020-01-21', '2020-02-15', 'Derivabilidad de funciones', 'https://www.youtube.com/watch?v=9BiQb9t24UI', 18, 'calc'),
('2020-01-21', '2020-02-21', 'Continuidad de funciones', 'https://www.youtube.com/watch?v=LDkdAr6m0gg', 19, 'calc'),
('2020-01-20', '2020-02-29', 'PHP Básico', 'https://www.youtube.com/watch?v=m-ovirhigVQ;*;https://www.youtube.com/watch?v=EmDlpyn1MUE', 20, 'pa'),
('2020-01-22', '2020-03-06', 'Ficheros en PHP', 'https://www.youtube.com/watch?v=mADKmq526AI', 21, 'pa'),
('2020-01-23', '2020-03-08', 'JavaScript', 'https://www.youtube.com/watch?v=seaq4UxKNHU', 22, 'pa'),
('2020-01-01', '2020-02-20', 'Oracle RMAN', 'https://www.youtube.com/watch?v=7D4YCiqi7sI', 23, 'mbd'),
('2020-01-16', '2020-02-14', 'Carga masiva de datos', 'https://www.youtube.com/watch?v=0hNIEUtaaD8', 24, 'mbd'),
('2020-01-27', '2020-02-25', 'Programación en OpenMP', 'https://www.youtube.com/watch?v=oiARwi0fJOU', 25, 'sd');

-- --------------------------------------------------------

--
-- Table structure for table `matriculado_en`
--

CREATE TABLE IF NOT EXISTS `matriculado_en` (
  `email_usuario` varchar(64) NOT NULL,
  `nombre_unico_asignatura` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matriculado_en`
--

INSERT INTO `matriculado_en` (`email_usuario`, `nombre_unico_asignatura`) VALUES
('alberto@upo.es', 'mbd'),
('alberto@upo.es', 'pa'),
('alberto@upo.es', 'sd'),
('carlos@upo.es', 'mbd'),
('carlos@upo.es', 'pa'),
('carlos@upo.es', 'sd'),
('fran@upo.es', 'calc'),
('fran@upo.es', 'mbd'),
('fran@upo.es', 'pa'),
('fran@upo.es', 'sd'),
('jose@upo.es', 'calc'),
('jose@upo.es', 'pa'),
('sergio@upo.es', 'calc');

-- --------------------------------------------------------

--
-- Table structure for table `personalizacion`
--

CREATE TABLE IF NOT EXISTS `personalizacion` (
  `color_primario` varchar(12) NOT NULL,
  `mostrar_encabezado` tinyint(1) NOT NULL,
  `tema_oscuro` tinyint(1) NOT NULL,
  `email_usuario` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalizacion`
--

INSERT INTO `personalizacion` (`color_primario`, `mostrar_encabezado`, `tema_oscuro`, `email_usuario`) VALUES
('#007BFF', 1, 0, 'admin@upo.es'),
('#007bff', 1, 0, 'alberto@upo.es'),
('#3498DB', 1, 0, 'carlos@upo.es'),
('#007bff', 1, 0, 'sergio@upo.es'),
('#007bff', 1, 0, 'fran@upo.es'),
('#007bff', 1, 0, 'jose@upo.es');

-- --------------------------------------------------------

--
-- Table structure for table `resultadotests`
--

CREATE TABLE IF NOT EXISTS `resultadotests` (
  `nota` float NOT NULL,
  `id_clase` int(11) NOT NULL,
  `email_usuario` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id_test` int(11) NOT NULL,
  `respuestas` varchar(600) NOT NULL,
  `respuesta_correcta` int(11) NOT NULL,
  `pregunta` varchar(600) NOT NULL,
  `id_clase` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id_test`, `respuestas`, `respuesta_correcta`, `pregunta`, `id_clase`) VALUES
(44, 'Todo R menos los valores que anulan denominador;*;Todo R;*;Todos los valores impares;*;Todos los valores pares', 1, '¿Cuál es el dominio de una función polinómica entera?', 17),
(45, 'Todo R;*;Todo R menos los números pares;*;Todos los valores pares;*;Todo R menos los valores que anulan denominador', 3, '¿Cuál es el dominio de una función racional?', 17),
(46, 'Todos los valores que hacen que la función contenida dentro del logaritmo sea mayor que cero.;*;Todo R menos los impares;*;Todo R menos los valores que anulan denominador;*;Todo R', 0, '¿Cuál es el dominio de una función logarítmica?', 17),
(47, 'Verdadero;*;Falso;*;Solo si su límite tienda a infinito;*;Solo si su límite tiende a 0', 0, '¿Si una función es derivable esto implica que es continua?', 18),
(48, '9 y 9;*;17 y 1;*;6 y 12;*;3 y 15', 2, 'Hallar dos números cuya suma es 18 y el producto del uno por el cuadrado del otro es máximo', 18),
(49, ' f(x) = x;*;Existe algún punto c, -1 ;*;f(0) = 0;*;Existe algún punto c, -1 ', 3, 'Si f(x) es continua en [-1,1], f(-1) = -1 y f(1) = 1. ¿Cuál de las siguientes afirmaciones es cierta?', 19),
(50, 'x = -1, x = -3;*;x = 1, x = -3;*;x = -1, x = 3;*;x = -1, x = 5', 2, '¿En qué puntos es discontinua la función f(x) = (x - 17) / (x2 + 2x - 3) ?', 19),
(51, ' f es discontiua en x = 1;*; f presenta una discontinuidad evitable en x = 0;*;f presenta una discontinuidad inevitable en x = 0;*;f es continua en x = 0', 2, 'Sea f(x) = 3x - 1 si x es distinto de 0 y f(0) = 1, entonces:', 19),
(52, 'Inserta salto de línea;*;Pone el texto en negrita;*;Agrega un párrafo;*;Inserta un enlace', 2, '¿Para qué sirve la etiqueta p?', 16),
(53, 'Inserta un enlace;*;Pone el texto tachado;*;Agrega un párrafo;*;Inserta un bloque de contenido', 3, '¿Para qué sirve la etiqueta div?', 16),
(57, '$_GET[];;*;Request.Form;;*;Request.QueryString;;*;$_GET_DATA[];', 2, '¿Cómo obtienes información de un formulario enviado con GET?', 20),
(58, '&#34;Hola mundo&#34;;;*;echo &#34;Hola mundo&#34;;;*;Document.write(&#34;Hola mundo&#34;);;*;print(&#34;Hola mundo&#34;);', 1, '¿Cómo escribes &#34;Hola mundo&#34; en PHP?', 20),
(59, '$;*;!;*;&;*;#', 0, '¿Por cuál símbolo empiezan las variables?', 20),
(60, 'fopen(&#34;time.txt&#34;,&#34;r&#34;);;*;open(&#34;time.txt&#34;,&#34;read&#34;);;*;fopen(&#34;time.txt&#34;,&#34;r+&#34;);;*;open(&#34;time.txt&#34;);', 0, '¿Cómo abrir &#34;texto.txt&#34; en modo lectura?', 21),
(61, 'msgBox(&#34;Hola&#34;);;*;alertBox(&#34;Hola&#34;);;*;msg(&#34;Hola&#34;);;*;alert(&#34;Hola&#34;);', 3, '¿Cómo mostrar &#34;Hola&#34; en una alerta?', 22),
(62, ' var colors = (1:&#34;red&#34;, 2:&#34;green&#34;, 3:&#34;blue&#34;);*; var colors = 1 = (&#34;red&#34;), 2 = (&#34;green&#34;), 3 = (&#34;blue&#34;);*; var colors = [&#34;red&#34;, &#34;green&#34;, &#34;blue&#34;];*; var colors = &#34;red&#34;, &#34;green&#34;, &#34;blue&#34;', 2, '¿Cuál es la forma de crear un array en JS?', 22),
(63, 'Una copia literal de los archivos;*;Un archivo binario con formato especial de Oracle;*;Un backup incremental;*;Un backup completo', 1, '¿Qué es un backup set?', 23),
(64, 'Carga los datos desde un servidor.;*;Las cargas mediante Conventional Path escriben directamente los bloques de datos en los data files.;*;Carga los datos desde tablas externas.;*;Ejecuta sentencias INSERT para cargar los datos en la base de datos.', 3, '¿Cómo funciona Conventional Path?', 24),
(65, 'Un framework de modelado de redes;*;Un modelo de programación paralela;*;Una herramienta para distribuir nodos;*;Un modelo de programación intrínseca', 1, '¿Qué es OpenMP?', 25);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `email_usuario` varchar(64) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `apellidos` varchar(64) NOT NULL,
  `perfil` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`email_usuario`, `pass`, `nombre`, `apellidos`, `perfil`) VALUES
('admin@upo.es', '$2y$10$NQvumtpdhw5MX.6rQYWv.uYOWaBSFVDGrAzDEPoQUayvDK6dZID1.', 'Admin', 'Súper Root', 'admin'),
('alberto@upo.es', '$2y$10$rf.Ayc/PomlN25/PYw7bIOxTxbLBYr4KX5jT7MLJgXWNCkOM4joDS', 'Alberto', 'Gómez Cabrera', 'alumno'),
('carlos@upo.es', '$2y$10$lfAkmO1Ac1.ask1/WXrgXe4Ft7MUCJ7w6XFq3QaK629RXP59N7/Ua', 'Carlos', 'Barranco González', 'profesor'),
('fran@upo.es', '$2y$10$HWpIUvHpGch6x6oaeYqFquQHqIf.gSaYOaeEMUuNycWux1ZPbSNY2', 'Francisco', 'Martín Espina', 'alumno'),
('jose@upo.es', '$2y$10$o57rWZqH7j6866mZe7ynKOmt/REmjR2JvzK/WTh6tVKTKrEhpga3K', 'Jose Alberto', 'Gallardo Pérez', 'alumno'),
('sergio@upo.es', '$2y$10$XmmHpAdtW6dm3uq3xhdvgu52mK6Xhz./hdxnClkCiSZ0pHBd62p4y', 'Sergio', 'Bermudo Navarrete', 'profesor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`nombre_unico_asignatura`);

--
-- Indexes for table `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id_clase`),
  ADD KEY `nombre_unico_asignatura` (`nombre_unico_asignatura`);

--
-- Indexes for table `matriculado_en`
--
ALTER TABLE `matriculado_en`
  ADD PRIMARY KEY (`email_usuario`,`nombre_unico_asignatura`),
  ADD KEY `nombre_unico_asignatura` (`nombre_unico_asignatura`);

--
-- Indexes for table `personalizacion`
--
ALTER TABLE `personalizacion`
  ADD KEY `email_usuario` (`email_usuario`);

--
-- Indexes for table `resultadotests`
--
ALTER TABLE `resultadotests`
  ADD KEY `id_clase` (`id_clase`),
  ADD KEY `email_usuario` (`email_usuario`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `id_clase` (`id_clase`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clase`
--
ALTER TABLE `clase`
  MODIFY `id_clase` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`nombre_unico_asignatura`) REFERENCES `asignatura` (`nombre_unico_asignatura`);

--
-- Constraints for table `matriculado_en`
--
ALTER TABLE `matriculado_en`
  ADD CONSTRAINT `matriculado_en_ibfk_1` FOREIGN KEY (`email_usuario`) REFERENCES `usuario` (`email_usuario`),
  ADD CONSTRAINT `matriculado_en_ibfk_2` FOREIGN KEY (`nombre_unico_asignatura`) REFERENCES `asignatura` (`nombre_unico_asignatura`);

--
-- Constraints for table `personalizacion`
--
ALTER TABLE `personalizacion`
  ADD CONSTRAINT `personalizacion_ibfk_1` FOREIGN KEY (`email_usuario`) REFERENCES `usuario` (`email_usuario`);

--
-- Constraints for table `resultadotests`
--
ALTER TABLE `resultadotests`
  ADD CONSTRAINT `resultadotests_ibfk_1` FOREIGN KEY (`id_clase`) REFERENCES `clase` (`id_clase`),
  ADD CONSTRAINT `resultadotests_ibfk_2` FOREIGN KEY (`email_usuario`) REFERENCES `usuario` (`email_usuario`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`id_clase`) REFERENCES `clase` (`id_clase`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

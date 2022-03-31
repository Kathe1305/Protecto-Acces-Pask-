-- Base de datos: `accesspask`

-- Estructura de tabla para la tabla `cursos_`

CREATE TABLE `cursos_` (
  `idCurso` int(15) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcado de datos para la tabla `cursos_`

INSERT INTO `cursos_` (`idCurso`, `Nombre`) VALUES
(1, '601'),
(2, '701'),
(3, '801'),
(4, '901'),
(5, '1001'),
(6, '1101');

-- Estructura de tabla para la tabla `excusas`

CREATE TABLE `excusas` (
  `id_excusas` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(10000) NOT NULL,
  `archivo` varchar(1000) NOT NULL,
  `idusu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Estructura de tabla para la tabla `rol`

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `Rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcado de datos para la tabla `rol`

INSERT INTO `rol` (`idRol`, `Rol`) VALUES
(1, 'Administrativo'),
(2, 'profesor'),
(3, 'Alumno');

-- Estructura de tabla para la tabla `tiempo`

CREATE TABLE `tiempo` (
  `idtiempo` int(11) NOT NULL,
  `horaingreso` datetime NOT NULL,
  `horasalida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Estructura de tabla para la tabla `tipdoc`

CREATE TABLE `tipdoc` (
  `idDoc` int(15) NOT NULL,
  `Doc` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcado de datos para la tabla `tipdoc`

INSERT INTO `tipdoc` (`idDoc`, `Doc`) VALUES
(1, 'C.C'),
(2, 'T.I'),
(3, 'C.E');

-- Estructura de tabla para la tabla `usuario`

CREATE TABLE `usuario` (
  `idusu` int(15) NOT NULL,
  `idRol` int(11) NOT NULL,
  `idCur` varchar(15) DEFAULT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `idDoc` int(11) NOT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `contraseña` varbinary(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcado de datos para la tabla `usuario`

INSERT INTO `usuario` (`idusu`, `idRol`, `idCur`, `Nombre`, `Apellido`, `idDoc`, `documento`, `contraseña`) VALUES
(1, 3, '901', 'Carlos', 'Alberto', 2, '345678998765', 0x3831646339626462353264303464633230303336646264383331336564303535),
(2, 1, '', 'Heiver', 'Cuesta', 1, '79', 0x3831646339626462353264303464633230303336646264383331336564303535),
(3, 1, '', 'Elizabeth', ' Camelo Rojas', 1, '654323456', 0x3831646339626462353264303464633230303336646264383331336564303535),
(4, 2, '', 'Heiver', 'Martinez', 2, '20345678', 0x3831646339626462353264303464633230303336646264383331336564303535),
(5, 3, '601', 'Julian', 'Gonzales', 2, '1245324345', 0x3831646339626462353264303464633230303336646264383331336564303535),
(6, 3, '601', 'Katherine', 'Hermida', 2, '23456789', 0x3831646339626462353264303464633230303336646264383331336564303535),
(7, 1, '', 'Luisa', 'Fernandes', 1, '43215678', 0x3831646339626462353264303464633230303336646264383331336564303535),
(8, 2, '', 'Salome', 'Hernandez', 1, '123456709876', 0x3831646339626462353264303464633230303336646264383331336564303535),
(9, 3, '801', 'Felipe', 'Castillo Hernandez', 2, '34567890', 0x3831646339626462353264303464633230303336646264383331336564303535),
(10, 1, '', 'Alfredo', 'Hernandes', 1, '1000933126', 0x3831646339626462353264303464633230303336646264383331336564303535),
(11, 2, '', 'David', 'Caro', 1, '2468998589', 0x3831646339626462353264303464633230303336646264383331336564303535),
(12, 3, '701', 'Marcela', 'Aguilar', 2, '16746732121', 0x3831646339626462353264303464633230303336646264383331336564303535),
(13, 3, '801', 'Angie', 'Camelo', 2, '987654334567', 0x3831646339626462353264303464633230303336646264383331336564303535),
(14, 3, '901', 'Wilmer', 'Angulo', 1, '34568912', 0x3831646339626462353264303464633230303336646264383331336564303535),
(15, 3, '1001', 'Andrea', 'Beltran ', 2, '876513331', 0x3831646339626462353264303464633230303336646264383331336564303535),
(16, 3, '701', 'Breyner', 'Reyes', 1, '9526963256', 0x3831646339626462353264303464633230303336646264383331336564303535),
(17, 3, '1101', 'Karen', 'Oviedo', 1, '12345098765', 0x3831646339626462353264303464633230303336646264383331336564303535),
(18, 3, '1101', 'Cristian', 'Silva', 1, '123409745', 0x3831646339626462353264303464633230303336646264383331336564303535),
(19, 1, '', 'Juan Sebastian', 'Beltran Camelo', 1, '1000933126', 0x3831646339626462353264303464633230303336646264383331336564303535),
(20, 3, '', 'Fredy', 'Hurtado', 2, '64574325', 0x3831646339626462353264303464633230303336646264383331336564303535),
(21, 3, '601', 'Alberto', 'Nuñes', 2, '7653674764', 0x3831646339626462353264303464633230303336646264383331336564303535),
(22, 3, '1001', 'Pepito', 'Perez', 3, '234598766234', 0x3831646339626462353264303464633230303336646264383331336564303535),
(24, 3, '701', 'Chris', 'Evans', 2, '34567898765', 0x3831646339626462353264303464633230303336646264383331336564303535),
(25, 2, NULL, 'Scarlett', 'Johansson', 1, '6738283784', 0x3831646339626462353264303464633230303336646264383331336564303535),
(26, 2, NULL, 'Robert', 'Downey JR', 1, '457297293', 0x3831646339626462353264303464633230303336646264383331336564303535);

-- Índices para tablas volcadas

-- Indices de la tabla `cursos_`

ALTER TABLE `cursos_`
  ADD PRIMARY KEY (`idCurso`);

-- Indices de la tabla `excusas`

ALTER TABLE `excusas`
  ADD PRIMARY KEY (`id_excusas`);

-- Indices de la tabla `rol`

ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

-- Indices de la tabla `tiempo`

ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`idtiempo`);

-- Indices de la tabla `tipdoc`

ALTER TABLE `tipdoc`
  ADD PRIMARY KEY (`idDoc`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusu`),
  ADD KEY `usuario_ibfk_1` (`idRol`),
  ADD KEY `usuario_ibfk_2` (`idDoc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `excusas`
--
ALTER TABLE `excusas`
  MODIFY `id_excusas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusu` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idDoc`) REFERENCES `tipdoc` (`idDoc`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`idCur`) REFERENCES `cursos_` (`idCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

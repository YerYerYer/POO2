/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     27-11-2025 20:20:41                          */
/*==============================================================*/


drop table if exists ASIGNACION_PROYECTO;

drop table if exists DEPARTAMENTOS;

drop table if exists EMPLEADOS;

drop table if exists PROYECTOS;

drop table if exists REGISTROS_HORARIOS;

drop table if exists USERS;

/*==============================================================*/
/* Table: ASIGNACION_PROYECTO                                   */
/*==============================================================*/
create table ASIGNACION_PROYECTO
(
   ID_ASIGNACION        int not null,
   ID_PROYECTO          int not null,
   ID_EMPLEADO          int not null,
   FECHA_ASIGNACION     date,
   ROL                  char(20),
   primary key (ID_ASIGNACION, ID_EMPLEADO, ID_PROYECTO)
);

INSERT INTO ASIGNACION_PROYECTO
(ID_ASIGNACION, ID_PROYECTO, ID_EMPLEADO, FECHA_ASIGNACION, ROL)
VALUES
-- PROYECTO 1: Expansión Rajo Fase IV (Mayormente 102, 101, 111, 105, 106, 119, 120)
(1, 1, 1003, '2022-12-15', 'Jefe de Proyecto'),
(2, 1, 1050, '2023-01-01', 'Ingeniero Estructural'),
(3, 1, 1002, '2023-01-10', 'Asesor Geológico'),
(4, 1, 1007, '2023-02-01', 'Coordinador Equipos'),
(5, 1, 1004, '2023-01-20', 'Supervisor SSO'),
(6, 1, 1021, '2023-03-01', 'Operador Senior'),
(7, 1, 1051, '2023-03-05', 'Operador de Rajo'),
(8, 1, 1029, '2023-02-15', 'Ingeniero Planif.'),
(9, 1, 1056, '2023-02-15', 'Diseñador Mina'),
(10, 1, 1008, '2023-01-05', 'Legal Compliance'),

-- PROYECTO 2: Automatización de Camiones CAEX (Mayormente 112, 105, 102)
(11, 2, 1006, '2024-03-01', 'Líder Técnico TAO'),
(12, 2, 1003, '2024-03-05', 'Stakeholder Operac.'),
(13, 2, 1007, '2024-03-01', 'Ing. Mant. Pesado'),
(14, 2, 1031, '2024-03-15', 'Especialista TAO'),
(15, 2, 1071, '2024-03-20', 'Técnico Robótica'),
(16, 2, 1023, '2024-04-01', 'Mecánico Sénior'),
(17, 2, 1061, '2024-04-05', 'Operador Pilotaje'),

-- PROYECTO 3: Planta Desalinizadora (Mayormente 128, 111, 109, 104)
(18, 3, 1084, '2022-05-01', 'Director de Proyecto'),
(19, 3, 1011, '2022-05-15', 'Asesor Ambiental'),
(20, 3, 1050, '2022-06-01', 'Ing. Proceso Hídrico'),
(21, 3, 1013, '2022-06-01', 'Stakeholder Planta'),
(22, 3, 1047, '2022-07-01', 'Ingeniero de Aguas'),
(23, 3, 1056, '2022-08-01', 'Ingeniero Civil'),
(24, 3, 1099, '2022-09-01', 'Ing. Senior'),

-- PROYECTO 4: Optimización Molienda SAG (Mayormente 103, 115, 117)
(25, 4, 1014, '2023-11-01', 'Jefe de Proyecto'),
(26, 4, 1012, '2023-11-10', 'Ing. Eléctrico'),
(27, 4, 1015, '2023-11-20', 'Analista Químico'),
(28, 4, 1052, '2023-12-01', 'Operador de Molienda'),
(29, 4, 1062, '2023-12-05', 'Operador de Flotación'),
(30, 4, 1074, '2023-12-10', 'Técnico Instrument.'),
(31, 4, 1036, '2024-01-01', 'Asistente Lab.'),

-- PROYECTO 5: Cierre Depósito de Relaves N°1 (Mayormente 121, 109, 106)
(32, 5, 1086, '2021-04-01', 'Jefe de Cierre'),
(33, 5, 1011, '2021-04-15', 'Especialista Ambiental'),
(34, 5, 1004, '2021-05-01', 'Supervisor SSO'),
(35, 5, 1040, '2021-05-10', 'Técnico Geotécnico'),
(36, 5, 1067, '2021-06-01', 'Asistente de Procesos'),

-- PROYECTO 6: Modernización de Sistemas TI y Ciberseguridad (Mayormente 112, 115, 119)
(37, 6, 1006, '2024-01-01', 'Líder Infraestructura'),
(38, 6, 1008, '2024-01-10', 'Consultor Legal IT'),
(39, 6, 1012, '2024-01-15', 'Técnico de Redes'),
(40, 6, 1031, '2024-02-01', 'Especialista Cyber'),
(41, 6, 1071, '2024-02-15', 'Soporte Hardware'),
(42, 6, 1089, '2024-03-01', 'Coordinador Telecom.'),

-- PROYECTO 7: Implementación de ERNC (128, 115, 109)
(43, 7, 1084, '2023-07-15', 'Jefe de Proyecto'),
(44, 7, 1011, '2023-08-01', 'Asesor de Sustentabilidad'),
(45, 7, 1047, '2023-08-10', 'Ing. de Energía'),
(46, 7, 1034, '2023-09-01', 'Ing. Eléctrico'),
(47, 7, 1074, '2023-10-01', 'Técnico Instrument.'),

-- PROYECTO 8: Programa de Exploración Profunda Norte (101, 126, 102)
(48, 8, 1002, '2022-09-01', 'Director de Exploración'),
(49, 8, 1019, '2022-09-10', 'Modelador Geológico'),
(50, 8, 1026, '2022-10-01', 'Geóloga de Terreno'),
(51, 8, 1045, '2022-11-01', 'Analista GIS'),
(52, 8, 1055, '2022-12-01', 'Asistente de Sondaje'),
(53, 8, 1066, '2023-01-01', 'Muestrero'),
(54, 8, 1096, '2023-02-01', 'Geofísico'),

-- PROYECTO 9: Desarrollo de Competencias en Minería 4.0 (118, 112, 107)
(55, 9, 1017, '2024-01-15', 'Líder de Capacitación'),
(56, 9, 1006, '2024-02-01', 'Asesor Técnico'),
(57, 9, 1001, '2024-02-01', 'Stakeholder RRHH'),
(58, 9, 1037, '2024-03-01', 'Instructor TAO'),
(59, 9, 1077, '2024-03-10', 'Diseñador Instruc.'),

-- PROYECTO 10: Aumento de Capacidad en EW (104, 115, 103)
(60, 10, 1013, '2023-04-01', 'Jefe de Proyecto'),
(61, 10, 1027, '2023-04-10', 'Supervisor EW'),
(62, 10, 1058, '2023-05-01', 'Operador Sala Control'),
(63, 10, 1012, '2023-06-01', 'Ing. Instrumentación'),
(64, 10, 1014, '2023-07-01', 'Stakeholder Conc.'),
(65, 10, 1034, '2023-08-01', 'Técnico Eléctrico'),

-- PROYECTO 11: Rediseño de Flujo de Tráfico Interno (102, 106, 111)
(66, 11, 1003, '2023-10-01', 'Líder Operaciones'),
(67, 11, 1004, '2023-10-15', 'Asesor Vial SSO'),
(68, 11, 1050, '2023-11-01', 'Ing. Tráfico'),
(69, 11, 1021, '2023-11-10', 'Operador de Pruebas'),
(70, 11, 1056, '2023-12-01', 'Analista de Rutas'),

-- PROYECTO 12: Nuevo Modelo de Bloques Geológicos (101, 126)
(71, 12, 1002, '2024-04-10', 'Jefe de Proyecto'),
(72, 12, 1019, '2024-04-20', 'Modelador 3D'),
(73, 12, 1026, '2024-05-01', 'Geóloga de Recursos'),
(74, 12, 1045, '2024-05-15', 'Técnico GIS'),
(75, 12, 1055, '2024-06-01', 'Control de Calidad'),
(76, 12, 1066, '2024-07-01', 'Muestrero Principal'),

-- PROYECTO 13: Reemplazo de Flota de Palas Eléctricas (105, 102, 108, 120)
(77, 13, 1007, '2022-01-01', 'Líder de Adquisición'),
(78, 13, 1010, '2022-01-10', 'Especialista Compras'),
(79, 13, 1003, '2022-02-01', 'Stakeholder Operac.'),
(80, 13, 1023, '2022-03-01', 'Mecánico de Palas'),
(81, 13, 1054, '2022-04-01', 'Técnico Eléctrico'),
(82, 13, 1079, '2022-05-01', 'Analista Financiero'),
(83, 13, 1063, '2022-06-01', 'Capacitador Mant.'),

-- PROYECTO 14: Protocolo Hídrico Comunitario (113, 130, 109, 128)
(84, 14, 1020, '2024-01-01', 'Jefe de Proyecto'),
(85, 14, 1090, '2024-01-15', 'Asesor RR.II.'),
(86, 14, 1011, '2024-02-01', 'Especialista Hídrico'),
(87, 14, 1084, '2024-03-01', 'Stakeholder Agua'),
(88, 14, 1032, '2024-04-01', 'Encargada Comunidad'),
(89, 14, 1072, '2024-05-01', 'Asistente Com.')
,

-- PROYECTO 15: Sistema de Control de Polvo (109, 106, 102, 108)
(90, 15, 1011, '2023-02-15', 'Jefe de Proyecto'),
(91, 15, 1004, '2023-03-01', 'Asesor SSO'),
(92, 15, 1003, '2023-03-10', 'Stakeholder Mina'),
(93, 15, 1010, '2023-04-01', 'Coordinador Suministros'),
(94, 15, 1059, '2023-05-01', 'Monitor Ambiental'),
(95, 15, 1064, '2023-06-01', 'Prevencionista'),

-- PROYECTO 16: Digitalización de Documentación Legal (119, 112, 107)
(96, 16, 1008, '2024-05-01', 'Líder Legal'),
(97, 16, 1038, '2024-05-15', 'Abogada Senior'),
(98, 16, 1006, '2024-06-01', 'Asesor de Sistemas'),
(99, 16, 1095, '2024-07-01', 'Técnico Digitaliz.'),
(100, 16, 1108, '2024-08-01', 'Analista Legal'),

-- PROYECTO 17: Implementación de IoT en Mantenimiento Predictivo (112, 115, 105, 103)
(101, 17, 1006, '2023-08-15', 'Director TAO'),
(102, 17, 1012, '2023-09-01', 'Líder Mantenimiento'),
(103, 17, 1007, '2023-09-10', 'Especialista Mant.'),
(104, 17, 1031, '2023-10-01', 'Especialista IoT'),
(105, 17, 1014, '2023-11-01', 'Stakeholder Concentr.'),
(106, 17, 1071, '2023-12-01', 'Técnico de Sensores'),
(107, 17, 1104, '2024-01-01', 'Ing. Instrumentación'),

-- PROYECTO 18: Desarrollo del Nuevo Tajo Subterráneo (123, 101, 111, 102, 106)
(108, 18, 1088, '2021-02-15', 'Director Subterráneo'),
(109, 18, 1002, '2021-03-01', 'Asesor Geotécnico'),
(110, 18, 1050, '2021-04-01', 'Ing. de Minas'),
(111, 18, 1042, '2021-05-01', 'Geomecánica'),
(112, 18, 1004, '2021-06-01', 'Especialista Túneles'),
(113, 18, 1029, '2021-07-01', 'Planificador Minero'),
(114, 18, 1003, '2021-08-01', 'Stakeholder Rajo'),

-- PROYECTO 19: Certificación OHSAS 18001 (106, 129, 118, 107)
(115, 19, 1004, '2024-06-15', 'Líder de Certificación'),
(116, 19, 1016, '2024-07-01', 'Auditor Principal'),
(117, 19, 1017, '2024-08-01', 'Coordinador Capacit.'),
(118, 19, 1001, '2024-09-01', 'Stakeholder RRHH'),
(119, 19, 1024, '2024-10-01', 'Prevencionista'),
(120, 19, 1048, '2024-11-01', 'Asistente Auditoría'),
(121, 19, 1053, '2024-12-01', 'Asistente de SSO'),

-- PROYECTO 20: Programa de Eficiencia Energética en Campamento (114, 128, 115)
(122, 20, 1018, '2023-06-15', 'Jefe de Proyecto'),
(123, 20, 1084, '2023-07-01', 'Asesor de Energía'),
(124, 20, 1012, '2023-08-01', 'Técnico Eléctrico'),
(125, 20, 1033, '2023-09-01', 'Técnico Mantención'),
(126, 20, 1060, '2023-10-01', 'Supervisora Campam.'),

-- Asignaciones Múltiples Adicionales (Total 140)
(127, 4, 1012, '2023-11-01', 'Ing. Mantenimiento'),
(128, 13, 1010, '2022-01-10', 'Comprador'),
(129, 1, 1008, '2023-01-05', 'Asesor Legal'),
(130, 2, 1007, '2024-03-01', 'Mecánico Industrial'),
(131, 3, 1047, '2022-07-01', 'Técnico de Bombeo'),
(132, 5, 1040, '2021-05-10', 'Geotécnico'),
(133, 6, 1089, '2024-03-01', 'Técnico Redes'),
(134, 7, 1034, '2023-09-01', 'Especialista ERNC'),
(135, 8, 1045, '2022-11-01', 'Analista de Datos'),
(136, 9, 1037, '2024-03-01', 'Instructor'),
(137, 10, 1034, '2023-08-01', 'Técnico Eléctrico'),
(138, 11, 1021, '2023-11-10', 'Operador Especial'),
(139, 12, 1019, '2024-04-20', 'Modelador'),
(140, 13, 1054, '2022-04-01', 'Técnico Eléctrico');


/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/
create table DEPARTAMENTOS
(
   ID_DEPARTAMENTO      int not null,
   NOMBRE_DEPARTAMENTO  char(100) not null,
   D_DESCRIPCION        char(255),
   GERENTE              char(30),
   FECHA_CREACION       date,
   primary key (ID_DEPARTAMENTO)
);

INSERT INTO DEPARTAMENTOS 
(ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO, D_DESCRIPCION, GERENTE, FECHA_CREACION)
VALUES
(101, 'Geología y Exploración', 'Estudio de yacimientos, modelamiento de bloques y sondajes en el desierto.', 'Dr. Patricio Araya', '2012-05-15'),
(102, 'Operaciones Mina Rajo', 'Planificación y ejecución de la extracción de material en la mina a cielo abierto.', 'Ing. Paula Núñez', '2011-08-20'),
(103, 'Planta Concentradora', 'Proceso de molienda, flotación y obtención de concentrado de cobre.', 'Ing. Sergio Bravo', '2013-03-10'),
(104, 'Lixiviación y Electro-obtención (EW/SX)', 'Extracción de mineral de baja ley y producción de cátodos de cobre.', 'Ing. Claudia Tapia', '2014-11-01'),
(105, 'Mantenimiento Equipos Pesados', 'Reparación y servicio de camiones CAEX, palas y perforadoras.', 'Héctor Guzmán', '2015-07-25'),
(106, 'Seguridad y Salud Ocupacional (SSO)', 'Fiscalización de protocolos de seguridad en faena (FAT, ART, PETS).', 'Lorena Castillo', '2010-02-28'),
(107, 'Recursos Humanos y Turnos', 'Gestión de dotación, sistemas de turnos 7x7 y contratación de personal minero.', 'Ana María Rojas', '2016-09-10'),
(108, 'Abastecimiento y Logística (Suministros)', 'Compra de insumos críticos (reactivos, neumáticos, explosivos).', 'Cristian Soto', '2017-04-05'),
(109, 'Medio Ambiente y Sustentabilidad', 'Monitoreo de glaciares, manejo de relaves y cumplimiento ambiental.', 'Ing. Elena Flores', '2018-01-30'),
(110, 'Control de Gestión y Presupuestos', 'Análisis de costos operacionales y rendimientos de producción.', 'Daniel Muñoz', '2013-10-17'),
(111, 'Ingeniería y Proyectos', 'Diseño de expansiones, nuevos tajos y optimización de procesos.', 'Ing. Juan Lagos', '2014-03-01'),
(112, 'Tecnología y Automatización Minera (TAO)', 'Implementación de sistemas autónomos y control remoto de equipos.', 'Gustavo Pérez', '2019-12-01'),
(113, 'Comunicaciones y Asuntos Comunitarios', 'Relación con comunidades aledañas y gestión de la licencia social para operar.', 'Viviana Díaz', '2016-12-19'),
(114, 'Servicios a Faena', 'Gestión de campamento, casino, transporte de personal y servicios básicos.', 'Rubén Morales', '2015-09-07'),
(115, 'Mantenimiento Eléctrico e Instrumentación', 'Cuidado de subestaciones, equipos de alta tensión y control de procesos.', 'Mario Zapata', '2014-01-22'),
(116, 'Ventas y Comercio de Cobre', 'Comercialización internacional de concentrado y cátodos de cobre.', 'Javier Soto', '2017-05-11'),
(117, 'Laboratorio Químico Central', 'Análisis de leyes de mineral, control de calidad del producto final.', 'Dra. Isabel Guzmán', '2013-03-25'),
(118, 'Desarrollo Organizacional y Capacitación', 'Programas de entrenamiento en competencias mineras y liderazgo en faena.', 'Felipe Rojas', '2020-03-08'),
(119, 'Legal y Compliance Minero', 'Asuntos legales, permisos sectoriales y cumplimiento de regulaciones mineras chilenas.', 'Abog. Héctor Vega', '2016-06-29'),
(120, 'Finanzas Corporativas', 'Tesorería, gestión de deuda y relaciones con inversionistas.', 'Laura Martínez', '2012-10-04'),
(121, 'Relaves y Depósito de Estériles', 'Operación y mantenimiento de los tranques y botaderos de material.', 'Ing. Ernesto Pineda', '2017-02-09'),
(122, 'Control de Riesgos Operacionales', 'Identificación y mitigación de riesgos de fallas mayores en equipos y procesos.', 'Nora Elías', '2019-07-01'),
(123, 'Minería Subterránea (Si aplica)', 'Planificación y operación de túneles y galerías.', 'Ing. Miguel Ángel Soto', '2011-04-18'),
(124, 'Telecomunicaciones en Faena', 'Mantenimiento de redes de radio, fibra óptica y sistemas de comunicación de datos.', 'Omar Mendoza', '2018-06-05'),
(125, 'Gestión de Contratistas', 'Administración y fiscalización del personal de empresas de servicios externas.', 'Mónica Soto', '2015-04-20'),
(126, 'Procesamiento de Datos Geológicos', 'Manejo de bases de datos de sondajes y modelos de reservas (Datamine, Leapfrog).', 'Esteban Silva', '2020-05-16'),
(127, 'Taller de Neumáticos (Tyres)', 'Control, mantenimiento y reemplazo de neumáticos OTR gigantes.', 'Andrés Castro', '2013-09-18'),
(128, 'Recuperación de Agua y Energía', 'Gestión eficiente de recursos hídricos (desalinización) y consumo eléctrico.', 'Ing. Lucía Vidal', '2021-01-05'),
(129, 'Auditoría Interna', 'Revisión independiente de procesos y controles internos.', 'Ricardo Morales', '2022-02-14'),
(130, 'Relaciones Institucionales (Gobierno)', 'Contacto y coordinación con autoridades gubernamentales y SERNAGEOMIN.', 'Diana Campos', '2016-03-15');


/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS
(
   ID_EMPLEADO          int not null,
   NOMBRE               char(25),
   DIRECCION            char(25),
   TELEFONO             int,
   MAIL                 char(40) not null,
   SALARIO              int,
   ID_DEPARTAMENTO      int,
   FECHA_INICIO_C       date,
   FECHA_TERMINO_C      date,
   primary key (ID_EMPLEADO)
);

INSERT INTO EMPLEADOS
(ID_EMPLEADO, NOMBRE, DIRECCION, TELEFONO, MAIL, SALARIO, ID_DEPARTAMENTO, FECHA_INICIO_C, FECHA_TERMINO_C)
VALUES
(1001, 'Ana María Rojas', 'Av. La Dehesa 456', 987654321, 'ana.rojas@mineraca.cl', 5200000, 107, '2015-01-10', NULL),
(1002, 'Dr. Patricio Araya', 'Calle El Cobre 10', 955551111, 'patricio.araya@mineraca.cl', 6500000, 101, '2012-05-15', NULL),
(1003, 'Ing. Paula Núñez', 'Las Condes 890', 944442222, 'paula.nunez@mineraca.cl', 7800000, 102, '2011-08-20', NULL),
(1004, 'Lorena Castillo', 'Sector Industrial 5', 933333333, 'lorena.castillo@mineraca.cl', 5000000, 106, '2010-02-28', NULL),
(1005, 'Daniel Muñoz', 'Viña del Mar 100', 922224444, 'daniel.munoz@mineraca.cl', 4900000, 110, '2013-10-17', NULL),
(1006, 'Gustavo Pérez', 'Antofagasta 2000', 911115555, 'gustavo.perez@mineraca.cl', 5500000, 112, '2019-12-01', NULL),
(1007, 'Héctor Guzmán', 'Calama Norte 300', 900006666, 'hector.guzman@mineraca.cl', 4500000, 105, '2015-07-25', NULL),
(1008, 'Abog. Héctor Vega', 'Providencia 40', 998761234, 'hector.vega@mineraca.cl', 4800000, 119, '2016-06-29', NULL),
(1009, 'Javier Soto', 'Santiago Centro 55', 976543210, 'javier.soto@mineraca.cl', 5100000, 116, '2017-05-11', NULL),
(1010, 'Cristian Soto', 'La Serena 678', 965432109, 'cristian.soto@mineraca.cl', 4200000, 108, '2017-04-05', NULL),
(1011, 'Ing. Elena Flores', 'Alto Hospicio 123', 954321098, 'elena.flores@mineraca.cl', 5300000, 109, '2018-01-30', NULL),
(1012, 'Mario Zapata', 'Osorno 345', 943210987, 'mario.zapata@mineraca.cl', 3900000, 115, '2014-01-22', NULL),
(1013, 'Ing. Claudia Tapia', 'Vitacura 99', 932109876, 'claudia.tapia@mineraca.cl', 6000000, 104, '2014-11-01', NULL),
(1014, 'Ing. Sergio Bravo', 'Arica 1234', 921098765, 'sergio.bravo@mineraca.cl', 6300000, 103, '2013-03-10', NULL),
(1015, 'Dra. Isabel Guzmán', 'Temuco 567', 910987654, 'isabel.guzman@mineraca.cl', 4500000, 117, '2013-03-25', NULL),
(1016, 'Ricardo Morales', 'Puente Alto 789', 999887766, 'ricardo.morales@mineraca.cl', 3500000, 129, '2022-02-14', NULL),
(1017, 'Felipe Rojas', 'Iquique 112', 988776655, 'felipe.rojas@mineraca.cl', 3800000, 118, '2020-03-08', NULL),
(1018, 'Rubén Morales', 'Punta Arenas 34', 977665544, 'ruben.morales@mineraca.cl', 3100000, 114, '2015-09-07', NULL),
(1019, 'Esteban Silva', 'Las Nieves 56', 966554433, 'esteban.silva@mineraca.cl', 3300000, 126, '2020-05-16', NULL),
(1020, 'Viviana Díaz', 'Copiapó 789', 955443322, 'viviana.diaz@mineraca.cl', 3600000, 113, '2016-12-19', NULL),
(1021, 'Juan Torres', 'El Olivo 11', 987651234, 'juan.torres@mineraca.cl', 1800000, 102, '2021-01-05', NULL),
(1022, 'María Castro', 'Pasaje Austral 22', 976541234, 'maria.castro@mineraca.cl', 1950000, 103, '2020-04-10', NULL),
(1023, 'Pedro Gómez', 'Calle del Sol 33', 965431234, 'pedro.gomez@mineraca.cl', 2100000, 105, '2018-08-01', NULL),
(1024, 'Sofía Herrera', 'Av. Central 44', 954321234, 'sofia.herrera@mineraca.cl', 1500000, 106, '2022-06-15', NULL),
(1025, 'Diego Salas', 'Lo Barnechea 55', 943211234, 'diego.salas@mineraca.cl', 1650000, 107, '2023-02-28', NULL),
(1026, 'Carolina Díaz', 'Rancagua 66', 932101234, 'carolina.diaz@mineraca.cl', 2300000, 101, '2019-11-05', NULL),
(1027, 'Vicente Robles', 'Puente Negro 77', 921091234, 'vicente.robles@mineraca.cl', 2500000, 104, '2017-03-20', NULL),
(1028, 'Catalina Soto', 'Av. Chañar 88', 910981234, 'catalina.soto@mineraca.cl', 2000000, 108, '2021-09-01', NULL),
(1029, 'Andrés Vera', 'Talca 99', 998760000, 'andres.vera@mineraca.cl', 2800000, 111, '2016-01-15', NULL),
(1030, 'Gabriela Leiva', 'Puerto Montt 110', 987650000, 'gabriela.leiva@mineraca.cl', 2200000, 110, '2019-07-10', NULL),
(1031, 'Fabián Núñez', 'Vicuña Mackenna 111', 976540000, 'fabian.nunez@mineraca.cl', 3000000, 112, '2020-10-25', NULL),
(1032, 'Camila Soto', 'Oasis 122', 965430000, 'camila.soto@mineraca.cl', 1700000, 113, '2022-01-01', NULL),
(1033, 'Benjamín Ruiz', 'Las Heras 133', 954320000, 'benjamin.ruiz@mineraca.cl', 1400000, 114, '2023-08-01', NULL),
(1034, 'Fernanda Castro', 'Av. Minera 144', 943210000, 'fernanda.castro@mineraca.cl', 2400000, 115, '2018-02-14', NULL),
(1035, 'Gonzalo Peña', 'Valparaíso 155', 932100000, 'gonzalo.pena@mineraca.cl', 2600000, 116, '2019-05-30', NULL),
(1036, 'Javiera López', 'Ruta 5 Norte 166', 921090000, 'javiera.lopez@mineraca.cl', 2000000, 117, '2021-03-01', NULL),
(1037, 'Raúl Soto', 'Concepción 177', 910980000, 'raul.soto@mineraca.cl', 1800000, 118, '2022-11-20', NULL),
(1038, 'Constanza Rojas', 'Ñuñoa 188', 999876543, 'constanza.rojas@mineraca.cl', 2900000, 119, '2020-09-07', NULL),
(1039, 'Marco Aguilera', 'Valdivia 199', 988765432, 'marco.aguilera@mineraca.cl', 3200000, 120, '2015-06-01', NULL),
(1040, 'Silvana Díaz', 'Avenida Principal 210', 977654321, 'silvana.diaz@mineraca.cl', 2100000, 121, '2018-04-10', NULL),
(1041, 'Claudio Moya', 'Tocopilla 211', 966543210, 'claudio.moya@mineraca.cl', 2700000, 122, '2017-12-05', NULL),
(1042, 'Paula Miranda', 'Calle Larga 212', 955432109, 'paula.miranda@mineraca.cl', 1900000, 123, '2020-06-01', NULL),
(1043, 'José Vargas', 'Pasaje Cordillera 213', 944321098, 'jose.vargas@mineraca.cl', 1600000, 124, '2021-08-01', NULL),
(1044, 'Elena Rojas', 'Chicureo 214', 933210987, 'elena.rojas@mineraca.cl', 2500000, 125, '2019-03-10', NULL),
(1045, 'Miguel Díaz', 'Barrio Minero 215', 922109876, 'miguel.diaz@mineraca.cl', 1800000, 126, '2022-04-20', NULL),
(1046, 'Daniela Soto', 'San Pedro 216', 911098765, 'daniela.soto@mineraca.cl', 1700000, 127, '2021-02-01', NULL),
(1047, 'Carlos Pérez', 'Villa Grande 217', 900987654, 'carlos.perez@mineraca.cl', 2300000, 128, '2019-10-01', NULL),
(1048, 'Natalia Ramos', 'Tierra Amarilla 218', 998761111, 'natalia.ramos@mineraca.cl', 1500000, 129, '2023-01-15', NULL),
(1049, 'Roberto Leiva', 'Puerto Varas 219', 987652222, 'roberto.leiva@mineraca.cl', 3500000, 130, '2016-04-01', NULL),
(1050, 'Ing. Juan Lagos', 'Av. El Minero 12', 965433333, 'juan.lagos@mineraca.cl', 5800000, 111, '2014-03-01', NULL),
(1051, 'Laura Videla', 'Villarrica 220', 944445555, 'laura.videla@mineraca.cl', 1900000, 102, '2020-07-20', NULL),
(1052, 'Mauricio Jara', 'Renca 221', 933336666, 'mauricio.jara@mineraca.cl', 2050000, 103, '2019-01-18', NULL),
(1053, 'Nicole Soto', 'San Felipe 222', 922227777, 'nicole.soto@mineraca.cl', 1600000, 106, '2022-09-01', NULL),
(1054, 'Patricio Morales', 'Chillán 223', 911118888, 'patricio.morales@mineraca.cl', 2300000, 105, '2016-10-10', NULL),
(1055, 'Andrea Rivas', 'Los Andes 224', 900009999, 'andrea.rivas@mineraca.cl', 2400000, 101, '2018-05-01', NULL),
(1056, 'René Díaz', 'Melipilla 225', 998765555, 'rene.diaz@mineraca.cl', 2900000, 111, '2017-04-12', NULL),
(1057, 'Francisca Vega', 'Talagante 226', 987654444, 'francisca.vega@mineraca.cl', 1800000, 108, '2023-05-01', NULL),
(1058, 'Guillermo Jara', 'Buin 227', 976543333, 'guillermo.jara@mineraca.cl', 2200000, 104, '2016-06-25', NULL),
(1059, 'Ignacio Flores', 'Lampa 228', 965432222, 'ignacio.flores@mineraca.cl', 2000000, 109, '2021-03-01', NULL),
(1060, 'Erika Lagos', 'Colina 229', 954321111, 'erika.lagos@mineraca.cl', 1700000, 114, '2022-01-20', NULL),
(1061, 'Gonzalo Fuenzalida', 'Elqui 301, Coquimbo', 955556667, 'gonzalo.fuen@mineraca.cl', 2600000, 102, '2017-11-15', NULL),
(1062, 'Tamara Soto', 'Maipú 145, Santiago', 944447778, 'tamara.soto@mineraca.cl', 1900000, 103, '2023-01-20', NULL),
(1063, 'Rodrigo Palma', 'Huasco 88, Vallenar', 933338889, 'rodrigo.palma@mineraca.cl', 2100000, 105, '2019-06-05', NULL),
(1064, 'Pilar Núñez', 'Manuel Montt 500, Stgo', 922229990, 'pilar.nunez@mineraca.cl', 1700000, 106, '2022-03-01', NULL),
(1065, 'Javier Herrera', 'Carrera 120, Antofagasta', 911110001, 'javier.herrera@mineraca.cl', 1850000, 107, '2023-07-10', NULL),
(1066, 'Marta González', 'San Martín 40, Calama', 900001112, 'marta.gonzalez@mineraca.cl', 2450000, 101, '2018-09-20', NULL),
(1067, 'Eugenio Rojas', 'Plaza Pinto 55, Iquique', 998762223, 'eugenio.rojas@mineraca.cl', 2700000, 104, '2016-04-15', NULL),
(1068, 'Andrea Díaz', 'Salvador 20, La Serena', 987653334, 'andrea.diaz@mineraca.cl', 2200000, 108, '2020-11-01', NULL),
(1069, 'Felipe Morales', 'Las Torres 100, Copiapó', 976544445, 'felipe.morales@mineraca.cl', 3100000, 111, '2015-02-01', NULL),
(1070, 'Susana Bravo', 'Los Carrera 30, Rancagua', 965435556, 'susana.bravo@mineraca.cl', 2550000, 110, '2019-08-25', NULL),
(1071, 'Benito Flores', 'Pedro de Valdivia 11', 954326667, 'benito.flores@mineraca.cl', 3000000, 112, '2021-05-18', NULL),
(1072, 'Viviana Morales', 'Arturo Prat 80, Temuco', 943217778, 'viviana.morales@mineraca.cl', 1800000, 113, '2023-03-20', NULL),
(1073, 'Guillermo Lagos', 'Lautaro 90, Concepción', 932108889, 'guillermo.lagos@mineraca.cl', 1600000, 114, '2022-07-01', NULL),
(1074, 'Isidora Peña', 'Bulnes 60, Puerto Montt', 921099990, 'isidora.pena@mineraca.cl', 2800000, 115, '2017-01-10', NULL),
(1075, 'Diego Riquelme', 'Apoquindo 700, Stgo', 910980001, 'diego.riquelme@mineraca.cl', 3500000, 116, '2018-10-01', NULL),
(1076, 'Valentina Vidal', 'Freire 150, Talcahuano', 999871112, 'valentina.vidal@mineraca.cl', 2150000, 117, '2020-02-29', NULL),
(1077, 'Álvaro Guzmán', 'Los Tilos 20, Valdivia', 988762223, 'alvaro.guzman@mineraca.cl', 1900000, 118, '2022-04-04', NULL),
(1078, 'Carla Fernández', 'Tobalaba 50, Santiago', 977653334, 'carla.fernandez@mineraca.cl', 3200000, 119, '2016-11-10', NULL),
(1079, 'Sebastián Palma', 'Alameda 100, Chillán', 966544445, 'sebastian.palma@mineraca.cl', 3600000, 120, '2015-03-05', NULL),
(1080, 'Jimena Soto', 'Condell 25, Quilpué', 955435556, 'jimena.soto@mineraca.cl', 2300000, 121, '2019-01-30', NULL),
(1081, 'Maximiliano Vega', 'Merced 33, Curicó', 944326667, 'max.vega@mineraca.cl', 2900000, 122, '2017-08-01', NULL),
(1082, 'Daniela Pino', 'Dieciocho 18, San Fdo.', 933217778, 'daniela.pino@mineraca.cl', 2000000, 123, '2020-03-12', NULL),
(1083, 'Osvaldo Lagos', 'Aconcagua 40, Los Andes', 922108889, 'osvaldo.lagos@mineraca.cl', 1700000, 124, '2021-10-01', NULL),
(1084, 'Ing. Lucía Vidal', 'Las Flores 10, Calama', 911099990, 'lucia.vidal@mineraca.cl', 5400000, 128, '2021-01-05', NULL),
-- Gerente de Recuperación de Agua y Energía (ID 128)
(1085, 'Mónica Soto', 'El Arrayán 50, La Serena', 900980001, 'monica.soto@mineraca.cl', 4500000, 125, '2015-04-20', NULL),
-- Gerente de Gestión de Contratistas (ID 125)
(1086, 'Ing. Ernesto Pineda', 'Camino al Mar 70, Arica', 998761234, 'ernesto.pineda@mineraca.cl', 4800000, 121, '2017-02-09', NULL),
-- Gerente de Relaves y Estériles (ID 121)
(1087, 'Nora Elías', 'Riquelme 15, Vallenar', 987654321, 'nora.elias@mineraca.cl', 4600000, 122, '2019-07-01', NULL),
-- Gerente de Control de Riesgos (ID 122)
(1088, 'Ing. Miguel Ángel Soto', 'El Salto 100, Stgo', 976545678, 'miguel.soto@mineraca.cl', 5900000, 123, '2011-04-18', NULL),
-- Gerente de Minería Subterránea (ID 123)
(1089, 'Omar Mendoza', 'Taltal 30, Antofagasta', 965436789, 'omar.mendoza@mineraca.cl', 4100000, 124, '2018-06-05', NULL),
-- Gerente de Telecomunicaciones (ID 124)
(1090, 'Diana Campos', 'Av. del Mar 200, La Serena', 954327890, 'diana.campos@mineraca.cl', 4700000, 130, '2016-03-15', NULL),
-- Gerente de RR.II. (ID 130)
(1091, 'Javiera Ponce', 'Av. Norte 55, Calama', 943218901, 'javiera.ponce@mineraca.cl', 2000000, 102, '2021-04-10', NULL),
(1092, 'Fabián Torres', 'O Higgins 90, Copiapó', 932109012, 'fabian.torres@mineraca.cl', 1750000, 103, '2023-09-01', NULL),
(1093, 'Karen Lagos', 'Los Aromos 1, Rancagua', 921090123, 'karen.lagos@mineraca.cl', 2300000, 105, '2017-12-01', NULL),
(1094, 'Roberto Soto', 'Las Águilas 50, Stgo', 910981234, 'roberto.soto@mineraca.cl', 1550000, 106, '2023-05-01', NULL),
(1095, 'Camila Vidal', 'Volcán 80, Puerto Varas', 998762345, 'camila.vidal@mineraca.cl', 1900000, 107, '2022-08-15', NULL),
(1096, 'Nicolás Díaz', 'Los Pinos 10, Valparaíso', 987653456, 'nicolas.diaz@mineraca.cl', 2500000, 101, '2019-03-10', NULL),
(1097, 'Daniel Rojas', 'El Morro 20, Iquique', 976544567, 'daniel.rojas@mineraca.cl', 2600000, 104, '2016-08-01', NULL),
(1098, 'Andrea Paz', 'Av. Costanera 30, Arica', 965435678, 'andrea.paz@mineraca.cl', 2100000, 108, '2020-05-20', NULL),
(1099, 'Esteban Lara', 'Los Vilos 40, Illapel', 954326789, 'esteban.lara@mineraca.cl', 3000000, 111, '2014-10-01', NULL),
(1100, 'Paula Guerra', 'San Pablo 50, Talca', 943217890, 'paula.guerra@mineraca.cl', 2400000, 110, '2018-02-01', NULL),
(1101, 'Julián Castro', 'Los Canelos 60, Temuco', 932108901, 'julian.castro@mineraca.cl', 2800000, 112, '2022-01-01', NULL),
(1102, 'Claudia Flores', 'Avenida Sur 70, Stgo', 921090012, 'claudia.flores@mineraca.cl', 1650000, 113, '2023-06-01', NULL),
(1103, 'Ricardo Vidal', 'Km 10 Carretera, Calama', 910981123, 'ricardo.vidal@mineraca.cl', 1500000, 114, '2022-10-10', NULL),
(1104, 'Mariana Soto', 'José Miguel Carrera 80', 998762234, 'mariana.soto@mineraca.cl', 2750000, 115, '2018-03-20', NULL),
(1105, 'Felipe Lagos', 'Pedro Fontova 90, Stgo', 987653345, 'felipe.lagos@mineraca.cl', 3400000, 116, '2017-06-15', NULL),
(1106, 'Rosa Aguilera', 'Av. Central 10, Chillán', 976544456, 'rosa.aguilera@mineraca.cl', 2050000, 117, '2021-01-01', NULL),
(1107, 'Hugo Peña', 'Caupolicán 11, Concepción', 965435567, 'hugo.pena@mineraca.cl', 1800000, 118, '2023-04-01', NULL),
(1108, 'Loreto Bravo', 'Los Militares 12, Stgo', 954326678, 'loreto.bravo@mineraca.cl', 3100000, 119, '2017-09-01', NULL),
(1109, 'Marcelo Jara', 'Francisco Bilbao 13', 943217789, 'marcelo.jara@mineraca.cl', 3500000, 120, '2016-02-10', NULL),
(1110, 'Silvia Vargas', 'Las Condes 14, Santiago', 932108890, 'silvia.vargas@mineraca.cl', 2200000, 121, '2020-09-10', NULL);

/*==============================================================*/
/* Table: PROYECTOS                                             */
/*==============================================================*/
create table PROYECTOS
(
   ID_PROYECTO          int not null,
   NOMBRE_PROYECTO      char(100),
   FECHA_INICIO_P       date,
   P_DESCRIPCION        char(255),
   P_FECHA_TERMINO      date,
   primary key (ID_PROYECTO)
);

INSERT INTO PROYECTOS
(ID_PROYECTO, NOMBRE_PROYECTO, FECHA_INICIO_P, P_DESCRIPCION, P_FECHA_TERMINO)
VALUES
(1, 'Expansión Rajo Fase IV', '2023-01-01', 'Aumento de la capacidad de extracción de la mina a cielo abierto, incluye la reubicación de correas transportadoras.', '2026-12-31'),
(2, 'Automatización de Camiones CAEX', '2024-03-15', 'Implementación de una flota de camiones de extracción autónomos (CAEX) en el sector Sur del rajo.', '2025-11-30'),
(3, 'Planta Desalinizadora: Suministro Hídrico', '2022-06-01', 'Construcción y puesta en marcha de una nueva planta desalinizadora para garantizar el suministro de agua de proceso.', '2025-05-20'),
(4, 'Optimización Molienda SAG', '2023-11-20', 'Proyecto de ingeniería para incrementar el throughput y la eficiencia energética del molino SAG en la concentradora.', '2024-10-30'),
(5, 'Cierre y Post-Cierre de Depósito de Relaves N°1', '2021-04-10', 'Plan de estabilidad física y química, y manejo ambiental para el depósito de relaves más antiguo de la faena.', '2024-06-30'),
(6, 'Modernización de Sistemas TI y Ciberseguridad', '2024-01-05', 'Actualización de la infraestructura de red en faena y fortalecimiento de la ciberseguridad para sistemas críticos de control operacional (OT).', '2025-01-31'),
(7, 'Implementación de ERNC (Energías Renovables)', '2023-08-01', 'Instalación de paneles solares fotovoltaicos para autoabastecimiento parcial de energía eléctrica en el campamento.', '2024-09-01'),
(8, 'Programa de Exploración Profunda Norte', '2022-09-01', 'Campaña de sondajes diamantinos para cuantificar y caracterizar nuevos recursos mineros a gran profundidad.', '2025-04-01'),
(9, 'Desarrollo de Competencias en Minería 4.0', '2024-02-01', 'Programa de capacitación intensivo para operadores y mantenedores en el uso de nuevas tecnologías y robótica minera.', '2024-12-31'),
(10, 'Aumento de Capacidad en Electro-obtención', '2023-05-10', 'Ampliación de la nave de EW/SX para aumentar la producción anual de cátodos de cobre de alta pureza.', '2025-03-01'),
(11, 'Rediseño de Flujo de Tráfico Interno Mina', '2023-10-10', 'Estudio y aplicación de nuevas rutas de acarreo para reducir los tiempos de ciclo y el consumo de combustible de CAEX.', '2024-07-30'),
(12, 'Nuevo Modelo de Bloques Geológicos', '2024-04-20', 'Creación de un modelo geológico actualizado utilizando nuevos datos de sondaje y software avanzado (Leapfrog).', '2024-11-20'),
(13, 'Reemplazo de Flota de Palas Eléctricas', '2022-01-01', 'Adquisición y puesta en servicio de 5 nuevas palas eléctricas de mayor capacidad para optimizar la carga en el rajo.', '2025-06-01'),
(14, 'Protocolo Hídrico Comunitario', '2024-01-15', 'Establecimiento de un acuerdo con comunidades locales para la gestión transparente y sostenible del recurso hídrico.', '2025-01-15'),
(15, 'Sistema de Control de Polvo en Patios de Acopio', '2023-03-01', 'Instalación de sistemas avanzados de supresión de polvo para cumplir con la normativa ambiental en el desierto.', '2024-05-01'),
(16, 'Digitalización de Documentación Legal y Permisos', '2024-05-01', 'Proyecto de gestión documental para centralizar y digitalizar todos los permisos sectoriales y ambientales.', '2024-11-01'),
(17, 'Implementación de IoT en Mantenimiento Predictivo', '2023-09-01', 'Uso de sensores (IoT) en equipos críticos (molinos y bombas) para predecir fallas y reducir el tiempo de inactividad.', '2025-02-28'),
(18, 'Desarrollo del Nuevo Tajo Subterráneo', '2021-03-01', 'Estudio de factibilidad y diseño de ingeniería para la transición de un sector del rajo a minería subterránea.', '2026-03-01'),
(19, 'Certificación en Seguridad Operacional OHSAS 18001', '2024-07-01', 'Proceso de auditoría y ajuste de procesos para obtener la certificación internacional en salud y seguridad ocupacional.', '2025-07-01'),
(20, 'Programa de Eficiencia Energética en Campamento', '2023-07-01', 'Implementación de iluminación LED, sensores de movimiento y aislamiento térmico para reducir el consumo energético en el campamento minero.', '2024-04-30');


/*==============================================================*/
/* Table: REGISTROS_HORARIOS                                    */
/*==============================================================*/
create table REGISTROS_HORARIOS
(
   ID_REGISTRO          int not null,
   ID_EMPLEADO          int,
   FECHA                date,
   HORAS_TRABAJADAS     decimal,
   primary key (ID_REGISTRO)
);

INSERT INTO REGISTROS_HORARIOS
(ID_REGISTRO, ID_EMPLEADO, FECHA, HORAS_TRABAJADAS)
VALUES
-- Semana 1: Simulación de turno 7x7 (IDs 1001-1020)
(2001, 1003, '2025-11-25', 12.0),
(2002, 1004, '2025-11-25', 8.5),
(2003, 1007, '2025-11-25', 10.0),
(2004, 1021, '2025-11-25', 12.5),
(2005, 1023, '2025-11-25', 12.0),
(2006, 1054, '2025-11-25', 10.0),
(2007, 1002, '2025-11-26', 8.0),
(2008, 1005, '2025-11-26', 9.0),
(2009, 1014, '2025-11-26', 12.0),
(2010, 1022, '2025-11-26', 12.5),
(2011, 1052, '2025-11-26', 12.0),
(2012, 1003, '2025-11-26', 12.0),
(2013, 1004, '2025-11-26', 8.0),
(2014, 1007, '2025-11-26', 10.0),
(2015, 1021, '2025-11-26', 12.0),
(2016, 1023, '2025-11-26', 12.0),
(2017, 1054, '2025-11-26', 10.0),
(2018, 1002, '2025-11-27', 8.0),
(2019, 1005, '2025-11-27', 9.0),
(2020, 1014, '2025-11-27', 12.5),

-- Semana 2: Turno de Oficinas (IDs 1008-1020, 1030-1040)
(2021, 1008, '2025-11-27', 8.5),
(2022, 1010, '2025-11-27', 8.0),
(2023, 1020, '2025-11-27', 8.0),
(2024, 1030, '2025-11-27', 8.5),
(2025, 1038, '2025-11-27', 8.0),
(2026, 1044, '2025-11-27', 8.5),
(2027, 1049, '2025-11-27', 8.0),
(2028, 1008, '2025-11-28', 8.0),
(2029, 1010, '2025-11-28', 9.0),
(2030, 1020, '2025-11-28', 8.5),
(2031, 1030, '2025-11-28', 8.0),
(2032, 1038, '2025-11-28', 8.0),
(2033, 1044, '2025-11-28', 8.0),
(2034, 1049, '2025-11-28', 9.0),
(2035, 1006, '2025-11-28', 10.0),
(2036, 1012, '2025-11-28', 10.0),
(2037, 1017, '2025-11-28', 8.5),
(2038, 1006, '2025-11-29', 10.5),
(2039, 1012, '2025-11-29', 10.0),
(2040, 1017, '2025-11-29', 8.0),

-- Semana 3: Personal de faena (Operaciones, Mantención, Geología)
(2041, 1003, '2025-12-02', 12.0),
(2042, 1007, '2025-12-02', 10.5),
(2043, 1013, '2025-12-02', 12.0),
(2044, 1026, '2025-12-02', 12.0),
(2045, 1051, '2025-12-02', 12.0),
(2046, 1061, '2025-12-02', 12.0),
(2047, 1063, '2025-12-02', 10.0),
(2048, 1066, '2025-12-02', 12.0),
(2049, 1003, '2025-12-03', 12.5),
(2050, 1007, '2025-12-03', 10.0),
(2051, 1013, '2025-12-03', 12.0),
(2052, 1026, '2025-12-03', 12.0),
(2053, 1051, '2025-12-03', 12.0),
(2054, 1061, '2025-12-03', 12.0),
(2055, 1063, '2025-12-03', 10.0),
(2056, 1066, '2025-12-03', 12.0),
(2057, 1003, '2025-12-04', 12.0),
(2058, 1007, '2025-12-04', 10.0),
(2059, 1013, '2025-12-04', 12.0),
(2060, 1026, '2025-12-04', 12.0),

-- Continuación de Semana 3
(2061, 1051, '2025-12-04', 12.0),
(2062, 1061, '2025-12-04', 12.0),
(2063, 1063, '2025-12-04', 10.0),
(2064, 1066, '2025-12-04', 12.0),
(2065, 1003, '2025-12-05', 12.0),
(2066, 1007, '2025-12-05', 10.0),
(2067, 1013, '2025-12-05', 12.0),
(2068, 1026, '2025-12-05', 12.0),
(2069, 1051, '2025-12-05', 12.0),
(2070, 1061, '2025-12-05', 12.0),
(2071, 1063, '2025-12-05', 10.0),
(2072, 1066, '2025-12-05', 12.0),

-- Semana 4: Turno 4x3 (Administración, Ingeniería, Riesgos)
(2073, 1005, '2025-12-09', 9.5),
(2074, 1016, '2025-12-09', 8.5),
(2075, 1029, '2025-12-09', 9.0),
(2076, 1041, '2025-12-09', 8.5),
(2077, 1050, '2025-12-09', 9.0),
(2078, 1056, '2025-12-09', 9.0),
(2079, 1070, '2025-12-09', 8.5),
(2080, 1087, '2025-12-09', 9.0),
(2081, 1005, '2025-12-10', 9.0),
(2082, 1016, '2025-12-10', 8.0),
(2083, 1029, '2025-12-10', 9.5),
(2084, 1041, '2025-12-10', 9.0),
(2085, 1050, '2025-12-10', 9.0),
(2086, 1056, '2025-12-10', 9.0),
(2087, 1070, '2025-12-10', 8.0),
(2088, 1087, '2025-12-10', 8.5),
(2089, 1005, '2025-12-11', 9.0),
(2090, 1016, '2025-12-11', 8.0),

-- Continuación Semana 4 (incluyendo IDs altos)
(2091, 1029, '2025-12-11', 9.0),
(2092, 1041, '2025-12-11', 8.5),
(2093, 1050, '2025-12-11', 9.0),
(2094, 1056, '2025-12-11', 9.0),
(2095, 1070, '2025-12-11', 8.5),
(2096, 1087, '2025-12-11', 8.5),
(2097, 1005, '2025-12-12', 9.0),
(2098, 1016, '2025-12-12', 8.0),
(2099, 1029, '2025-12-12', 9.0),
(2100, 1041, '2025-12-12', 8.0),
(2101, 1050, '2025-12-12', 9.0),
(2102, 1056, '2025-12-12', 9.0),
(2103, 1070, '2025-12-12', 8.0),
(2104, 1087, '2025-12-12', 8.0),

-- Semana 5: Varios departamentos y roles (IDs 1080-1110)
(2105, 1080, '2025-12-16', 12.0),
(2106, 1081, '2025-12-16', 8.5),
(2107, 1083, '2025-12-16', 10.0),
(2108, 1084, '2025-12-16', 9.0),
(2109, 1085, '2025-12-16', 8.5),
(2110, 1091, '2025-12-16', 12.5),
(2111, 1093, '2025-12-16', 10.0),
(2112, 1100, '2025-12-16', 8.0),
(2113, 1104, '2025-12-16', 10.0),
(2114, 1109, '2025-12-16', 8.5),
(2115, 1080, '2025-12-17', 12.0),
(2116, 1081, '2025-12-17', 8.0),
(2117, 1083, '2025-12-17', 10.0),
(2118, 1084, '2025-12-17', 9.0),
(2119, 1085, '2025-12-17', 8.0),
(2120, 1091, '2025-12-17', 12.0),
(2121, 1093, '2025-12-17', 10.0),
(2122, 1100, '2025-12-17', 8.5),
(2123, 1104, '2025-12-17', 10.0),
(2124, 1109, '2025-12-17', 8.0),
(2125, 1080, '2025-12-18', 12.0),
(2126, 1081, '2025-12-18', 8.5),
(2127, 1083, '2025-12-18', 10.0),
(2128, 1084, '2025-12-18', 9.0),
(2129, 1085, '2025-12-18', 8.0),
(2130, 1091, '2025-12-18', 12.0),
(2131, 1093, '2025-12-18', 10.0),
(2132, 1100, '2025-12-18', 8.0),
(2133, 1104, '2025-12-18', 10.0),
(2134, 1109, '2025-12-18', 8.5),
(2135, 1080, '2025-12-19', 12.0),
(2136, 1081, '2025-12-19', 8.0),
(2137, 1083, '2025-12-19', 10.0),
(2138, 1084, '2025-12-19', 9.0),
(2139, 1085, '2025-12-19', 8.0),
(2140, 1091, '2025-12-19', 12.0),

-- Continuación y registros extra para alcanzar 160
(2141, 1093, '2025-12-19', 10.0),
(2142, 1100, '2025-12-19', 8.5),
(2143, 1104, '2025-12-19', 10.0),
(2144, 1109, '2025-12-19', 8.0),
(2145, 1011, '2025-12-09', 8.5),
(2146, 1015, '2025-12-10', 9.0),
(2147, 1019, '2025-12-11', 8.0),
(2148, 1027, '2025-12-12', 12.0),
(2149, 1035, '2025-12-16', 8.5),
(2150, 1040, '2025-12-17', 12.0),
(2151, 1042, '2025-12-18', 12.0),
(2152, 1047, '2025-12-19', 8.5),
(2153, 1055, '2025-11-25', 12.0),
(2154, 1058, '2025-11-26', 12.0),
(2155, 1062, '2025-11-27', 12.0),
(2156, 1067, '2025-11-28', 12.0),
(2157, 1073, '2025-12-02', 8.0),
(2158, 1076, '2025-12-03', 8.5),
(2159, 1082, '2025-12-04', 12.0),
(2160, 1086, '2025-12-05', 12.0),
(2161, 1092, '2025-12-09', 12.0),
(2162, 1096, '2025-12-10', 12.0),
(2163, 1101, '2025-12-11', 10.0),
(2164, 1106, '2025-12-12', 8.0),
(2165, 1110, '2025-12-16', 12.0),
(2166, 1001, '2025-11-25', 8.5),
(2167, 1001, '2025-11-26', 8.0),
(2168, 1001, '2025-11-27', 8.5),
(2169, 1001, '2025-11-28', 8.0),
(2170, 1001, '2025-12-02', 9.0),
(2171, 1001, '2025-12-03', 8.5),
(2172, 1001, '2025-12-04', 8.0),
(2173, 1001, '2025-12-05', 9.0),
(2174, 1001, '2025-12-09', 8.5),
(2175, 1001, '2025-12-10', 8.0),
(2176, 1001, '2025-12-11', 8.0),
(2177, 1001, '2025-12-12', 8.5),
(2178, 1001, '2025-12-16', 8.0),
(2179, 1001, '2025-12-17', 8.0),
(2180, 1001, '2025-12-18', 8.5),
(2181, 1001, '2025-12-19', 8.0),
(2182, 1002, '2025-11-28', 8.5),
(2183, 1002, '2025-12-09', 9.0),
(2184, 1002, '2025-12-10', 8.0),
(2185, 1002, '2025-12-11', 8.5),
(2186, 1002, '2025-12-12', 9.0),
(2187, 1006, '2025-12-02', 10.0),
(2188, 1006, '2025-12-03', 10.5),
(2189, 1006, '2025-12-04', 10.0),
(2190, 1006, '2025-12-05', 10.0),
(2191, 1010, '2025-12-09', 8.5),
(2192, 1010, '2025-12-10', 8.0),
(2193, 1010, '2025-12-11', 8.5),
(2194, 1010, '2025-12-12', 8.0),
(2195, 1018, '2025-11-25', 8.0),
(2196, 1018, '2025-11-26', 8.5),
(2197, 1018, '2025-11-27', 8.0),
(2198, 1018, '2025-11-28', 8.5),
(2199, 1024, '2025-12-09', 12.0),
(2200, 1024, '2025-12-10', 12.0);

CREATE TABLE USERS
(
   ID_USUARIO        int not null,
   ID_EMPLEADO       int,
   NOMBRE_USUARIO    char(50),
   PASSWORD          char(64),
   primary key (ID_USUARIO)
);

INSERT INTO USERS 
(ID_USUARIO, ID_EMPLEADO, NOMBRE_USUARIO, PASSWORD)
VALUES
(1, 1001, 'ARojas', SHA2('ARojas123', 256)),
(2, 1002, 'PAraya', SHA2('PAraya123', 256)),
(3, 1003, 'PNunez', SHA2('PNunez123', 256)),
(4, 1004, 'LCastillo', SHA2('LCastillo123', 256)),
(5, 1005, 'DMunoz', SHA2('DMunoz123', 256)),
(6, 1006, 'GPerez', SHA2('GPerez123', 256)),
(7, 1007, 'HGuzman', SHA2('HGuzman123', 256)),
(8, 1008, 'HVega', SHA2('HVega123', 256)),
(9, 1009, 'JSoto', SHA2('JSoto123', 256)),
(10, 1010, 'CSoto', SHA2('CSoto123', 256)),
(11, 1011, 'EFlores', SHA2('EFlores123', 256)),
(12, 1012, 'MZapata', SHA2('MZapata123', 256)),
(13, 1013, 'CTapia', SHA2('CTapia123', 256)),
(14, 1014, 'SBravo', SHA2('SBravo123', 256)),
(15, 1015, 'IGuzman', SHA2('IGuzman123', 256)),
(16, 1016, 'RMoral', SHA2('RMoral123', 256)),
(17, 1017, 'FRojas', SHA2('FRojas123', 256)),
(18, 1018, 'RMorales', SHA2('RMorales123', 256)),
(19, 1019, 'ESilva', SHA2('ESilva123', 256)),
(20, 1020, 'VDiaz', SHA2('VDiaz123', 256)),
(21, 1021, 'JTorres', SHA2('JTorres123', 256)),
(22, 1022, 'MCastro', SHA2('MCastro123', 256)),
(23, 1023, 'PGomez', SHA2('PGomez123', 256)),
(24, 1024, 'SHerrera', SHA2('SHerrera123', 256)),
(25, 1025, 'DSalas', SHA2('DSalas123', 256)),
(26, 1026, 'CDiaz', SHA2('CDiaz123', 256)),
(27, 1027, 'VRobles', SHA2('VRobles123', 256)),
(28, 1028, 'CSoto', SHA2('CSoto123', 256)),
(29, 1029, 'AVera', SHA2('AVera123', 256)),
(30, 1030, 'GLeiva', SHA2('GLeiva123', 256)),
(31, 1031, 'FNunez', SHA2('FNunez123', 256)),
(32, 1032, 'CSotoCamila', SHA2('CSotoCamila123', 256)),
(33, 1033, 'BRuiz', SHA2('BRuiz123', 256)),
(34, 1034, 'FCastro', SHA2('FCastro123', 256)),
(35, 1035, 'GPena', SHA2('GPena123', 256)),
(36, 1036, 'JLopez', SHA2('JLopez123', 256)),
(37, 1037, 'RSoto', SHA2('RSoto123', 256)),
(38, 1038, 'CRojas', SHA2('CRojas123', 256)),
(39, 1039, 'MAguilera', SHA2('MAguilera123', 256)),
(40, 1040, 'SDiaz', SHA2('SDiaz123', 256)),
(41, 1041, 'CMoya', SHA2('CMoya123', 256)),
(42, 1042, 'PMiranda', SHA2('PMiranda123', 256)),
(43, 1043, 'JVargas', SHA2('JVargas123', 256)),
(44, 1044, 'ERojas', SHA2('ERojas123', 256)),
(45, 1045, 'MDiaz', SHA2('MDiaz123', 256)),
(46, 1046, 'DSoto', SHA2('DSoto123', 256)),
(47, 1047, 'CPerez', SHA2('CPerez123', 256)),
(48, 1048, 'NRamos', SHA2('NRamos123', 256)),
(49, 1049, 'RLeiva', SHA2('RLeiva123', 256)),
(50, 1050, 'JLAGOS', SHA2('JLAGOS123', 256)),
(51, 1051, 'LVidela', SHA2('LVidela123', 256)),
(52, 1052, 'MJara', SHA2('MJara123', 256)),
(53, 1053, 'NSoto', SHA2('NSoto123', 256)),
(54, 1054, 'PMorales', SHA2('PMorales123', 256)),
(55, 1055, 'ARivas', SHA2('ARivas123', 256)),
(56, 1056, 'RDiaz', SHA2('RDiaz123', 256)),
(57, 1057, 'FVega', SHA2('FVega123', 256)),
(58, 1058, 'GJara', SHA2('GJara123', 256)),
(59, 1059, 'IFlores', SHA2('IFlores123', 256)),
(60, 1060, 'ELagos', SHA2('ELagos123', 256)),
(61, 1061, 'GFuenzalida', SHA2('GFuenzalida123', 256)),
(62, 1062, 'TSoto', SHA2('TSoto123', 256)),
(63, 1063, 'RPalma', SHA2('RPalma123', 256)),
(64, 1064, 'PNunezP', SHA2('PNunezP123', 256)),
(65, 1065, 'HHerrera', SHA2('HHerrera123', 256)),
(66, 1066, 'MGonzalez', SHA2('MGonzalez123', 256)),
(67, 1067, 'ERojasE', SHA2('ERojasE123', 256)),
(68, 1068, 'ADiaz', SHA2('ADiaz123', 256)),
(69, 1069, 'FMorales', SHA2('FMorales123', 256)),
(70, 1070, 'SBravoS', SHA2('SBravoS123', 256)),
(71, 1071, 'BFlores', SHA2('BFlores123', 256)),
(72, 1072, 'VMorales', SHA2('VMorales123', 256)),
(73, 1073, 'GLagos', SHA2('GLagos123', 256)),
(74, 1074, 'IPena', SHA2('IPena123', 256)),
(75, 1075, 'DRiquelme', SHA2('DRiquelme123', 256)),
(76, 1076, 'VVidal', SHA2('VVidal123', 256)),
(77, 1077, 'AGuzman', SHA2('AGuzman123', 256)),
(78, 1078, 'CFernandez', SHA2('CFernandez123', 256)),
(79, 1079, 'SPalma', SHA2('SPalma123', 256)),
(80, 1080, 'JSotoJ', SHA2('JSotoJ123', 256)),
(81, 1081, 'M Vega', SHA2('M Vega123', 256)),
(82, 1082, 'DPino', SHA2('DPino123', 256)),
(83, 1083, 'OLagos', SHA2('OLagos123', 256)),
(84, 1084, 'LVidal', SHA2('LVidal123', 256)),
(85, 1085, 'MSotoM', SHA2('MSotoM123', 256)),
(86, 1086, 'EPineda', SHA2('EPineda123', 256)),
(87, 1087, 'N Elias', SHA2('N Elias123', 256)),
(88, 1088, 'MASoto', SHA2('MASoto123', 256)),
(89, 1089, 'OMendoza', SHA2('OMendoza123', 256)),
(90, 1090, 'DCampos', SHA2('DCampos123', 256)),
(91, 1091, 'JPonce', SHA2('JPonce123', 256)),
(92, 1092, 'FTorres', SHA2('FTorres123', 256)),
(93, 1093, 'KLagos', SHA2('KLagos123', 256)),
(94, 1094, 'RSotoR', SHA2('RSotoR123', 256)),
(95, 1095, 'CVidal', SHA2('CVidal123', 256)),
(96, 1096, 'NDiaz', SHA2('NDiaz123', 256)),
(97, 1097, 'DRojas', SHA2('DRojas123', 256)),
(98, 1098, 'APaz', SHA2('APaz123', 256)),
(99, 1099, 'ELara', SHA2('ELara123', 256)),
(100, 1100, 'PGuerra', SHA2('PGuerra123', 256));

alter table ASIGNACION_PROYECTO add constraint FK_RELATIONSHIP_5 foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO) on delete restrict on update restrict;

alter table ASIGNACION_PROYECTO add constraint FK_RELATIONSHIP_6 foreign key (ID_PROYECTO)
      references PROYECTOS (ID_PROYECTO) on delete restrict on update restrict;

alter table EMPLEADOS add constraint FK_RELATIONSHIP_1 foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTOS (ID_DEPARTAMENTO) on delete restrict on update restrict;

alter table REGISTROS_HORARIOS add constraint FK_RELATIONSHIP_4 foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO) on delete restrict on update restrict;
/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     27-11-2025 20:20:41                          */
/*==============================================================*/


drop table if exists ASIGNACION_PROYECTO;

drop table if exists DEPARTAMENTOS;

drop table if exists EMPLEADOS;

drop table if exists PROYECTOS;

drop table if exists REGISTROS_HORARIOS;

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
(1, 1, 2, '2022-01-20', 'Desarrollador'),
(2, 1, 7, '2022-01-22', 'Analista'),
(3, 1, 12, '2022-02-01', 'Jefe de Proyecto'),
(4, 2, 4, '2021-09-10', 'Diseñador'),
(5, 2, 9, '2021-09-12', 'Community Manager'),

(6, 2, 14, '2021-10-05', 'Diseñador'),
(7, 3, 3, '2023-02-25', 'Contador'),
(8, 3, 8, '2023-03-01', 'Analista Financiero'),
(9, 3, 13, '2023-03-10', 'Supervisor'),
(10, 4, 4, '2023-05-05', 'Diseñador'),

(11, 4, 19, '2023-05-08', 'Analista de Marketing'),
(12, 4, 24, '2023-06-01', 'Productor'),
(13, 5, 10, '2020-03-20', 'Coordinador de Bodega'),
(14, 5, 15, '2020-03-25', 'Analista de Operaciones'),
(15, 5, 5, '2020-04-01', 'Supervisor de Inventario'),

(16, 6, 2, '2022-09-15', 'Desarrollador Senior'),
(17, 6, 17, '2022-09-18', 'Ingeniero de Redes'),
(18, 6, 22, '2022-10-02', 'Administrador TI'),
(19, 7, 7, '2021-04-10', 'Analista de Datos'),
(20, 7, 21, '2021-04-12', 'Asistente de Investigación'),

(21, 7, 11, '2021-04-20', 'Coordinadora'),
(22, 8, 8, '2024-01-15', 'Instructor'),
(23, 8, 16, '2024-01-18', 'Relatora'),
(24, 8, 23, '2024-02-01', 'Apoyo Administrativo'),
(25, 9, 9, '2023-11-05', 'Analista de Datos'),

(26, 9, 12, '2023-11-08', 'Programador BI'),
(27, 9, 18, '2023-12-01', 'Especialista PowerBI'),
(28, 10, 10, '2024-06-20', 'Analista Logístico'),
(29, 10, 20, '2024-06-22', 'Supervisor de Rutas'),
(30, 10, 25, '2024-07-01', 'Coordinador Operacional');


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
(1, 'Recursos Humanos', 'Departamento encargado de la gestión de personal', 'María López', '2018-03-12'),
(2, 'Tecnología', 'Área responsable del desarrollo y mantenimiento de sistemas', 'Carlos Pérez', '2019-07-01'),
(3, 'Finanzas', 'Departamento encargado del control financiero y presupuestos', 'Daniela Rojas', '2020-01-20'),
(4, 'Marketing', 'Área enfocada en publicidad, comunicación y redes', 'Jorge González', '2021-09-10'),
(5, 'Operaciones', 'Supervisa operaciones internas y procesos logísticos', 'Lucía Martínez', '2017-11-05');


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
(1, 'Ana Morales', 'Calle Los Robles 123', 912345678, 'ana.morales@empresa.cl', 850000, 1, '2019-02-10', NULL),
(2, 'Luis Herrera', 'Av. Central 456', 987654321, 'luis.herrera@empresa.cl', 1200000, 2, '2020-05-15', NULL),
(3, 'Claudia Pérez', 'Pasaje La Estrella 98', 934562781, 'claudia.perez@empresa.cl', 950000, 3, '2018-11-01', NULL),
(4, 'Javier Soto', 'Calle Las Palmas 33', 923456789, 'javier.soto@empresa.cl', 700000, 4, '2021-01-20', NULL),
(5, 'Marcela Díaz', 'Av. Las Torres 987', 945612378, 'marcela.diaz@empresa.cl', 1100000, 5, '2017-06-30', NULL),

(6, 'Pedro Rivas', 'Calle Otoñal 456', 967845321, 'pedro.rivas@empresa.cl', 780000, 1, '2020-03-12', NULL),
(7, 'Natalia Fuentes', 'Pasaje Nueva Era 22', 913457892, 'natalia.fuentes@empresa.cl', 1300000, 2, '2022-08-10', NULL),
(8, 'Rodrigo Campos', 'Av. del Sol 765', 998123457, 'rodrigo.campos@empresa.cl', 1050000, 3, '2019-09-01', NULL),
(9, 'Valentina Cruz', 'Calle San Martín 200', 987321456, 'valentina.cruz@empresa.cl', 680000, 4, '2023-03-18', NULL),
(10, 'Tomás Aguilar', 'Av. Costanera 154', 976543210, 'tomas.aguilar@empresa.cl', 1150000, 5, '2018-07-22', NULL),

(11, 'Sofía Navarro', 'Calle Primavera 55', 964578123, 'sofia.navarro@empresa.cl', 900000, 1, '2016-10-10', NULL),
(12, 'Matías Vargas', 'Pasaje Norte 12', 912987654, 'matias.vargas@empresa.cl', 1250000, 2, '2020-11-05', NULL),
(13, 'Isidora López', 'Calle Río Claro 87', 955432178, 'isidora.lopez@empresa.cl', 850000, 3, '2019-04-23', NULL),
(14, 'Cristóbal Silva', 'Av. El Bosque 410', 923789456, 'cristobal.silva@empresa.cl', 720000, 4, '2021-12-01', NULL),
(15, 'Daniel Romero', 'Calle Sur 300', 989123654, 'daniel.romero@empresa.cl', 1080000, 5, '2017-01-17', NULL),

(16, 'Fernanda Araya', 'Calle Norte 778', 977841236, 'fernanda.araya@empresa.cl', 880000, 1, '2018-02-15', NULL),
(17, 'Diego Castillo', 'Av. Oriente 909', 944567231, 'diego.castillo@empresa.cl', 1180000, 2, '2021-06-12', NULL),
(18, 'Camila Rivera', 'Pasaje Azul 65', 931245768, 'camila.rivera@empresa.cl', 980000, 3, '2020-02-29', NULL),
(19, 'Benjamín León', 'Calle del Parque 144', 956781234, 'benjamin.leon@empresa.cl', 690000, 4, '2022-09-05', NULL),
(20, 'Antonia Reyes', 'Av. Pucará 311', 945678312, 'antonia.reyes@empresa.cl', 1120000, 5, '2019-05-09', NULL),

(21, 'Francisca Salas', 'Calle Olivares 45', 964123789, 'francisca.salas@empresa.cl', 830000, 1, '2020-10-15', NULL),
(22, 'Hernán Muñoz', 'Av. Cordillera 90', 987462319, 'hernan.munoz@empresa.cl', 1280000, 2, '2019-08-19', NULL),
(23, 'Paula Carrasco', 'Pasaje Arboleda 105', 978213456, 'paula.carrasco@empresa.cl', 910000, 3, '2021-04-17', NULL),
(24, 'Sebastián Vera', 'Calle Alameda 1001', 936521478, 'sebastian.vera@empresa.cl', 710000, 4, '2023-01-22', NULL),
(25, 'Ignacio Torres', 'Av. Portales 200', 955671234, 'ignacio.torres@empresa.cl', 1090000, 5, '2018-12-01', NULL);


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
(1, 'Implementación de Sistema de Asistencia', '2022-01-15', 'Proyecto para automatizar el registro de asistencia del personal', '2022-06-30'),
(2, 'Desarrollo de Portal Web Corporativo', '2021-09-01', 'Creación del nuevo sitio web institucional', '2022-03-10'),
(3, 'Optimización de Procesos Financieros', '2023-02-20', 'Mejora de flujos contables y reportes internos', '2023-10-05'),
(4, 'Campaña Publicitaria 2023', '2023-05-01', 'Campaña multimedial para reforzar la marca', '2023-08-25'),
(5, 'Sistema de Gestión de Inventario', '2020-03-12', 'Implementación de software para controlar stock y bodegas', '2020-11-30'),

(6, 'Modernización de Infraestructura TI', '2022-09-10', 'Actualización de servidores, redes y equipos críticos', '2023-04-18'),
(7, 'Análisis de Mercado Internacional', '2021-04-05', 'Investigación para expansión en mercados extranjeros', '2021-12-20'),
(8, 'Capacitación Integral del Personal', '2024-01-10', 'Programa de formación para mejorar habilidades laborales', '2024-05-30'),
(9, 'Automatización de Reportes Gerenciales', '2023-11-01', 'Creación de paneles e informes automáticos', NULL),
(10, 'Proyecto de Logística Inteligente', '2024-06-15', 'Optimización de rutas y procesos logísticos', NULL);


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
(1, 2,  '2024-01-05', 8),
(2, 7,  '2024-01-05', 7.5),
(3, 12, '2024-01-05', 9),
(4, 4,  '2024-01-06', 6),
(5, 9,  '2024-01-06', 8),

(6, 14, '2024-01-06', 7),
(7, 3,  '2024-02-10', 8),
(8, 8,  '2024-02-10', 9),
(9, 13, '2024-02-10', 7),
(10, 4, '2024-03-01', 8.5),

(11, 19,'2024-03-01', 6.5),
(12, 24,'2024-03-01', 8),
(13, 10,'2024-03-15', 7),
(14, 15,'2024-03-15', 8),
(15, 5, '2024-03-15', 9),

(16, 2, '2024-04-20', 8.5),
(17, 17,'2024-04-20', 7),
(18, 22,'2024-04-20', 9),
(19, 7, '2024-05-11', 6),
(20, 21,'2024-05-11', 7.5),

(21, 11,'2024-05-11', 8),
(22, 8, '2024-06-25', 8.5),
(23, 16,'2024-06-25', 7.5),
(24, 23,'2024-06-25', 6),
(25, 9, '2024-07-02', 9),

(26, 12,'2024-07-02', 8),
(27, 18,'2024-07-02', 7),
(28, 10,'2024-08-14', 7.5),
(29, 20,'2024-08-14', 8),
(30, 25,'2024-08-14', 9),

(31, 1, '2025-01-10', 8),
(32, 6, '2025-01-10', 7.5),
(33, 11,'2025-01-10', 9),
(34, 13,'2025-02-03', 8),
(35, 17,'2025-02-03', 6),

(36, 22,'2025-02-03', 7.5),
(37, 4, '2025-03-20', 8),
(38, 9, '2025-03-20', 8.5),
(39, 14,'2025-03-20', 6),
(40, 23,'2025-03-21', 9);

CREATE TABLE USERS
(
   ID_USUARIO        int not null,
   ID_EMPLEADO       int,
   NOMBRE_USUARIO    char(50),
   PASSWORD          ,
   primary key (ID_USUARIO)
);


alter table ASIGNACION_PROYECTO add constraint FK_RELATIONSHIP_5 foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO) on delete restrict on update restrict;

alter table ASIGNACION_PROYECTO add constraint FK_RELATIONSHIP_6 foreign key (ID_PROYECTO)
      references PROYECTOS (ID_PROYECTO) on delete restrict on update restrict;

alter table EMPLEADOS add constraint FK_RELATIONSHIP_1 foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTOS (ID_DEPARTAMENTO) on delete restrict on update restrict;

alter table REGISTROS_HORARIOS add constraint FK_RELATIONSHIP_4 foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO) on delete restrict on update restrict;
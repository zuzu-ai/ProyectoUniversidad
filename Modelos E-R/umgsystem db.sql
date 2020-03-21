create database umgsystem;
use umgsystem;

create table Asignaturas(
Id_Asignatura varchar(10) primary key,
NombreAsignatura varchar(60) not null,
EstadoAsignatura varchar(1) not null
)engine=innodb;

create table certificados(
id_certificado varchar(5) primary key,
estado_asignatura varchar(1) not null,
foreign key (estado_asignatura) references
Asignaturas(Id_Asignatura)
)engine=innodb;

create table Directores(
Id_Director varchar(10) primary key,
nombreDirector varchar(60) not null,
direccionDirector varchar(60) not null,
Estado_Director varchar(1) not null
)engine=innodb;

create table Sedes(
Id_Sede varchar(10) not null,
Nombre_Sede varchar(60) not null,
Direccion_sede varchar(80) not null,
Numero_sede int not null,
Numero_Telefinco varchar (30) not null,
Id_Director varchar(10) not null,
Numero_Estudiante int not null,
Numero_Maestros int not null,
Numero_Carreras int not null,
Estado_Sede varchar (1) not null
)engine=InnoDB;

create table Alumnos
(
IDAlumno varchar(10) primary key,
CorreoInsAlumno varchar(60) not null,
Asignatura varchar(1) not null,
foreign key (Asignatura) References
Asignaturas(Id_Asignatura),
NombreAlumno varchar (60) not null,
MatriculaAlumno varchar(60) not null,
DireccionAlumno varchar(60) not null,
carnet_alumno varchar(12) not null,
FechaNacAlumno date not null,
EdadAlumno varchar(60) not null,
FechaIngresoAlumno date not null,
EstadoSolvenciaAlumno varchar(1) not null,
PensumCerrado varchar(1) not null,
FotostaticaTitulo varchar(1) not null,
CertificacionNM varchar(1) not null,
DPI_CertificadoNacimiento varchar(1) not null,
Fotografia varchar(1) not null,
estado_alumno varchar(1) not null,
foreign key (estado_alumno) references
certificados(id_certificado)
)engine=innodb;

create table Maestros(
Id_Maestro varchar(4) primary key,
Nombre_Maestro varchar(60) not null,
Sexo_Maestro varchar(1) not null,
Edad_Maestro int not null,
Direccion_Maestro varchar(60) not null,
Sueldo_Maestro double not null,
Asignatura_Asignada varchar(10) not null,
foreign key (Asignatura_Asignada) References
Asignaturas(Id_Asignatura)
)engine=innodb;

create table Administracion(
Id_Maestros varchar(10) not null,
foreign key (Id_Maestros) References
Maestros(Id_Maestro)
)engine=innodb;

create table Jornadas(
Id_Jornada varchar(10) primary key,
nombre_Jornada varchar(60) not null,
hora_Jornada time not null,
estadoJornada varchar(1) not null
)engine=innodb;

create table Horarios(
IDHorario varchar(5) not null,
IDAsignatura varchar(10) not null,
foreign key (IDAsignatura) references
Asignaturas(Id_Asignatura),
IDMaestro varchar(10) not null,
foreign key (IDMaestro) references
Maestros(Id_Maestro)
)engine=innodb;

create table Salones(
Id_Salon varchar(10) primary key,
Jornada varchar(10) not null,
foreign key (Jornada) References
Jornadas(Id_Jornada),
Estado_Salon varchar(1) not null,
Capacidad_Salon int not null,
SedeRaiz varchar(10) not null,
foreign key (SedeRaiz) References
Sedes(Id_Sede),
AsignaturaAsignada varchar(10) not null,
foreign key (AsignaturaAsignada) References
Asignaturas(Id_Asignatura),
HorarioSalon varchar(5) not null,
foreign key (HorarioSalon) References
Horarios(IDHorario)
)engine=innodb;

create table factuarion_pagos(
id_factura varchar(10) primary key,
nombre_factura varchar(30) not null,
foreign key (nombre_factura) references
Alumnos(IDAlumno),
fecha_factura date not null,
monto_factura double not null
)engine=innodb;

Insert Into Maestros values("0001","Pedro Morales","M",34,"zona 1","2000.00");
Insert Into Maestros values("0002","Sara Perez","F",39,"zona 10","2050.00");
Insert Into Maestros values("0003","Byron Torres","M",44,"zona 2","3000.00");
Insert Into Maestros values("0004","Milsa Ramirez","F",34,"zona 7","2000.00");

select *from Maestros;


drop database umgsystem;
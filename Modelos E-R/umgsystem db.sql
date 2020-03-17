create database umgsystem;
use umgsystem;

create table Alumnos
(
IDAlumno varchar(10) primary key,
CorreoInsAlumno varchar(60) not null,
Asignaturas varchar(1) not null,
NombreAlumno varchar (60) not null,
MatriculaAlumno varchar(60) not null,
DireccionAlumno varchar(60) not null,
FechaNacAlumno date not null,
EdadAlumno varchar(60) not null,
FechaIngresoAlumno date not null,
EstadoSolvenciaAlumno varchar(1) not null,
PensumCerrado varchar(1) not null,
FotostaticaTitulo varchar(1) not null,
CertificacionNM varchar(1) not null,
DPI_CertificadoNacimiento varchar(1) not null,
Fotografia varchar(1) not null
)engine=innodb;

create table Asignaturas(
IDAsignatura varchar(10) primary key,
NombreAsignatura varchar(60) not null,
EstadoAsignatura varchar(1) not null,
AlumnosAsignados varchar(100) not null,
foreign key (AlumnosAsignados) references
Alumnos(IDAlumno),
MaestroAsignado varchar(60) not null,
foreign key (MaestroAsignado) References
Maestros(Id_Maestro)
)engine=innodb;

create table Maestros(
Id_Maestro varchar(10) primary key,
Nombre_Maestro varchar(60) not null,
Sexo_Maestro varchar(1) not null,
Edad_Maestro int not null,
Direccion_Maestro varchar(60) not null,
Sueldo_Maestro double(5,2) not null
)engine=innodb;

create table Administracion(

Id_Maestros VARCHAR(10) NOT NULL,
foreign key (Codigo_Maestros) References
Maestros(Codigo_Maestros)
)engine=innodb;
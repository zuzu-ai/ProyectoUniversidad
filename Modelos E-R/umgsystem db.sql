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
Alumnos(IDAlumno)
)engine=innodb;
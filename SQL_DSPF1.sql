CREATE DATABASE UDB;
GO
USE UDB;
GO
CREATE TABLE carrera(
	codigoCarrera varchar(50) NOT NULL,
	nombreCarrera varchar(100)
);
GO
CREATE TABLE docente(
	codigoDocente varchar(50) NOT NULL,
	nombreDocente varchar(100),
	DUI varchar(12),
	direccion varchar(100),
	correoElectronico varchar(100),
	telefono varchar(100)
);
GO
 CREATE TABLE alumno(
	codigoAlumno varchar(50) NOT NULL,
	nombreAlumno varchar(100),
	DUI varchar(12),
	direccion varchar(100),
	correoElectronico varchar(100),
	telefono varchar(100),
	codigoCarrera varchar(50) NOT NULL
 );
 GO
 CREATE TABLE materia(
	codigoMateria varchar(50) NOT NULL,
	nombreMateria varchar(100),
	descripcion varchar(100),
	codigoCarrera varchar(50) NOT NULL,
	codigoDocente varchar(50) NOT NULL
 );
GO
CREATE TABLE nota(
	codigoNota varchar(50) NOT NULL,
	nota float,
	codigoAlumno varchar(50) NOT NULL,
	codigoMateria varchar(50) NOT NULL,
);
GO
CREATE TABLE programaBecas(
	codigoPrograma varchar(50) NOT NULL,
	nombrePrograma varchar(100),
	codigoAlumno varchar(50) NOT NULL
);
GO
ALTER TABLE carrera ADD PRIMARY KEY(codigoCarrera);
GO
ALTER TABLE docente ADD PRIMARY KEY(codigoDocente);
GO
ALTER TABLE alumno ADD PRIMARY KEY(codigoAlumno);
GO
ALTER TABLE materia ADD PRIMARY KEY(codigoMateria);
GO
ALTER TABLE nota ADD PRIMARY KEY(codigoNota);
GO
ALTER TABLE programaBecas ADD PRIMARY KEY(codigoPrograma);
GO
ALTER TABLE alumno ADD FOREIGN KEY(codigoCarrera) REFERENCES carrera(codigoCarrera);
GO
ALTER TABLE materia ADD FOREIGN KEY(codigoCarrera) REFERENCES carrera(codigoCarrera);
GO
ALTER TABLE materia ADD FOREIGN KEY(codigoDocente) REFERENCES docente(codigoDocente);
GO
ALTER TABLE nota ADD FOREIGN KEY(codigoAlumno) REFERENCES alumno(codigoAlumno);
GO
ALTER TABLE nota ADD FOREIGN KEY(codigoMateria) REFERENCES materia(codigoMateria);
GO
ALTER TABLE programaBecas ADD FOREIGN KEY(codigoAlumno) REFERENCES alumno(codigoAlumno);
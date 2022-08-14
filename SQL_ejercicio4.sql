CREATE DATABASE pelucanina;
USE pelucanina;

CREATE TABLE dueno (
  dni int NOT NULL,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  telefono int NOT NULL,
  direccion varchar(45) NOT NULL,
  PRIMARY KEY (dni),
  UNIQUE KEY DNI_UNIQUE (dni)
  ) ;

CREATE TABLE historial (
  id_historial int NOT NULL AUTO_INCREMENT,
  fecha date NOT NULL,
  perro int DEFAULT NULL,
  descripcion varchar(45) NOT NULL,
  monto float NOT NULL,
  PRIMARY KEY (id_historial),
  KEY perro_KF_idx (perro),
  CONSTRAINT perro_KF FOREIGN KEY (perro) REFERENCES perro (idperro)
  ON DELETE CASCADE
  ON UPDATE CASCADE
  );
  
CREATE TABLE perro (
  idperro int NOT NULL AUTO_INCREMENT,
  nombre varchar(45) NOT NULL,
  fecha_nac date NOT NULL,
  sexo varchar(1) NOT NULL,
  dni_dueno int DEFAULT NULL,
  PRIMARY KEY (idperro),
  KEY dni_dueno_FK_idx (dni_dueno),
  CONSTRAINT dni_dueno_FK FOREIGN KEY (dni_dueno) REFERENCES dueno (dni)
  ON DELETE CASCADE
  ON UPDATE CASCADE
  );

#Datos
INSERT INTO dueno VALUES(29201084, 'Guillermo', 'Gimenez', 152554433, 'Avellaneda 335');
INSERT INTO perro VALUES(default, 'Coqui', '2022-01-01', 'M', 29201084);
INSERT INTO perro VALUES(default, 'Adama', '2014-07-01', 'H', 29201084);

INSERT INTO historial VALUES(default, '2017-08-07', 1, 'Vacunación xxxxxxxx', 1750.25);
INSERT INTO historial VALUES(default, '2022-07-29', 2, 'Desparasitado xxxxxxxx', 2300);

select * from perro;

UPDATE perro pe set pe.fecha_nac='2022-10-07' where pe.id_perro=2
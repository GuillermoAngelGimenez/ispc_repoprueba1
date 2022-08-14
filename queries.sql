##creando database
create database pelu_canina;
use database pelu_canina;


##creando tablas

CREATE TABLE dueno( 
  DNI INT NOT NULL,
  Nombre VARCHAR(30) NULL,
  Apellido VARCHAR(20) NULL,
  Telefono VARCHAR(15) NULL,
  Direccion VARCHAR(30) NULL,
  PRIMARY KEY (DNI),
  UNIQUE INDEX DNI_UNIQU (DNI ASC) VISIBLE); 
 

CREATE TABLE perro( 
  ID_Perro INT NOT NULL AUTO_INCREMENT, 
  Nombre VARCHAR(20) NULL, 
  Fecha_Nac DATE NULL, 
  Sexo VARCHAR(1) NULL, 
  DNI_dueno INT NULL, 
  PRIMARY KEY (ID_Perro), 
  INDEX DNI_dueno_FK_idx (DNI_dueno ASC) VISIBLE, 
  CONSTRAINT DNI_dueno_FK 
    FOREIGN KEY (DNI_dueno) 
    REFERENCES dueno(DNI) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE); 
 
CREATE TABLE historial( 
  ID_Historial INT NOT NULL AUTO_INCREMENT, 
  Fecha DATE NULL, 
  Perro INT NULL, 
  Descripcion VARCHAR(45) NULL, 
  Monto FLOAT NULL, 
  PRIMARY KEY (ID_Historial), 
  INDEX Perro_FK_idx (Perro ASC) VISIBLE, 
  CONSTRAINT Perro_FK 
    FOREIGN KEY (Perro) 
    REFERENCES perro(ID_Perro) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE); 

##insertando datos
insert into perro values (1,'Goro','2019-2-13','M',45637234);

insert into dueno values (45637234,'Franco','Toresani',351643566,'Av roma 321');

##ejercicio9

update dueno 
 set direccion = 'Libertad 123'
 where dni = 45637234;
 




CREATE DATABASE pelucanina;
USE pelucanina;

CREATE TABLE dueno(
  DNI INT NOT NULL,
  Nombre VARCHAR(30),
  Apellido VARCHAR(20),
  Telefono VARCHAR(15),
  Direccion VARCHAR(30) NULL,
  PRIMARY KEY (DNI),
  UNIQUE INDEX DNI_UNIQU (DNI ASC) VISIBLE);

CREATE TABLE perro(
  ID_Perro INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20),
  Fecha_Nac DATE,
  Sexo VARCHAR(1),
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
  Fecha DATE,
  Perro INT,
  Descripcion VARCHAR(45) NULL,
  Monto FLOAT,
  PRIMARY KEY (ID_Historial),
  INDEX Perro_FK_idx (Perro ASC) VISIBLE,
  CONSTRAINT Perro_FK
    FOREIGN KEY (Perro)
    REFERENCES perro(ID_Perro)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    
    
    #Datos para el ejercicio
    #INSERT INTO dueno VALUES(29201084, 'Guillermo', 'Gimenez', 152554433, 'Avellaneda 335');
    #INSERT INTO dueno VALUES(3013563, 'Pedro', 'Albornoz', 155123456, 'Los Mistoles 50');
    #INSERT INTO dueno VALUES(49000111, 'Pedro', 'Martinez', 154001122, 'Acacias 110');
    
    #INSERT INTO perro VALUES(default, 'Coqui', '2022-01-01', 'M', 29201084);
    #INSERT INTO perro VALUES(default, 'Adama', '2014-07-01', 'H', 29201084);
    #INSERT INTO perro VALUES(default, 'Rosa', '2022-05-05', 'H', 3013563);
	#INSERT INTO perro VALUES(default, 'Camila', '2022-05-05', 'H', 3013563);
	#INSERT INTO perro VALUES(default, 'Rex', '2022-05-05', 'M', 49000111);
  
    /*Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro*/
    SELECT distinct pe.nombre from perro pe INNER JOIN dueno du ON pe.dni_dueno=du.dni WHERE du.nombre like '%Pedro%'

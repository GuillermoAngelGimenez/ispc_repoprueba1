CREATE DATABASE pelucanina;
USE pelucanina;

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
    
    #Datos para el ejercicio
    INSERT INTO dueno VALUES(29201084, 'Guillermo', 'Gimenez', 152554433, 'Avellaneda 335');
    
    INSERT INTO perro VALUES(default, 'Coqui', '2022-01-01', 'M', 29201084);
    INSERT INTO perro VALUES(default, 'Adama', '2014-07-01', 'H', 29201084);
    
    INSERT INTO historial VALUES(default, '2017-08-07', 1, 'Vacunación xxxxxxxx', 1750.25);
    INSERT INTO historial VALUES(default, '2022-07-29', 2, 'Desparasitado xxxxxxxx', 2300);
    
    /*Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido 
    desde hace mucho tiempo.*/
    SELECT * 
    from dueno du INNER JOIN perro pe ON du.DNI =pe.DNI_dueno INNER JOIN historial his ON pe.ID_Perro=his.Perro
    order by his.fecha;
    
    DELETE FROM historial his WHERE his.Perro=1;
    
    DELETE FROM perro pe WHERE pe.ID_Perro=1;


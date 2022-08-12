#Datos
INSERT INTO dueno VALUES(29201084, 'Guillermo', 'Gimenez', 152554433, 'Avellaneda 335');
INSERT INTO perro VALUES(default, 'Coqui', '2022-01-01', 'M', 29201084);
INSERT INTO perro VALUES(default, 'Adama', '2014-07-01', 'H', 29201084);

INSERT INTO historial VALUES(default, '2017-08-07', 1, 'Vacunación xxxxxxxx', 1750.25);
INSERT INTO historial VALUES(default, '2022-07-29', 2, 'Desparasitado xxxxxxxx', 2300);

select * from perro;

UPDATE perro pe set pe.fecha_nac='2022-10-07' where pe.id_perro=2
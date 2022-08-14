# Crear Base de Datos y Tablas según Modelo Relacional
create database Peluqueria_Canina;
use Peluqueria_Canina;
create table Dueno(
DNI int not null unique primary key,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(50) not null,
Direccion varchar(100) not null
);
create table Perro(
ID_Perro int not null auto_increment unique primary key,
Nombre varchar(50) not null,
Fecha_nac date not null, 
Sexo varchar(1), 
DNI_dueno int,
constraint f_DNI foreign key (DNI_dueno) references Dueno(DNI)
);
create table Historial(
ID_Historial int not null unique auto_increment primary key,
Fecha datetime not null,
Perro int not null,
Descripcion varchar(100),
Monto int not null,
constraint f_ID_Perro foreign key (Perro) references Perro(ID_Perro)
);

# Punto 2
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (30722547, 'Patricia Soledad', 'Pacheco', '3576129835', 'San Martin 123');

insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno)
Values ('Tomi', '2019-05-05', 'M', 30722547);

# Punto 4, cambio de fecha
update perro
set fecha_nac = '2018-11-12'
where Nombre_p = 'Tomi';
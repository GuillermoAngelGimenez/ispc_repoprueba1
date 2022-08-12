#Datos
id_perro=int(input("Ingrese nuevo id: "))
nombre=input("Nombre: ")
fecha_nac=input("Fecha de nacimiento: ")
sexo=input("Sexo: ")
dni_dueno=int(input("DNI del dueño: "))


#Creando lista
Perro=[id_perro,nombre,fecha_nac,sexo,dni_dueno]

#Modificando datos
Perro[2]=input("Ingrese nueva fecha de nacimiento: ")

Perro[4]=int(input("Ingrese nuevo dni de dueño: "))


 # Gestores de Bases de Datos
 
 Hoy día la mayoría de las bases de datos se presentan en formato digital, gracias a los avances tecnológicos en la informática y la electrónica. Esto ofrece un amplio abanico de soluciones al problema de almacenamiento de datos. Los gestores de bases de datos, Database Management System o DBMS (SGBD) son programas que permiten almacenar y luego acceder a los datos de forma estructurada y rápida. Las aplicaciones más usadas son para gestiones de empresas e instituciones públicas, así como en entornos científicos, para almacenar la información experimental. Una base de datos es un sistema compuesto por un conjunto de datos, los cuales están almacenados en discos, a los que se accede directamente y un conjunto de programas que regulen o manejen ese conjunto de datos. Mientras que un sistema de Gestión de Bases de Datos es un software que sirve de interfaz entre la base de datos, el usuario y las aplicaciones que se utilizan.
![image (12)](https://user-images.githubusercontent.com/106564121/177388190-2dbc415b-7876-433f-95b8-2ef547555589.png)

## Los mejores gestores de base de datos

### Oracle
Es de los más confiables sistemas de gestión de base de datos relacional, además del más usado. Es propiedad de Oracle Corporation y fue desarrollado en 1977.
Se accede directamente a los objetos, a través del lenguaje de consulta SQL, es muy utilizado en las empresas, con un componente de red que permite la comunicación a través de las redes.
Su versatilidad le facilita ejecutarse en casi todas las plataformas existentes, Windows, Unix, Linux, MAC OS, entre otros.

### SQL Server
SQL Server se ejecuta en Transact-SQL, esto es un grupo de programas que pueden añadir características al programa, como tratamiento de errores y excepciones, extracción de datos de la web en forma directa, procesamiento de datos, uso de distintos lenguajes de programación y otros más, que lo hacen un gestor muy completo y competitivo. Su carácter administrativo es otro valor agregado, tanto en sus funciones y seguridad, como en su flexibilidad.

## Gestores de base de datos de acceso libre

### MySQL
Este es de simple instalación y actúa de lado del cliente o servidor, es de código abierto y tiene licencia comercial disponible. Pertenece a Oracle Corporation y gestiona las bases de datos relacionales, con funciones multiusuario y es el más usado dentro del software libre. Requiere de poca memoria y procesador para su funcionamiento, lo que se traduce en mayor velocidad en sus operaciones. Se usa principalmente para el desarrollo Web.

### Fire Bird
De gran potencia y muy sencillo a la vez, este sistema de gestión de base de datos relacional SQL, es uno de los mejores gestores Open Source (Código abierto) o libres. Es compatible con Windows y Linux. Tiene buen soporte para los procedimientos almacenados, las transacciones compatibles con ACID y con los métodos de acceso múltiple como Nativo, Python, .NET, etc...
 
 # Tipos de Sistemas Gestores de Bases de Datos #

 ## Diferencias entre el modelo lógico y el conceptual

El modelo conceptual es independiente del DBMS que se vaya a utilizar. El lógico depende de un tipo de
SGBD en particular.
El modelo lógico está más cerca del modelo físico, el que utiliza internamente el ordenador.
El modelo conceptual es el más cercano al usuario, el lógico es el encargado de establecer el paso entre
el modelo conceptual y el modelo físico del sistema.

## **Tipos de Sistemas Gestores de Bases de Datos**
Algunos ejemplos de modelos conceptuales son:

-Modelo Entidad Relación
-Modelo RM/T
-Modelo UML
Ejemplos de modelos lógicos son:

-Modelo relacional
-Modelo Codasyl
-Modelo Jerárquico
A continuación se comentarán los modelos lógicos más importantes.

### Modelo jerárquico.
Era utilizado por los primeros SGBD, desde que IBM lo definió para su IMS (Information Management System, Sistema Administrador de Información) en 1970. Se le llama también modelo en árbol debido a que utiliza una estructura en árbol para organizar los datos.
La información se organiza con un jerarquía en la que la relación entre las entidades de este modelo siempre es del tipo padre / hijo. De esta forma hay una serie de nodos que contendrán atributos y que se relacionarán con nodos hijos de forma que puede haber más de un hijo para el mismo padre (pero un hijo sólo tiene un padre).
Los datos de este modelo se almacenan en estructuras lógicas llamadas segmentos. Los segmentos se relacionan entre sí utilizando arcos.
La forma visual de este modelo es de árbol invertido, en la parte superior están los padres y en la inferior los hijos.
Este esquema está en absoluto desuso ya que no es válido para modelar la mayoría de problemas de
bases de datos.
### Modelo en red (Codasyl).
Es un modelo que ha tenido una gran aceptación (aunque apenas se utiliza actualmente). En especial se
hizo popular la forma definida por Codasyl a principios de los 70 que se ha convertido en el modelo en
red más utilizado.
El modelo en red organiza la información en registros (también llamados nodos) y enlaces. En los
registros se almacenan los datos, mientras que los enlaces permiten relacionar estos datos. Las bases de
datos en red son parecidas a las jerárquicas sólo que en ellas puede haber más de un padre.
En este modelo se pueden representar perfectamente cualquier tipo de relación entre los datos (aunque
el Codasyl restringía un poco las relaciones posibles), pero hace muy complicado su manejo.
### Modelo relacional.
En este modelo los datos se organizan en tablas cuyos datos se relacionan. Es el modelo más popular y se
describe con más detalle en los temas siguientes que veremos.
### Modelo de bases de datos orientadas a objetos.
Desde la aparición de la programación orientada a objetos (POO u OOP) se empezó a pensar en bases
de datos adaptadas a estos lenguajes. La programación orientada a objetos permite cohesionar datos y
procedimientos, haciendo que se diseñen estructuras que poseen datos (atributos) en las que se
definen los procedimientos (operaciones) que pueden realizar con los datos. En las bases orientadas a
objetos se utiliza esta misma idea.
A través de este concepto se intenta que estas bases de datos consigan arreglar las limitaciones de las
relacionales. Por ejemplo el problema de la herencia (el hecho de que no se puedan realizar relaciones
de herencia entre las tablas), tipos definidos por el usuario, disparadores (triggers) almacenables en la
base de datos, soporte multimedia...
Se supone que son las bases de datos de tercera generación (la primera fue las bases de datos en red y
la segunda las relacionales), lo que significa que el futuro parece estar a favor de estas bases de datos.
Pero siguen sin reemplazar a las relacionales, aunque son el tipo de base de datos que más está
creciendo en los últimos años.
Su modelo conceptual se suele diseñar en UML y el lógico actualmente en ODMG (Object Data
Management Group, grupo de administración de objetos de datos, organismo que intenta crear
estándares para este modelo).
### Bases de datos objeto-relacionales.
Tratan de ser un híbrido entre el modelo relacional y el orientado a objetos. El problema de las bases de
datos orientadas a objetos es que requieren reinvertir capital y esfuerzos de nuevo para convertir las
bases de datos relacionales en bases de datos orientadas a objetos. En las bases de datos objeto
relacionales se intenta conseguir una compatibilidad relacional dando la posibilidad de integrar mejoras
de la orientación a objetos.
Estas bases de datos se basan en el estándar SQL 99. En ese estándar se añade a las bases
relacionales la posibilidad de almacenar procedimientos de usuario, triggers, tipos definidos por el
usuario, consultas recursivas, bases de datos OLAP, tipos LOB,...
Las últimas versiones de la mayoría de las clásicas grandes bases de datos relacionales (Oracle, SQL
Server, Informix, ...) son objeto relacionales.
### Bases de datos NoSQL.
Bajo este nombre se agrupan las bases de datos (con arquitecturas muy diversas) pensadas para grabar
los datos de manera veloz para así poder atender a miles y miles de peticiones. Es decir, es el modelo
de las bases de datos que se utilizan en los grandes servicios de Internet (como twitter, Facebook,
Amazon,…).
La idea es que los datos apenas necesitan validarse y relacionarse y lo importante es la disponibilidad de
la propia base de datos. El nombre NoSQL, hace referencia a que este modelo de bases de datos rompe
con el lenguaje SQL (el lenguaje de las bases de datos relacionales, las bases de datos dominantes
hasta la actualidad) para poder manipular los datos con lenguajes de otro tipo. 

# Diseño de bases de datos relacionales
En este tema se estudia un aspecto fundamental de las bases de datos: su diseño. En las bases de datos se ha establecido un ciclo de desarrollo que consta de tres etapas de diseño: el diseño conceptual, el diseño lógico y el diseño físico. Mientras que las dos primeras etapas y el paso de una a otra están muy fundamentados, no ocurre lo mismo con la tercera, dado que las primeras son lo suficientemente abstractas como para no depender de ninguna implementación en concreto; sin embargo, el diseño físico depende del SGBD usado, y no hay reglas formales para llevarlo a cabo.

## Etapas de diseño
La metodología de diseño de bases de datos relacionales se ha consolidado a lo largo de los años satisfaciendo las propiedades de generalidad (independencia de la plataforma hardware/software), calidad del producto (precisión, completitud y eficacia) y facilidad de uso.

### Consta de las siguientes etapas:
   1. Diseño conceptual.
Su objetivo es definir las entidades y las relaciones entre ellos de forma abstracta, sin centrarse en ningún modelo lógico en concreto (como el relacional, el orientado a objetos, el jerárquico o el de red).
Herramienta: Modelo conceptual de datos. Se usa alguna variante del modelo entidad-relación para las bases de datos relacionales.
Resultado: Esquema conceptual de la base de datos.

   2. Diseño lógico.
Su objetivo es definir el esquema de la base de datos según el
modelo que implementa el SGBD objetivo.
Herramienta: Modelo lógico de datos. Se usa el modelo lógico que implemente el sistema de gestión de bases de datos objetivo, pero es independiente de los aspectos físicos. Se usan técnicas formales para verificar la calidad del esquema lógico; la más usual es la
normalización. En el modelo relacional se usan las tablas.
Resultado: Esquema lógico de la base de datos.

   3. Diseño físico.
Su objetivo es definir el esquema físico de la base de datos de forma que se den todas las instrucciones para que un DBA pueda implementar la base de datos sin ninguna ambigüedad. Se considera el rendimiento como un aspecto que no se ha tratado en las etapas anteriores.
Herramienta: Modelo físico de datos. Se consideran todos los detalles de la implementación física: organización de archivos e índices para el SGBD considerado.
Resultado: Esquema físico de la base de datos.

La siguiente figura muestra resumido el ciclo de desarrollo clásico de bases de datos:
![image](https://user-images.githubusercontent.com/106564121/177389299-834f9409-e67f-4375-94b2-54d517810dd9.png)




1) Crea una tabla llamada CURSO con los atributos:
a. Código de curso (clave primaria, entero no nulo);
b. Nombre (varchar no nulo);
c. Descripción (varchar);
d. Turno (varchar no nulo).

  CREATE TABLE curso (
  Código INT NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Descripcion VARCHAR(45) NULL,
  Turno VARCHAR(45) NOT NULL,
  PRIMARY KEY (Código));

1) Agrega un campo “cupo” de tipo numérico.
  ALTER TABLE `curso` ADD COLUMN `cupo` INT NULL ;
  ALTER TABLE curso ADD Curso INT NULL;


  2) Inserta datos en la tabla:
a. (101, “Algoritmos”,”Algoritmos y Estructuras de
Datos”,”Mañana”,35)

INSERT INTO curso (`Código`, `Nombre`, `Descripcion`, `Turno`, `cupo`) VALUES ('101', 'Algoritmos', 'Algoritmos y estructura de datos', 'Mañana', '35');


b. (102, “Matemática Discreta”,””,”Tarde”,30)
INSERT INTO `curso` (`Código`, `Nombre`, `Descripcion`, `Turno`, `cupo`) VALUES ('102', 'Matemática Discreta', '', 'Tarde', '30');

3) Crea un registro con el nombre nulo y verifica que no
funciona.
INSERT INTO `curso` (`Código`, `Nombre`, `Descripcion`, `Turno`, `cupo`) VALUES ('103', null, 'Sintaxis y semantica del lenguaje', 'Tarde', '30');

4) Crea un registro con la clave primaria repetida y verifica que
no funciona.
INSERT INTO `curso` (`Código`, `Nombre`, `Descripcion`, `Turno`, `cupo`) VALUES ('102', 'Matemática Discreta', '', 'Tarde', '30');

5) Actualiza, para todos los cursos, el cupo en 25.
UPDATE `curso` SET `cupo` = 25;

SELECT * FROM curso 

6) Elimina el curso “Algoritmos”
 DELETE FROM curso WHERE Nombre = 'Algoritmos';
DROP TABLE IF EXISTS serie_netflix;
CREATE TABLE serie_netflix
(
    nombre character varying NOT NULL,
    temporadas integer,
    genero character varying(50),
    anio_estreno integer,
    PRIMARY KEY (nombre)
);

select * from serie_netflix;

1. insertar 9 series adicionales.
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Black Mirror', 7, 'Ciencia ficci�n', 2011);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Stranger Things', 5, 'Ciencia ficci�n', 2016);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('House of Cards', 6, 'Serie sobre política', 2018);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('El juego del Calamar', 3, 'Series Dramáticas', 2021);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Luis Miguel la serie', 3, 'Música', 2021);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Love Death and Robots', 4, 'Ciencia ficci�n', 2019);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Midnight Diner Tokyo Stories', 2, 'Series Dramáticas', 2019);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Borgen', 8, 'Serie sobre política', 2022);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('El Eternauta', 6, 'Series Dramáticas', 2025);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Merlina', 2, 'Serie de Adolescentes', 2022);

2. Listar todas las series con más de 3 temporadas ordenadas por
año de estreno descendente.
SELECT * FROM mi_esquema.serie_netflix
WHERE temporadas > 3 	 
ORDER BY anio_estreno DESC;

3. Listar el año de la serie más antigua
SELECT MIN(anio_estreno) AS primera_serie FROM mi_esquema.serie_netflix;

4. Listar el año de la serie más nueva
SELECT MAX(anio_estreno) AS serie_nueva FROM mi_esquema.serie_netflix;

5. Mostrar el promedio de año de estreno de las series
SELECT ROUND(AVG(anio_estreno)) AS promedio_anio_estreno FROM mi_esquema.serie_netflix;

6. Listar el promedio de temporadas de todas las series
SELECT ROUND(AVG(temporadas)) AS promedio_temporada FROM mi_esquema.serie_netflix;

7. Listar las series que tengan 1, 2, 4, 5 o 7 temporadas
SELECT * FROM mi_esquema.serie_netflix
WHERE temporadas IN(1, 2, 4, 5, 7);

8. Listar las series que NO tengan 1, 2, 4, 5 o 7 temporadas
SELECT * FROM mi_esquema.serie_netflix
WHERE temporadas NOT IN(1, 2, 4, 5, 7);

9. Borrar todas las series con año de estreno superior a 2010
DELETE FROM mi_esquema.serie_netflix WHERE anio_estreno > 2010;

10. Reinsertar los datos recién borrados
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Black Mirror', 7, 'Ciencia ficci�n', 2011);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Stranger Things', 5, 'Ciencia ficci�n', 2016);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('House of Cards', 6, 'Serie sobre política', 2018);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('El juego del Calamar', 3, 'Series Dramáticas', 2021);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Luis Miguel la serie', 3, 'Música', 2021);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Love Death and Robots', 4, 'Ciencia ficci�n', 2019);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Midnight Diner Tokyo Stories', 2, 'Series Dramáticas', 2019);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Borgen', 8, 'Serie sobre política', 2022);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('El Eternauta', 6, 'Series Dramáticas', 2025);
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Merlina', 2, 'Serie de Adolescentes', 2022);

11. Agregar la serie Doctor House, 8, ‘Drama Médico’, 2004 (si ya la
tiene, agregue otra)
insert into mi_esquema.serie_netflix (nombre, temporadas, genero, anio_estreno) values ('Doctor House', 8, 'Drama Médico’', 2004);

12. Listar todas las series estrenadas entre 2005 y 2020
SELECT * FROM mi_esquema.serie_netflix
WHERE anio_estreno BETWEEN 2005 AND 2020;

13. Listar todas aquellas series con nombre comenzado en B o
terminado en e.
SELECT * FROM mi_esquema.serie_netflix
WHERE nombre ILIKE 'b%' OR nombre ILIKE '%e';

14. Listar aquellas series cuyo año de estreno más la cantidad de
temporadas excede 2010
SELECT * FROM mi_esquema.serie_netflix
WHERE (anio_estreno + temporadas) > 2010;
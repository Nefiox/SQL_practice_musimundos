/* Desde el sector comercial de Musimundos nos informan que van a añadir un nuevo género de música a nuestra plataforma. Necesitan que les ayudemos a cargarlo en nuestra base de datos. Insertemos en la tabla generos el id 26 y el nombre Cumbia.
Insertá tu query en mayúsculas. */
INSERT INTO generos(id, nombre)
VALUES(26, 'Cumbia');


/* Viene el manager de Musimundos y, para organizar su inventario de discos, te pide un informe con todos los álbumes que posee la empresa. Realiza una consulta que devuelva todos los álbumes.
Ingresa de la columna titulo el nombre del álbum que aparece quinto. */
-- Big ones
SELECT *
FROM albumes;


/* Para realizar un control de ventas, Musimundos te pide el primer nombre y teléfono de todos sus clientes.
Insertá el número de teléfono del segundo cliente que obtuviste. */
-- +49 0711 2842222
SELECT primer_nombre, telefono
FROM clientes;


/* Seleccionemos los nombres de todos los clientes, una vez obtenidos, necesitamos que obtengas solo aquellos que sean de USA.
Insertá el nombre del tercer cliente que obtuviste. */
-- Michelle
SELECT *
FROM clientes
WHERE pais = 'USA';


/* Vamos a ponernos un poco más finos con la selección. El departamento de canciones te pide un informe de aquellas cuya duración sea entre 200.000 y 300.000 milisegundos. ¿Te animás?
Insertá el nombre de la quinta canción que obtuviste. */
-- Inject The Venom
SELECT *
FROM canciones
WHERE milisegundos BETWEEN 200000 AND 300000;


/* ¡URGENTE! Una banda argentina acaba de sacar un álbum y nos pidió una lista de clientes hispanohablantes para poder divulgar su producto. Te pedimos que obtengas una lista de clientes cuyo país de origen sea Spain o Argentina. ¡Suerte con eso!
Seleccioná el nombre del primer cliente que te aparezca. */
-- Enrique
SELECT *
FROM clientes
WHERE pais = 'Argentina' OR pais = 'Spain';


/* Musimundos desea agregar una lista con todos los géneros, pero ordenados por nombre de manera alfabética.
Insertá el nombre del tercer género que hayas obtenido. */
-- Blues
SELECT *
FROM generos
ORDER BY nombre;


/* Los gerentes están muy satisfechos con tu trabajo, pero las tareas todavía no terminan.
Ahora necesitan una lista con solamente los nombres de los clientes de Musimundos, ordenada por país de origen (descendente) y, como segundo parámetro, por ciudad. ¿Estás listo?
Seleccioná el nombre del séptimo cliente que encuentres. */
-- Frank
SELECT primer_nombre
FROM clientes
ORDER BY pais DESC, ciudad;


/* Utilizemos el nuevo operador LIKE.
Musimundos nos pide un listado de todas las canciones cuyos compositores empiecen con "A". ¿Fácil, no? 
Insertá el nombre de la cuarta canción que obtuviste.
Tip: No debemos preocuparnos por las mayúsculas y minúsculas, ya que el LIKE no hace distinción entre las mismas. */
-- Inject The Venom
SELECT nombre, compositor
FROM canciones
WHERE compositor LIKE 'a%';


/* Ahora, Musimundos sube la apuesta y necesita un listado de géneros que contengan, en alguna parte del nombre, la sigla "ro".
Insertá el nombre del último género que obtuviste.
Tip: No debemos preocuparnos por las mayúsculas y minúsculas, ya que el LIKE no hace distinción entre las mismas. */
-- Electronica/Dance
SELECT nombre
FROM generos
WHERE nombre LIKE '%ro%';


/* Ayer hablé con el gerente y está chocho con el trabajo que venimos realizando. ¡Felicitaciones!
Tan solo pidió una última tarea. En Musimundos necesitan hacer un chequeo de canciones y solicitan una lista de las que tengan un id entre 10 y 20.
Ingresá el nombre de la segunda canción que hayas obtenido. */
-- C.O.D.
SELECT id, nombre
FROM canciones
WHERE id BETWEEN 10 AND 20;
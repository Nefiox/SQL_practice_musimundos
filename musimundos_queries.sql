/* Desde el sector comercial de Musimundos nos informan que van a añadir un nuevo género de música a nuestra plataforma. Necesitan que les ayudemos a cargarlo en nuestra base de datos. Insertemos en la tabla generos el id 26 y el nombre Cumbia.
Insertá tu query en mayúsculas. */

INSERT INTO generos(id, nombre)
VALUES(26, 'Cumbia');


/* Viene el manager de Musimundos y, para organizar su inventario de discos, te pide un informe con todos los álbumes que posee la empresa. Realiza una consulta que devuelva todos los álbumes.
Ingresa de la columna titulo el nombre del álbum que aparece quinto. */

SELECT *
FROM albumes;


/* Para realizar un control de ventas, Musimundos te pide el primer nombre y teléfono de todos sus clientes.
Insertá el número de teléfono del segundo cliente que obtuviste. */

SELECT primer_nombre, telefono
FROM clientes;
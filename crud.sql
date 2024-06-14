/*
Registro de Coders (CREATE)
Cada coder debe registrarse a sí mismo en la base de datos con la siguiente información, pueden
poner datos falsos si lo desean:
• nombre
• apellido
• tipo_de_identificacion
• numero_de_identificacion
• fecha_de_nacimiento
• clan
• correo_electronico
• numero_de_telefono
• numero_de_emergencia
• direccion
• team_leader_desarrollo
*/

INSERT INTO coders (nombre, apellido, tipo_de_identificacion, numero_de_identificacion, fecha_de_nacimiento, clan, correo_electronico, numero_de_telefono, numero_de_emergencia, direccion, team_leader_desarrollo)
VALUES ('jhonatan', 'toro', 'cedula de ciudadania', '1036402695', '1997-03-10', 'gates', 'jtorova@gmail.com', '6045893367', '3146170214', 'calle 15C #82 BB 63', 'javier cómbita');
 
-- Ejercicio 2: Leer Coders (READ)
-- 1. Selecciona todos los campos de todos los coders.

SELECT * FROM coders;

-- 2. Selecciona los nombres y apellidos de todos los coders.

SELECT nombre, apellido FROM coders;

-- 3. Selecciona los coders cuyo clan sea gates.

SELECT id, nombre, apellido, clan FROM coders
WHERE clan LIKE '%gates%';

-- 4. Selecciona los coders nacidos después del 1 de enero de 1990.

SELECT id, nombre, apellido, fecha_de_nacimiento FROM coders
WHERE fecha_de_nacimiento > '1990-01-01';

-- 5. Selecciona los nombres y correos electrónicos de todos los coders.

SELECT id, nombre, apellido, correo_electronico FROM coders;

-- 6. Selecciona los coders cuyo número de identificación termina en 7.

SELECT id, nombre, apellido, numero_de_identificacion FROM coders
WHERE numero_de_identificacion LIKE '%7';

-- 7. Selecciona los coders cuyo team_leader_desarrollo es carlos gomez.

SELECT * FROM coders
WHERE team_leader_desarrollo LIKE '%carlos gomez%';

-- 8. Selecciona los nombres y clanes de los coders ordenados por nombre en orden ascendente.

SELECT nombre, clan FROM coders
ORDER BY nombre;

-- 9. Selecciona los coders cuya direccion contenga la palabra cra.

SELECT * FROM coders
WHERE direccion LIKE '%cra%';

-- 10. Selecciona los coders con correo_electronico que terminen en @example.com.

SELECT id, nombre, apellido, clan, correo_electronico FROM coders
WHERE correo_electronico LIKE '%@example.com';

-- 11. Cuenta el número de coders en cada clan.

SELECT clan, COUNT(*) AS cantidad_de_coders
FROM coders
GROUP BY clan;

-- 12. Selecciona los coders que no tienen numero_de_emergencia registrado.

SELECT id, nombre, apellido, numero_de_telefono, numero_de_emergencia FROM coders
WHERE numero_de_emergencia IS NULL;

-- 13. Selecciona el nombre, apellido y dirección de los coders cuyo clan no es gates ni dell.

SELECT id, nombre, apellido, clan, direccion FROM coders
WHERE clan != 'gates' AND clan != 'dell';

-- 14. Selecciona el nombre y el número de teléfono de los coders cuyo numero_de_telefono comienza con 320.

SELECT id, nombre, apellido, numero_de_telefono FROM coders
WHERE numero_de_telefono LIKE '320%';

-- 15. Selecciona todos los coders y ordénalos por fecha_de_nacimiento de manera descendente.

SELECT id, nombre, apellido, fecha_de_nacimiento FROM coders
ORDER BY fecha_de_nacimiento DESC;

-- Ejercicio 3: Actualizar Coders (UPDATE)
-- 1. Actualiza el número de teléfono de un coder específico a un nuevo número.

SELECT id, nombre, apellido, numero_de_telefono FROM coders;

UPDATE coders
SET numero_de_telefono = 3156746548
WHERE id = 354;

SELECT id, nombre, apellido, numero_de_telefono FROM coders;

-- 2. Cambia el clan a hopper para todos los coders cuyo clan sea gates.

SELECT id, nombre, apellido, clan FROM coders;

UPDATE coders
SET clan = 'hopper'
WHERE clan = 'gates';

SELECT id, nombre, apellido, clan FROM coders;

-- 3. Actualiza la dirección de un coder específico a una nueva dirección.

SELECT id, nombre, apellido, direccion FROM coders
WHERE id = 354;

UPDATE coders
SET direccion = 'Narnia'
WHERE id = 354;

SELECT id, nombre, apellido, direccion FROM coders
WHERE id = 354;

-- 4. Cambia el team_leader_desarrollo de todos los coders que tienen como team_leader_desarrollo a juan perez por maria diaz.

SELECT id, nombre, apellido, team_leader_desarrollo FROM coders
WHERE team_leader_desarrollo LIKE '%juan perez%';

UPDATE coders
SET team_leader_desarrollo = 'maria diaz'
WHERE team_leader_desarrollo LIKE '%juan perez%';

SELECT id, nombre, apellido, team_leader_desarrollo FROM coders
WHERE team_leader_desarrollo LIKE '%juan perez%';

-- Ejercicio 4: Eliminar Coders (DELETE)
-- 1. Elimina el coder con un numero_de_identificacion específico.

SELECT * FROM coders
WHERE numero_de_identificacion = 1036402695;

DELETE FROM coders
WHERE numero_de_identificacion = 1036402695;

SELECT * FROM coders
WHERE numero_de_identificacion = 1036402695;

-- 2. Elimina todos los coders cuyo clan sea jeff bezos.

SELECT id, nombre, apellido, clan FROM coders
WHERE clan LIKE '%jeff bezos%';

DELETE FROM coders
WHERE clan LIKE '%jeff bezos%';

SELECT id, nombre, apellido, clan FROM coders
WHERE clan LIKE '%jeff bezos%';

-- 3. Elimina los coders cuyo correo_electronico contenga @example.com

SELECT id, nombre, apellido, correo_electronico FROM coders
WHERE correo_electronico LIKE '%@example.com';

DELETE FROM coders
WHERE correo_electronico LIKE '%@example.com';

SELECT id, nombre, apellido, correo_electronico FROM coders
WHERE correo_electronico LIKE '%@example.com';

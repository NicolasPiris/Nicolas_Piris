
-- b) 
UPDATE paciente SET telefono = 374589174
 WHERE nro_historial_clinico = 1932;
-- c) Obtener un listado con una columna llamada “paciente” donde aparezca el apellido y nombre de cada paciente separado por una coma luego del apellido, y una segunda columna llamada“observacion_registrada” donde aparezca su correspondiente observación. En dicho listado solamentedeben aparecer los pacientes con alguna observación
SELECT CONCAT(apellido, ', ', nombre) AS paciente from paciente;
 SELECT CONCAT(apellido, ', ', nombre) AS paciente, observaciones AS observacion_registrada FROM paciente where observaciones IS NOT NULL;

-- d) Listar los pacientes (apellido y nombre separado por una coma en una sola columna) junto a la especialidad requerida en cada uno de los ingresos registrados en la base de datos.
Select concat( paciente.apellido, ' , ' , paciente.nombre) as apenas, medico.especialidad 
 from paciente inner join ingreso on paciente.nro_historial_clinico = ingreso.paciente_nro_historial_clinico 
 inner join medico on medico.matricula = ingreso.medico_matricula;
-- e)
delete from medico where matricula not in ( select matricula from ingreso);
-- f) 
SELECT nro_cama, COUNT(*) AS usos
FROM ingreso
GROUP BY nro_cama
ORDER BY usos, nro_cama DESC;
-- g)
 select paciente.apellido,paciente.nombre,ingreso.paciente_nro_historial_clinico,count(ingreso.paciente_nro_historial_clinico) 
 from paciente inner join ingreso on paciente.nro_historial_clinico = ingreso.paciente_nro_historial_clinico 
 group by ingreso.paciente_nro_historial_clinico having count(ingreso.paciente_nro_historial_clinico) >= 4 
 order by count(ingreso.paciente_nro_historial_clinico) desc ;
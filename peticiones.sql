-- ¿Cuál es el paciente con mas visitas del centro?
SELECT b.nombre as Nombre, a.paciente_id as CodigoPaciente, COUNT(a.numVisitas) as Visitas
FROM paciente as b
JOIN historial as a
ON a.paciente_id = b.paciente_id
GROUP BY Nombre
ORDER by Visitas DESC;

-- ¿Cual es el promedio de visitas del centro?
SELECT b.nombre as Nombre, AVG(a.visita_id) as Visitas, SUM(c.numVisitas)
FROM paciente as b
JOIN visita as a
ON a.visita_id = b.paciente_id
JOIN historial as c
ON c.paciente_id = b.paciente_id
GROUP BY Nombre
ORDER by Visitas ASC;

-- ¿Cuántos pacientes hay de un grupo sangineo determinado?
SELECT nombre as Nombre, paciente_id as CodigoPaciente, tipoSangre as TipoDeSangre
FROM `paciente`
WHERE tipoSangre NOT 'A+' or 'O-' 
GROUP BY Nombre
ORDER by paciente_id ASC;

-- ¿Qué medico y cuantos pacientes ha atendido en esta semana?
SELECT b.nombre as Nombre, SUM(a.paciente_id) as Pacientes
FROM medicos as b
JOIN paciente as a
ON a.paciente_id = b.medico_id
JOIN visita as c
on a.paciente_id = c.visita_id
GROUP BY Nombre
ORDER by Visitas ASC;
WHERE c.fechaVisita BETWEEN '15-04-2019' AND '21-04-2019';
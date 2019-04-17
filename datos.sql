-- LISTA DE MÉDICOS DEL CENTRO
INSERT INTO `medicos`(dni, nombre, apellidos, numGremio, sexo) VALUES ('12345678X', 'Jose','Antonio','33325', 1);
INSERT INTO `medicos`(dni, nombre, apellidos, numGremio, sexo) VALUES ('45391325N', 'Maria','de la Cruz','10099', 2);
INSERT INTO `medicos`(dni, nombre, apellidos, numGremio, sexo) VALUES ('99377125Q', 'Laura','Fernandez','14070', 2);


-- LISTA DE PACIENTES
INSERT INTO `pacientes`(dni, nombre, apellidos, direccion, poblacion, cdpostal, sexo, nacionalidad, movil, tipoSangre,fNacimiento)
VALUES ('99999999P', 'Jorge','Curvo','Calle Gomila','Palma de Mallorca','07003',1,'España','644011720','A+','22-1-1993');
INSERT INTO `pacientes`(dni, nombre, apellidos, direccion, poblacion, cdpostal, sexo, nacionalidad, movil, tipoSangre,fNacimiento)
VALUES ('X7684289N', 'Pedro','Rivera','Plaza España','Palma de Mallorca','07001',1,'España','522941023','0-','02-1-1997');
INSERT INTO `pacientes`(dni, nombre, apellidos, direccion, poblacion, cdpostal, sexo, nacionalidad, movil, tipoSangre,fNacimiento)
VALUES ('99999999P', 'Vanesa','Jimenez','Plaza Columnas','Palma de Mallorca','07004',2,'España','971022913','A-','19-1-1995');


-- LISTA DE VISITAS
INSERT INTO `visita`(diagnosticos, medicamentosAdscritos, medicoVisita) VALUES ('Resfriado común','Paracetamol',1);
INSERT INTO `visita`(diagnosticos, medicamentosAdscritos, medicoVisita) VALUES ('Gripe','Enantium',2);
INSERT INTO `visita`(diagnosticos, medicamentosAdscritos, medicoVisita) VALUES ('Conjuntivits','Valeriana',3);


-- HISTORIAL DE PACIENTE
INSERT INTO `historial`(paciente_id) VALUES (1);
INSERT INTO `historial`(paciente_id) VALUES (2);
INSERT INTO `historial`(paciente_id) VALUES (3);
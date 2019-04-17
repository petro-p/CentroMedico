-- Primero generamos la tabla de médicos, ya que sin ellos no podemos atender visitas.
CREATE TABLE IF NOT EXISTS `medicos` (
    `medico_id` INTEGER UNSIGNED AUTO_INCREMENT,
    `dni` VARCHAR(15) NOT NULL UNIQUE,
    `nombre` varchar(20) NOT NULL,
    `apellidos` varchar(50) NOT NULL,
    `numGremio` varchar(15) NOT NULL,
    `sexo` ENUM('Masculino', 'Femenino') NOT NULL,

    PRIMARY KEY (`medico_id`)
);

-- Se genera después la tabla de pacientes, para que las demás puedan usarla.
CREATE TABLE IF NOT EXISTS `paciente` (
    `paciente_id` INTEGER UNSIGNED AUTO_INCREMENT,
    `dni` VARCHAR(15) NOT NULL UNIQUE,
    `nombre` varchar(20) NOT NULL,
    `apellidos` varchar(50) NOT NULL,
    `direccion` varchar(100) NOT NULL,
    `poblacion` varchar(80) NOT NULL DEFAULT 'Palma de Mallorca',
    `cdpostal` varchar(10) NOT NULL,
    `sexo` ENUM('Masculino', 'Femenino') NOT NULL,
    `nacionalidad` ENUM('') NOT NULL DEFAULT 'España',
    `movil` varchar(50) NOT NULL,
    `tipoSangre` varchar(3) NOT NULL
    `fNacimiento` DATETIME NOT NULL,
    
    PRIMARY KEY (`paciente_id`)
);

-- Se crea la tabla de visitas para poder realizar un resultado posterior del diagnóstico del paciente
CREATE TABLE IF NOT EXISTS `visita` (
    `visita_id` INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `fechaVisita` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    `comentarios` TEXT NULL,
    `diagnostico` TEXT NOT NULL,
    `medicamentosAdscritos` TEXT DEFAULT NULL,
    `medicoVisita` VARCHAR(20) NOT NULL,

    FOREIGN KEY (`medicoVisita`) REFERENCES `medicos`(`medico_id`)
);

-- Y por último creamos la tabla de historial del paciente
CREATE TABLE IF NOT EXISTS `historial` (
    `paciente` INTEGER UNSIGNED AUTO_INCREMENT,
    `paciente_id` INTEGER UNSIGNED AUTO_INCREMENT,
    `numVisitas` INT(1) NOT NULL DEFAULT 0

    FOREIGN KEY (`paciente_id`) REFERENCES `paciente`(`paciente_id`)
);
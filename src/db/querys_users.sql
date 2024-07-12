


-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS usuarios
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

-- Usar la base de datos
use grupo21;

-- Crear la tabla
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    domicilio VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_spanish_ci;



-- Usar la base de datos
USE grupo21;

-- Insertar usuarios
INSERT INTO usuarios (nombre, apellido, domicilio, email, telefono, contrasena)
VALUES
('Juan', 'Gómez', 'Av. Colón 123', 'juangomez@gmail.com', '+54 351 1234567', 'User123!'),
('María', 'López', 'Av. Sagrada Familia 456', 'marialopez@gmail.com', '+54 351 2345678', 'User123!'),
('Carlos', 'Martínez', 'Av. Vélez Sársfield 789', 'carlosmartinez@gmail.com', '+54 351 3456789', 'User123!'),
('Laura', 'Rodríguez', 'Av. Olmos 1011', 'laurarodriguez@gmail.com', '+54 351 4567890', 'User123!'),
('Pedro', 'García', 'Av. Hipólito Yrigoyen 1213', 'pedrogarcia@gmail.com', '+54 351 5678901', 'User123!'),
('Ana', 'Pérez', 'Av. Colón 1415', 'anaperez@gmail.com', '+54 351 6789012', 'User123!'),
('Jorge', 'Fernández', 'Av. Rafael Núñez 1617', 'jorgefernandez@gmail.com', '+54 351 7890123', 'User123!'),
('Silvia', 'Díaz', 'Av. Pueyrredón 1819', 'silviadiaz@gmail.com', '+54 351 8901234', 'User123!'),
('Martín', 'Gutiérrez', 'Av. Castro Barros 2021', 'martingutierrez@gmail.com', '+54 351 9012345', 'User123!'),
('Lucía', 'Romero', 'Av. Santa Fe 2223', 'luciaromero@gmail.com', '+54 351 0123456', 'User123!'),
('Gonzalo', 'Sánchez', 'Av. Maipú 2425', 'gonzalosanchez@gmail.com', '+54 351 1234567', 'User123!'),
('Valentina', 'Alvarez', 'Av. San Jerónimo 2627', 'valentinaalvarez@gmail.com', '+54 351 2345678', 'User123!'),
('Diego', 'Torres', 'Av. Colón 2829', 'diegotorres@gmail.com', '+54 351 3456789', 'User123!'),
('Marcela', 'Acosta', 'Av. Vélez Sársfield 3031', 'marcelaacosta@gmail.com', '+54 351 4567890', 'User123!'),
('Ricardo', 'Molina', 'Av. Olmos 3233', 'ricardomolina@gmail.com', '+54 351 5678901', 'User123!'),
('Florencia', 'Rojas', 'Av. Hipólito Yrigoyen 3435', 'florenciarojas@gmail.com', '+54 351 6789012', 'User123!'),
('Roberto', 'Moreno', 'Av. Colón 3637', 'robertomoreno@gmail.com', '+54 351 7890123', 'User123!'),
('Natalia', 'Gómez', 'Av. Rafael Núñez 3839', 'nataliagomez@gmail.com', '+54 351 8901234', 'User123!'),
('Alejandro', 'López', 'Av. Pueyrredón 4041', 'alejandrolopez@gmail.com', '+54 351 9012345', 'User123!'),
('Carolina', 'Martínez', 'Av. Castro Barros 4243', 'carolinamartinez@gmail.com', '+54 351 0123456', 'User123!'),
('Miguel', 'Rodríguez', 'Av. Santa Fe 4445', 'miguelrodriguez@gmail.com', '+54 351 1234567', 'User123!'),
('Luis', 'García', 'Av. Maipú 4647', 'luisgarcia@gmail.com', '+54 351 2345678', 'User123!'),
('Andrea', 'Pérez', 'Av. San Jerónimo 4849', 'andreapertelefonoez@gmail.com', '+54 351 3456789', 'User123!'),
('Julián', 'Fernández', 'Av. Colón 5051', 'julianfernandez@gmail.com', '+54 351 4567890', 'User123!'),
('Gabriela', 'Díaz', 'Av. Vélez Sársfield 5253', 'gabrieladiaz@gmail.com', '+54 351 5678901', 'User123!'),
('Lucas', 'Gutiérrez', 'Av. Olmos 5455', 'lucasgutierrez@gmail.com', '+54 351 6789012', 'User123!'),
('Camila', 'Romero', 'Av. Hipólito Yrigoyen 5657', 'camilaromero@gmail.com', '+54 351 7890123', 'User123!'),
('Pablo', 'Sánchez', 'Av. Colón 5859', 'pablosanchez@gmail.com', '+54 351 8901234', 'User123!'),
('Romina', 'Alvarez', 'Av. Rafael Núñez 6061', 'rominaalvarez@gmail.com', '+54 351 9012345', 'User123!'),
('Rocio', 'Vargas', 'Tristan Echegaray 2700', 'admin@gmail.com','+54 351 887799', 'Admin123!');
